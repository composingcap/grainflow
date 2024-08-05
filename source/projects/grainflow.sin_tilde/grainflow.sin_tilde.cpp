/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
///
///
#include "grainflow.sin_tilde.h"

using namespace c74::min;
using namespace Grainflow;

grainflow_sin_tilde::grainflow_sin_tilde() {
	
}

grainflow_sin_tilde::~grainflow_sin_tilde()
{

}
#pragma region DSP

void grainflow_sin_tilde::operator()(audio_bundle input, audio_bundle output)
{
	for (int ch = 0; ch < input.channel_count();  ch++) {
		phasorFrequencies[ch] = input.samples()[ch][0];
	}
	//GfSyn::SineTable<INTERNALBLOCK>(phasorFrequencies.data(), output.samples(), output.frame_count(), output.channel_count(), oneOverSamplerate, positions.data(), extra.data(), lastPhasorValue.data());
	GfSyn::ChevySine<INTERNALBLOCK>((double*)phasorFrequencies.data(), output.samples(), output.frame_count(), output.channel_count(), oneOverSamplerate, positions.data(), (double*)lastPhasorValue.data());
}

#pragma endregion

void grainflow_sin_tilde::Resize()
{
	lastPhasorValue.clear();
	lastPhasorValue.resize(input_chans);
	phasorFrequencies.resize(input_chans);
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
	minwrap<grainflow_sin_tilde>* ob = (minwrap<grainflow_sin_tilde> *)(x);
	return ob->m_min_object.input_chans;
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
	minwrap<grainflow_sin_tilde>* ob = (minwrap<grainflow_sin_tilde> *)(x);
	int chans = count > 0 ? count : 1;
	ob->m_min_object.input_chans = chans; // Tells us how many channels are in each inlet
	ob->m_min_object.Resize();
	return chans;
}
#pragma endregion

MIN_EXTERNAL(grainflow_sin_tilde);