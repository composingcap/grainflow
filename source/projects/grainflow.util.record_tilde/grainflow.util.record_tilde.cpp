/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
///
///
#include "grainflow.util.record_tilde.h"

using namespace c74::min;
using namespace Grainflow;

grainflow_util_record_tilde::grainflow_util_record_tilde()
{
	target_buffer_ = new buffer_reference(this);
	recorder_ = std::make_unique<gfRecorder<buffer_reference, INTERNALBLOCK>>(max_buffer_reader::get_max_buffer_reader());
	internal_update.delay(33);
}

grainflow_util_record_tilde::~grainflow_util_record_tilde()
{
	recorder_.release();
	delete target_buffer_;
}
#pragma region DSP

void grainflow_util_record_tilde::operator()(audio_bundle input, audio_bundle output)
{
	auto channels = input_chans[0];
	auto frames = input.frame_count();
	
	auto input_samples = input.samples();
	auto output_samples = output.samples()[0];


	if (target_buffer_ == nullptr) return;
	auto buffer = target_buffer_;
	buffer_lock<> samples(*buffer);
	if (!samples.valid()) {
		auto bname = buffer->name();
		buffer->set(" ");
		buffer->set(bname);
		return;
	}

	bool sync = sync_signal.has_signal_connection();
	double time_override = 0;
	if (sync) {
		time_override = input_samples[channels][0];
	}
	recorder_->sync = sync;
	recorder_->freeze = freeze;
	recorder_->overdub = overdub;
	recorder_->samplerate = samplerate();
	recorder_->state = state;

	recorder_->process(input_samples, time_override, buffer, frames, channels, output_samples);
	samples.dirty();

}

#pragma endregion



#pragma region MAX_API_EX

/// <summary>
/// Allows for the use of mc inputs. Must be added as an event at the objects startup. Also requires an input channels register
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long grainflow_util_record_tilde::simplemc_inputchanged(c74::max::t_object* x, long ch, long count)
{
	if (ch != 0) return 1;
	minwrap<grainflow_util_record_tilde>* ob = reinterpret_cast<minwrap<grainflow_util_record_tilde>*>(x);

	if (ch >= ob->m_min_object.input_chans.size()) return 1;
	int chans = count > 0 ? count : 1;
	ob->m_min_object.input_chans[ch] = chans; // Tells us how many channels are in each inlet
	return chans;
}

long grainflow_util_record_tilde::simplemc_output(c74::max::t_object* x, long ch, long count)
{
	return 1;
}
#pragma endregion

MIN_EXTERNAL(grainflow_util_record_tilde);
