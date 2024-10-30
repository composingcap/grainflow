/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
///
///
#include "grainflow.util.stereopan_tilde.h"

using namespace c74::min;
using namespace Grainflow;

grainflow_util_stereopan_tilde::grainflow_util_stereopan_tilde()
{
	panner_ = std::make_unique<gf_panner<INTERNALBLOCK>>(input_chans, 2);
	internal_update.delay(33);
}

grainflow_util_stereopan_tilde::~grainflow_util_stereopan_tilde()
{
	panner_.release();
}
#pragma region DSP

void grainflow_util_stereopan_tilde::operator()(audio_bundle input, audio_bundle output)
{
	if (input.channel_count() < input_chans * 2) return;
	output.clear();
	panner_->process(input.samples(), &input.samples()[input_chans], output.samples(), input.frame_count());
}

#pragma endregion


void grainflow_util_stereopan_tilde::setup_panner(const int inputs) const
{
	panner_->set_channels(inputs, 2);
}

#pragma region MAX_API_EX

/// <summary>
/// Allows for the use of mc inputs. Must be added as an event at the objects startup. Also requires an input channels regester
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long grainflow_util_stereopan_tilde::simplemc_inputchanged(c74::max::t_object* x, long ch, long count)
{
	if (ch != 0) return 1;
	minwrap<grainflow_util_stereopan_tilde>* ob = reinterpret_cast<minwrap<grainflow_util_stereopan_tilde>*>(x);

	int chans = count > 0 ? count : 1;
	ob->m_min_object.input_chans = chans; // Tells us how many channels are in each inlet
	ob->m_min_object.setup_panner(chans);
	return chans;
}

long grainflow_util_stereopan_tilde::simplemc_output(c74::max::t_object* x, long ch, long count)
{
	return 2;
}
#pragma endregion

MIN_EXTERNAL(grainflow_util_stereopan_tilde);
