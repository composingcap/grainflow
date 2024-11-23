/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
///
///

#include "grainflow.live_tilde.h"

#include <utility>

using namespace c74::min;
using namespace Grainflow;

grainflow_live_tilde::grainflow_live_tilde()
{
	buffer_ = new buffer_reference(this);
	recorder_ = std::make_unique<gfRecorder<buffer_reference, internal_block>>(
		max_buffer_reader::get_max_buffer_reader());
	internal_update.delay(33);
}

grainflow_live_tilde::~grainflow_live_tilde()
{
	destroy_internal_buffer();
	delete buffer_;
	delete traversal_phasor_;
}

void grainflow_live_tilde::init()
{
	data_outlet = &o_grain_info;
	grainflow_base::init();
	if (buffer_arg_value_.type() == message_type::symbol_argument)
	{
		buffer_name.set(atoms(atom{buffer_arg_}));
		buffer_is_internal_ = false;
	}
	else
	{
		generate_internal_buffer(static_cast<int>(buffer_arg_value_), 1);
		buffer_is_internal_ = true;
	}
}

void grainflow_live_tilde::setup_dsp()
{
	grainflow_base::setup_dsp();
	auto _temp_is_internal = buffer_is_internal_;
	buffer_name.set(buffer_name);
	buffer_is_internal_ = _temp_is_internal;
}

void grainflow_live_tilde::max_class_setup(const atoms& args)
{
	c74::max::t_class* c = args[0];
	c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(simplemc_multichanneloutputs),
	                          "multichanneloutputs", c74::max::A_CANT, 0);
	c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(simplemc_inputchanged), "inputchanged",
	                          c74::max::A_CANT, 0);
}

auto grainflow_live_tilde::generate_internal_buffer(const int length_ms, const int channels) -> void
{
	//std::lock_guard<std::mutex> lock(mutex_);
	destroy_internal_buffer();
	using namespace c74::max;
	const auto name = symbol_unique();

	t_atom args[3];
	atom_setsym(&args[0], name);
	atom_setlong(&args[1], length_ms);
	atom_setlong(&args[2], channels);
	buffer_object_handle_ = static_cast<t_object*>(c74::max::object_new_typed(CLASS_BOX, gensym("buffer~"), 3, args));
	buffer_name = name;
}

void grainflow_live_tilde::destroy_internal_buffer()
{
	if (buffer_object_handle_ != nullptr)
	{
		c74::max::object_free(buffer_object_handle_);
		buffer_object_handle_ = nullptr;
	}
}

void grainflow_live_tilde::resize_buffer(const int length_ms, const int channels)
{
	using namespace c74::max;

	if (buffer_object_handle_ == nullptr)
	{
		generate_internal_buffer(length_ms, channels);
		return;
	}
	t_atom args[2];
	atom_setlong(&args[0], static_cast<t_atom_long>(length_ms));
	atom_setlong(&args[1], static_cast<t_atom_long>(channels));
	object_method_typed(buffer_object_handle_, gensym("size"), 2, args, nullptr);
}


bool grainflow_live_tilde::check_and_update_buffer(const int channels)
{
	if (buffer_ == nullptr) return false;
	auto buffer = buffer_;
	buffer_lock<> samples(*buffer);
	if (!samples.valid())
	{
		auto bname = buffer->name();
		buffer->set(" ");
		buffer->set(bname);
		return false;
	}
	if (buffer_is_internal_)
	{
		if (samples.channel_count() != channels)
		{
			if (channels <= 0) return false;
			resize_buffer(samples.length_in_seconds() * 1000, channels);
			buf_chans = channels;
			return false;
		}
	}
	samples.dirty();
	return true;
}
#pragma region DSP

void grainflow_live_tilde::operator()(audio_bundle input, audio_bundle output)
{
	audio_thread_busy_ = true;
	const auto channels = input_chans[0];
	const auto frames = input.frame_count();
	const auto input_samples = input.samples();

	if (input.frame_count() != block_size_)
	{
		delete traversal_phasor_;
		block_size_ = input.frame_count();
		traversal_phasor_ = new double[block_size_];
	}
	if (!check_and_update_buffer(channels))return;

	recorder_->freeze = freeze;
	recorder_->overdub = overdub;
	recorder_->samplerate = samplerate_;
	recorder_->state = state && record;
	recorder_->process(input_samples, 0, buffer_, frames, channels, traversal_phasor_);

	max_grains_this_frame = std::min(static_cast<int>(output.channel_count() / 8), grain_collection_->grains());
	if (recorder_->state) has_record_update_ = true;
	const auto current_grains = clamp(static_cast<int>(n_grains), 0, max_grains_this_frame);
	io_config_.livemode = true;
	setup_inputs(io_config_, input_chans, input.samples(), &traversal_phasor_);
	setup_outputs(io_config_, output.samples());


	// Clear unused channels or we will get garbage
	io_config_.block_size = output.frame_count();
	io_config_.samplerate = samplerate_;
	for (int g = 0; g < output.channel_count(); g++)
	{
		memset(output.samples()[g], static_cast<double>(0), sizeof(double) * io_config_.block_size);
	}
	if (!play) return;
	if (!state)return;

	grain_collection_->process(io_config_);
	update_grain_data(io_config_, max_grains_this_frame);
	audio_thread_busy_ = false;
}

#pragma endregion


void grainflow_live_tilde::setup_outputs(gf_io_config& io_config, double** outputs) const
{
	// Outputs are constant because they are based on the max grain count
	io_config.grain_output = &outputs[0 * max_grains_this_frame];
	io_config.grain_state = &outputs[1 * max_grains_this_frame];
	io_config.grain_progress = &outputs[2 * max_grains_this_frame];
	io_config.grain_playhead = &outputs[3 * max_grains_this_frame];
	io_config.grain_amp = &outputs[4 * max_grains_this_frame];
	io_config.grain_envelope = &outputs[5 * max_grains_this_frame];
	io_config.grain_stream_channel = &outputs[6 * max_grains_this_frame];
	io_config.grain_buffer_channel = &outputs[7 * max_grains_this_frame];
}

void grainflow_live_tilde::setup_inputs(gf_io_config& io_config, const int* input_channels, double** inputs,
                                        double** __restrict traversal_phasor)
{
	const int input_audio_chans = input_channels[0];
	io_config.grain_clock_chans = input_channels[1];
	io_config.traversal_phasor_chans = 1;
	io_config.fm_chans = input_channels[2];
	io_config.am_chans = input_channels[3];

	// These variable indicate the starting indices of each mc parameter
	const auto grain_clock_ch = input_audio_chans;
	const auto fm_ch = grain_clock_ch + io_config.traversal_phasor_chans;
	const auto am_ch = fm_ch + io_config.fm_chans;

	io_config.grain_clock = &inputs[grain_clock_ch];
	io_config.traversal_phasor = traversal_phasor;
	io_config.fm = &inputs[fm_ch];
	io_config.am = &inputs[am_ch];
}


void grainflow_live_tilde::event_update()
{
	if (audio_thread_busy_) return;
	if (has_record_update_)
	{
		if (state)
		{
			output_grain_info("buf", buffer_name, data_outlet);
			double pos_norm;
			double pos_samps;
			double pos_ms;
			recorder_->get_position(pos_samps, pos_norm, pos_ms);
			output_grain_info("recordHead", atoms(atom{pos_norm}), data_outlet);
			output_grain_info("recordHeadMs", atoms(atom{pos_ms}), data_outlet);
		}
		has_record_update_ = false;
	}
	grainflow_base::event_update();
}


#pragma region MAX_API_EX
/// <summary>
/// Allows for the use of mc outlets. Must be added as an event at the objects startup
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long grainflow_live_tilde::simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count)
{
	minwrap<grainflow_live_tilde>* ob = (minwrap<grainflow_live_tilde>*)(x);
	return ob->m_min_object.get_max_grains();
}

/// <summary>
/// Allows for the use of mc inputs. Must be added as an event at the objects startup. Also requires an input channels regester
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long grainflow_live_tilde::simplemc_inputchanged(c74::max::t_object* x, long g, long count)
{
	minwrap<grainflow_live_tilde>* ob = (minwrap<grainflow_live_tilde>*)(x);
	ob->m_min_object.input_chans[g] = count > 0 ? count : 1; // Tells us how many channels are in each inlet
	return false;
}
#pragma endregion


MIN_EXTERNAL(grainflow_live_tilde);
