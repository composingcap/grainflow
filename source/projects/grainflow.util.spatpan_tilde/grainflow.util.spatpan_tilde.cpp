/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
///
///
#include "grainflow.util.spatpan_tilde.h"

using namespace c74::min;
using namespace Grainflow;

grainflow_util_spatpan_tilde::grainflow_util_spatpan_tilde()
{
	panner_ = std::make_unique<gf_spat_pan<INTERNALBLOCK, double>>();
}

grainflow_util_spatpan_tilde::~grainflow_util_spatpan_tilde()
{
	panner_.release();
}

#pragma region DSP

void grainflow_util_spatpan_tilde::operator()(audio_bundle input, audio_bundle output)
{
	output.clear();
	panner_->process(input.samples(), output.samples(), input.channel_count(), output.channel_count(),
	                 input.frame_count());
}

#pragma endregion


void grainflow_util_spatpan_tilde::config_from_dictionary(atoms args, int inlet)
{
}


#pragma region MAX_API_EX

/// <summary>
/// Allows for the use of mc inputs. Must be added as an event at the objects startup. Also requires an input channels register
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long grainflow_util_spatpan_tilde::simplemc_inputchanged(c74::max::t_object* x, long ch, long count)
{
	if (ch != 0) return 1;
	minwrap<grainflow_util_spatpan_tilde>* ob = reinterpret_cast<minwrap<grainflow_util_spatpan_tilde>*>(x);

	int chans = count > 0 ? count : 1;
	ob->m_min_object.input_chans = chans; // Tells us how many channels are in each inlet
	return chans;
}

long grainflow_util_spatpan_tilde::simplemc_output(c74::max::t_object* x, long ch, long count)
{
	minwrap<grainflow_util_spatpan_tilde>* ob = reinterpret_cast<minwrap<grainflow_util_spatpan_tilde>*>(x);
	return ob->m_min_object.output_channels_value;
}
#pragma endregion

MIN_EXTERNAL(grainflow_util_spatpan_tilde);
