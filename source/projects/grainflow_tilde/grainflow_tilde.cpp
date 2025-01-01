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


void grainflow_tilde::init()
{
	data_outlet = &o_grain_info;
	grainflow_base::init();
}

void grainflow_tilde::operator()(audio_bundle input, audio_bundle output)
{
	//This is a hack to get around some wierd ordering issues when playing the first frame when the number of voices has changed
	max_grains_this_frame = std::min(static_cast<int>(output.channel_count() / 8), grain_collection_->grains());
	io_config_.livemode = live_mode;
	setup_inputs(io_config_, input_chans, input.samples());
	setup_outputs(io_config_, output.samples());

	// Clear unused channels or we will get garbage
	io_config_.block_size = output.frame_count();
	io_config_.samplerate = samplerate_;
	for (int g = 0; g < output.channel_count(); g++)
	{
		memset(output.samples()[g], static_cast<double>(0), sizeof(double) * io_config_.block_size);
	}

	if (!state)
	{
		return;
	}

	grain_collection_->process(io_config_);
	update_grain_data(io_config_, max_grains_this_frame);
}


void grainflow_tilde::setup_outputs(gf_io_config<>& io_config, double** outputs) const
{
	// Outputs are constant because they are based on the max grain count
	io_config.grain_output = &outputs[0 * max_grains_this_frame];
	io_config.grain_state = &outputs[1 * max_grains_this_frame];
	io_config.grain_progress = &outputs[2 * max_grains_this_frame];
	io_config.grain_playhead = &outputs[3 * max_grains_this_frame];
	io_config.grain_amp = &outputs[4 * max_grains_this_frame];
	io_config.grain_envelope = &outputs[5 * max_grains_this_frame];
	io_config.grain_buffer_channel = &outputs[6 * max_grains_this_frame];
	io_config.grain_stream_channel = &outputs[7 * max_grains_this_frame];
}

void grainflow_tilde::setup_inputs(gf_io_config<>& io_config, const int* input_channels, double** inputs)
{
	io_config.grain_clock_chans = input_channels[0];
	io_config.traversal_phasor_chans = input_channels[1];
	io_config.fm_chans = input_channels[2];
	io_config.am_chans = input_channels[3];

	// These variable indicate the starting indices of each mc parameter
	constexpr auto grain_clock_ch = 0;
	auto traversal_phasor_ch = io_config.grain_clock_chans;
	const auto fm_ch = traversal_phasor_ch + io_config.traversal_phasor_chans;
	const auto am_ch = fm_ch + io_config.fm_chans;

	io_config.grain_clock = &inputs[grain_clock_ch];
	io_config.traversal_phasor = &inputs[traversal_phasor_ch];
	io_config.fm = &inputs[fm_ch];
	io_config.am = &inputs[am_ch];
}


void grainflow_tilde::max_class_setup(const atoms& args)
{
	c74::max::t_class* c = args[0];
	c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(simplemc_multichanneloutputs),
	                          "multichanneloutputs", c74::max::A_CANT, 0);
	c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(simplemc_inputchanged), "inputchanged",
	                          c74::max::A_CANT, 0);
}


#pragma region MAX_API_EX
/// <summary>
/// Allows for the use of mc outlets. Must be added as an event at the objects startup
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long grainflow_tilde::simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count)
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
long grainflow_tilde::simplemc_inputchanged(c74::max::t_object* x, long g, long count)
{
	minwrap<grainflow_tilde>* ob = (minwrap<grainflow_tilde>*)(x);
	// auto chan_number = ob->m_min_object.GetMaxGrains(); //We should check for bonus channels and handle it
	ob->m_min_object.input_chans[g] = count > 0 ? count : 1; // Tells us how many channels are in each inlet
	return false;
}
#pragma endregion


MIN_EXTERNAL(grainflow_tilde);
