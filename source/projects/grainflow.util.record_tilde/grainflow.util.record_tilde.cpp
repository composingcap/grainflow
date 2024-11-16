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
	internal_update.delay(33);
}

grainflow_util_record_tilde::~grainflow_util_record_tilde()
{
	std::lock_guard<std::mutex> lock(mutex_);
	delete target_buffer_;

}
#pragma region DSP

void grainflow_util_record_tilde::operator()(audio_bundle input, audio_bundle output)
{
	std::lock_guard<std::mutex> lock(mutex_);
	auto channels = input_chans[0];
	bool sync = sync_signal.has_signal_connection();
	auto frames = input.frame_count();
	auto blocks = frames / INTERNALBLOCK;
	auto input_samples = input.samples();
	auto output_samples = output.samples();
	
	if (!state) {
		for (int b = 0; b < blocks; ++b) {
			for (int i = 0; i < INTERNALBLOCK; ++i) {
				output_samples[0][b * INTERNALBLOCK + i] = static_cast<float>(write_position) / buffer_info.buffer_frames;
			}
		}
		return;
	}

	if (target_buffer_ == nullptr) return;

	auto buffer = target_buffer_;
	buffer_lock<> samples(*buffer);

	if (!samples.valid()) {
		auto bname = buffer->name();
		buffer->set(" ");
		buffer->set(bname);
		return;
	}


	buffer_reader_.update_buffer_info(buffer, config, &buffer_info);


	if (sync) {
		write_position = gf_utils::mod(input_samples[channels][0],1) * buffer_info.buffer_frames;
	}

	if (buffer_info.buffer_frames == 0) return;
	for (int b = 0; b < blocks; ++b) {
		for (int c = 0; c < channels; ++c) {
			buffer_reader_.write_buffer(buffer, c, &(input_samples[c][b * INTERNALBLOCK]), temp_.data(), write_position, overdub, INTERNALBLOCK);
		}

		if (!freeze) {
			for (int i = 0; i < INTERNALBLOCK; ++i) {
				output_samples[0][b * INTERNALBLOCK + i] = static_cast<float>((write_position + i) % buffer_info.buffer_frames) / buffer_info.buffer_frames;
			}
			write_position_norm = static_cast<float>((write_position + INTERNALBLOCK) % buffer_info.buffer_frames) / buffer_info.buffer_frames;
			write_position_ms = (write_position + INTERNALBLOCK) * 1000 / samplerate();
		}
		else {
			for (int i = 0; i < INTERNALBLOCK; ++i) {
				output_samples[0][b * INTERNALBLOCK + i] = write_position_norm;
			}
		}
		write_position = (write_position + INTERNALBLOCK) % buffer_info.buffer_frames;
	}
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
