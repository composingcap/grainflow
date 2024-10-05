/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
///
///

#include "grainflow_tilde.h"

#include <utility>

using namespace c74::min;
using namespace Grainflow;


int grainflow_tilde::get_max_grains() const { return grain_collection_ != nullptr ? grain_collection_->Grains() : 0; }

grainflow_tilde::grainflow_tilde(): max_grains_(0), io_config_(), has_update_(false)
{
	internal_update.delay(33);
}

grainflow_tilde::~grainflow_tilde()
{
	grain_collection_.release();
}
#pragma region DSP

void grainflow_tilde::operator()(audio_bundle input, audio_bundle output)
{
	if (const auto lock_available = lock.try_lock(); !lock_available) return;
	//This is a hack to get around some wierd ordering issues when playing the first frame when the number of voices has changed
	max_grains_this_frame = std::min(static_cast<int>(output.channel_count() / 8), grain_collection_->Grains());
	const auto current_grains = clamp(static_cast<int>(n_grains), 0, max_grains_this_frame);
	io_config_.livemode = live_mode;
	setup_inputs(io_config_, input_chans, input.samples());
	setup_outputs(io_config_, output.samples());


	// Clear unused channels or we will get garbage
	io_config_.blockSize = output.frame_count();
	io_config_.samplerate = samplerate_;
	for (int g = 0; g < output.channel_count(); g++)
	{
		memset(output.samples()[g], static_cast<double>(0), sizeof(double) * io_config_.blockSize);
	}


	if (!state)
	{
		lock.unlock();
		return;
	}

	grain_collection_->Process(io_config_);

	if (!has_update_)
	{
		for (int g = 0; g < current_grains; g++)
		{
			m_grain_state_[g] = io_config_.grainState[g][0];
			m_grain_progress_[g] = io_config_.grainProgress[g][0];
			m_grain_playhead_[g] = io_config_.grainPlayhead[g][0];
			m_grain_amp_[g] = io_config_.grainAmp[g][0];
			m_grain_envelope_[g] = io_config_.grainEnvelope[g][0];
			m_grain_stream_channel_[g] = io_config_.grainStreamChannel[g][0];
			m_grain_buffer_channel_[g] = io_config_.grainBufferChannel[g][0];
		}
		has_update_ = true;
	}

	lock.unlock();
}

#pragma endregion

atoms grainflow_tilde::get_grain_params(GfParamName param, GfParamType type) const
{
	if (grain_collection_ == nullptr) return {};
	atoms values = {};
	values.resize(grain_collection_->Grains());
	for (int i = 0; i < grain_collection_->Grains(); i++)
	{
		values[i] = grain_collection_->ParamGet(i + 1, param, type);
	}
	return values;
}

atoms grainflow_tilde::set_grain_params(atoms args, GfParamName param, GfParamType type) const
{
	if (grain_collection_ == nullptr) return args;
	if (args.size() <= 1)
	{
		grain_collection_->ParamSet(target_, param, type, (float)args[0]);
		return args;
	}

	for (int g = 0; g < grain_collection_->Grains(); g++)
	{
		grain_collection_->ParamSet(g + 1, param, type, (float)args[g % args.size()]);
	}

	return args;
}


void grainflow_tilde::try_set_attribute_or_message(const string& name, const atoms& args)
{
	if (auto get = this->attributes().find(name); get != this->attributes().end())
	{
		get->second->set(args);
		return;
	}
	this->try_call(name, args);
	return;
}

void grainflow_tilde::output_grain_info(string name, const atoms& data)
{
	auto mess = atoms({std::move(name)});
	for (int g = 0; g < std::min(static_cast<int>(data.size()), static_cast<int>(n_grains)); g++)
	{
		mess.push_back(data[g]);
	}
	o_grain_info.send(mess);
}

void grainflow_tilde::setup_outputs(gfIoConfig& io_config, double** outputs) const
{
	// Outputs are constant because they are based on the max grain count
	io_config.grainOutput = &outputs[0 * max_grains_this_frame];
	io_config.grainState = &outputs[1 * max_grains_this_frame];
	io_config.grainProgress = &outputs[2 * max_grains_this_frame];
	io_config.grainPlayhead = &outputs[3 * max_grains_this_frame];
	io_config.grainAmp = &outputs[4 * max_grains_this_frame];
	io_config.grainEnvelope = &outputs[5 * max_grains_this_frame];
	io_config.grainStreamChannel = &outputs[6 * max_grains_this_frame];
	io_config.grainBufferChannel = &outputs[7 * max_grains_this_frame];
}

void grainflow_tilde::setup_inputs(gfIoConfig& io_config, const int* input_channels, double** inputs)
{
	io_config.grainClockChans = input_channels[0];
	io_config.traversalPhasorChans = input_channels[1];
	io_config.fmChans = input_channels[2];
	io_config.amChans = input_channels[3];

	// These variable indicate the starting indices of each mc parameter
	constexpr auto grain_clock_ch = 0;
	auto traversal_phasor_ch = io_config.grainClockChans;
	const auto fm_ch = traversal_phasor_ch + io_config.traversalPhasorChans;
	const auto am_ch = fm_ch + io_config.fmChans;

	io_config.grainClock = &inputs[grain_clock_ch];
	io_config.traversalPhasor = &inputs[traversal_phasor_ch];
	io_config.fm = &inputs[fm_ch];
	io_config.am = &inputs[am_ch];
}

void grainflow_tilde::grain_info_reset()
{
	output_grain_info("grainState", {0});
	output_grain_info("grainPosition", {0});
	output_grain_info("grainWindow", {0});
	output_grain_info("grainAmp", {0});
	output_grain_info("grainProgress", {0});
	output_grain_info("grainBufferChannel", {0});
	output_grain_info("grainStreamChannel", {0});
}


/// <summary>
/// Helper to make targeting grains easier
/// </summary>
/// <param name="value"></param>
/// <param name="param"></param>
/// <param name="type"></param>
void grainflow_tilde::grain_message(const float value, const GfParamName param, const GfParamType type)
{
	if (stream_target_ > 0)
	{
		grain_collection_->StreamParamSet(stream_target_, param, type, value);
	}

	if (channel_target_ > 0)
	{
		grain_collection_->ChannelParamSet(channel_target_, param, type, value);
	}

	grain_collection_->ParamSet(target_, param, type, value);
}

void grainflow_tilde::buffer_ref_message(const string& buffer_name, const GFBuffers type)
{
	if (buffer_name.empty())
		return;

	if (target_ > 0)
	{
		auto buf = grain_collection_->GetGrain(target_ - 1)->GetBuffer(type);
		buf->set(""); // This forces a refresh even if the name is the same
		buf->set(buffer_name);
		return;
	}
	for (int g = 0; g < grain_collection_->Grains(); g++)
	{
		auto buf = grain_collection_->GetGrain(g)->GetBuffer(type);
		// To access ir must be converted to the correct type
		buf->set("");
		buf->set(buffer_name);
	}
}

void grainflow_tilde::use_default_envelope(const bool state, const int target)
{
	if (target > 0)
	{
		grain_collection_->GetGrain(target - 1)->useDefaultEnvelope = state;
		return;
	}
	for (int g = 0; g < grain_collection_->Grains(); g++)
	{
		grain_collection_->GetGrain(g)->useDefaultEnvelope = state;
		// To access ir must be converted to the correct type
	}
}

/// <summary>
/// Forces a refresh of a type of buffer.
/// </summary>
void grainflow_tilde::buffer_refresh(const GFBuffers type)
{
	if (grain_collection_ == nullptr) return;
	for (int g = 0; g < grain_collection_->Grains(); g++)
	{
		const auto buf = grain_collection_->GetGrain(g)->GetBuffer(type);
		// To access ir must be converted to the correct type
		const auto name = buf->name();
		buf->set("");
		buf->set(name);
	}
};

void grainflow_tilde::init()
{
	for (int g = 0; g < grain_collection_->Grains(); g++)
	{
		grain_collection_->GetGrain(g)->SetIndex(g);
		grain_collection_->GetGrain(g)->SetBuffer(GFBuffers::buffer, (new buffer_reference(this, nullptr, false)));
		grain_collection_->GetGrain(g)->SetBuffer(GFBuffers::envelope, (new buffer_reference(this, nullptr, false)));
		grain_collection_->GetGrain(g)->SetBuffer(GFBuffers::delayBuffer, (new buffer_reference(this, nullptr, false)));
		grain_collection_->GetGrain(g)->
		                   SetBuffer(GFBuffers::windowBuffer, (new buffer_reference(this, nullptr, false)));
		grain_collection_->GetGrain(g)->SetBuffer(GFBuffers::rateBuffer, (new buffer_reference(this, nullptr, false)));
		grain_collection_->GetGrain(g)->SetBuffer(GFBuffers::glissonBuffer,
		                                          (new buffer_reference(this, nullptr, false)));

		auto env = grain_collection_->GetGrain(g)->GetBuffer(GFBuffers::envelope);
		env->set(env_arg_);
		auto buf = grain_collection_->GetGrain(g)->GetBuffer(GFBuffers::buffer);
		buf->set(buffer_arg_);
	}
	grain_collection_->samplerate = samplerate_;
}


void grainflow_tilde::reinit(int grains)
{
	lock.lock();
	grain_collection_.release();
	grain_collection_ = std::make_unique<GfGrainCollection<buffer_reference, internal_block>>(buffer_reader_, grains);
	auto maxGrains = grains;
	if (n_grains > maxGrains) n_grains = maxGrains;
	if (auto_overlap) this->try_set_attribute_or_message("windowOffset", atoms{1.0f / n_grains});
	m_grain_state_.resize(maxGrains);
	m_grain_progress_.resize(maxGrains);
	m_grain_playhead_.resize(maxGrains);
	m_grain_amp_.resize(maxGrains);
	m_grain_envelope_.resize(maxGrains);
	m_grain_stream_channel_.resize(maxGrains);
	m_grain_buffer_channel_.resize(maxGrains);
	init();
	lock.unlock();
}

void grainflow_tilde::refresh_all_attributes()
{
	auto a = this->attributes();
	for (auto i = a.begin(); i != a.end(); ++i)
	{
		i->second->touch();
	}
}

void grainflow_tilde::refresh_named_attributes(const std::string& name)
{
	auto attr_map = this->attributes();
	if (const auto attr = attr_map.find(name); attr != attr_map.end())
	{
		attr->second->touch();
	}
}

void grainflow_tilde::output_all_grain_info()
{
	if (has_update_)
	{
		has_update_ = false;
		if (state)
		{
			output_grain_info("grainState", m_grain_state_);
			output_grain_info("grainPosition", m_grain_playhead_);
			output_grain_info("grainWindow", m_grain_envelope_);
			output_grain_info("grainAmp", m_grain_amp_);
			output_grain_info("grainProgress", m_grain_progress_);
			output_grain_info("grainBufferChannel", m_grain_buffer_channel_);
			output_grain_info("grainStreamChannel", m_grain_stream_channel_);
		}
	}
}

void grainflow_tilde::refresh_linked_attribute()
{
	//This is needed to reflect internal changes-running touch in the setter causes a crash unfortunately
	if (!linked_params_dirty_)return;
	transpose.touch();
	transposeRandom.touch();
	transpose_offset.touch();

	rate.touch();
	rateRandom.touch();
	rateOffset.touch();

	glisson.touch();
	glisson_random.touch();
	glisson_offset.touch();

	glisson_st.touch();
	glisson_st_random.touch();
	glisson_st_offset.touch();

	delay.touch();
	delay_random.touch();
	delay_offset.touch();

	linked_params_dirty_ = false;
}

#pragma region MAX_API_EX
/// <summary>
/// Allows for the use of mc outlets. Must be added as an event at the objects startup
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count)
{
	minwrap<grainflow_tilde>* ob = (minwrap<grainflow_tilde>*)(x);
	return ob->m_min_object.get_max_grains();
}

/// <summary>
/// Allows for the use of mc inputs. Must be added as an event at the objects startup. Also requires an input channels regester
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long simplemc_inputchanged(c74::max::t_object* x, long g, long count)
{
	minwrap<grainflow_tilde>* ob = (minwrap<grainflow_tilde>*)(x);
	// auto chan_number = ob->m_min_object.GetMaxGrains(); //We should check for bonus channels and handle it
	ob->m_min_object.input_chans[g] = count > 0 ? count : 1; // Tells us how many channels are in each inlet
	return false;
}
#pragma endregion


MIN_EXTERNAL(grainflow_tilde);
