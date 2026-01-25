/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "grainflow.ambi.decode_tilde.h"

using namespace c74::min;
using namespace Grainflow;

grainflow_ambi_decode_tilde::grainflow_ambi_decode_tilde()
{
	decoder_ = std::make_unique<gf_ambi_decode<INTERNALBLOCK, double>>();
	decoder_->set_order(1);

	// Default stereo setup: +/- 30 degrees
	std::vector<float> azimuths = {-30.0f, 30.0f};
	std::vector<float> elevations = {0.0f, 0.0f};
	decoder_->set_speaker_layout(azimuths, elevations);

	input_chans = 4;
	output_channels_value = 2;
}

grainflow_ambi_decode_tilde::~grainflow_ambi_decode_tilde()
{
	decoder_.reset();
}

void grainflow_ambi_decode_tilde::operator()(audio_bundle input, audio_bundle output)
{
	output.clear();

	if (decoder_ == nullptr) return;

	const int block_size = input.frame_count();
	const int n_ambi_channels = decoder_->get_num_ambi_channels();
	const int n_speakers = decoder_->get_num_speakers();

	// Check we have enough input and output channels
	if (n_speakers == 0 ||
	    input.channel_count() < n_ambi_channels ||
	    output.channel_count() < n_speakers)
	{
		return;
	}

	decoder_->decode(input.samples(), output.samples(), block_size);
}

long grainflow_ambi_decode_tilde::simplemc_inputchanged(c74::max::t_object* x, long ch, long count)
{
	minwrap<grainflow_ambi_decode_tilde>* ob = reinterpret_cast<minwrap<grainflow_ambi_decode_tilde>*>(x);

	int chans = count > 0 ? count : 1;
	ob->m_min_object.input_chans = chans;
	return chans;
}

long grainflow_ambi_decode_tilde::simplemc_output(c74::max::t_object* x, long ch, long count)
{
	minwrap<grainflow_ambi_decode_tilde>* ob = reinterpret_cast<minwrap<grainflow_ambi_decode_tilde>*>(x);
	return ob->m_min_object.output_channels_value;
}

MIN_EXTERNAL(grainflow_ambi_decode_tilde);
