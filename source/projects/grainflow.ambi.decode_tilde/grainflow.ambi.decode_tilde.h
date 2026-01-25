#pragma once
#include <c74_min.h>
#include <cmath>
#include <vector>
#include "gfAmbi.h"

constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;

class grainflow_ambi_decode_tilde : public object<grainflow_ambi_decode_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{"Decode ambisonics to loudspeaker feeds"};
	MIN_TAGS{"ambisonics, spatial, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{"grainflow.ambi.encode~, grainflow.spat.pan~"};

private:
	enum_map norm_range = {"SN3D", "N3D", "FuMa"};
	enum_map order_range = {"ACN", "FuMa"};
	enum_map decoder_range = {"AllRAD", "SAD", "MMD", "EPAD"};

	unique_ptr<gf_ambi_decode<INTERNALBLOCK, double>> decoder_;

public:
	int input_chans = 4; // Default: 1st order
	int output_channels_value = 2; // Default: stereo
	bool pending_binaural = false;

#pragma region MAX_IO
	inlet<> input{this, "(multichannelsignal) ambisonics input", "multichannelsignal"};

	outlet<> output{this, "(multichannel) speaker feeds or binaural output", "multichannelsignal"};
#pragma endregion

#pragma region DSP
	grainflow_ambi_decode_tilde();
	~grainflow_ambi_decode_tilde();
	void operator()(audio_bundle input, audio_bundle output);
	static long simplemc_inputchanged(c74::max::t_object* x, long ch, long count);
	static long simplemc_output(c74::max::t_object* x, long ch, long count);
#pragma endregion

	message<> setup{
		this,
		"setup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			return {};
		}
	};

	message<> maxclass_setup{
		this,
		"maxclass_setup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			c74::max::t_class* c = args[0];
			c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(simplemc_inputchanged), "inputchanged",
			                          c74::max::A_CANT, 0);
			c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(simplemc_output),
			                          "multichanneloutputs",
			                          c74::max::A_CANT, 0);
			return {};
		}
	};

	message<> dspsetup{
		this,
		"dspsetup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (decoder_ == nullptr) return {};

			// Auto-detect order from input channel count
			// Ambisonics channels = (order+1)^2, so order = sqrt(channels) - 1
			int sqrt_chans = static_cast<int>(std::sqrt(static_cast<float>(input_chans)));
			if (sqrt_chans * sqrt_chans == input_chans && sqrt_chans >= 2 && sqrt_chans <= 8)
			{
				int order = sqrt_chans - 1;
				decoder_->set_order(order);
			}

			// Apply pending binaural setting
			decoder_->set_binaural(pending_binaural);
			return {};
		}
	};

	attribute<bool> a_binaural{
		this,
		"binaural",
		false,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy()) { return args; }
				pending_binaural = static_cast<bool>(args[0]);
				if (pending_binaural)
				{
					output_channels_value = 2;
				}
				return args;
			}
		},
		getter{
			[this]()-> atoms
			{
				return {pending_binaural};
			}
		},
		description{"Enable binaural decoding mode (outputs 2 channels for headphones). Changes take effect on DSP start."}
	};

	attribute<int> a_norm{
		this,
		"normalisation",
		0, // SN3D default (AmbiX)
		norm_range,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || decoder_ == nullptr) { return args; }
				int val = args[0];
				HOA_NORM norm;
				switch (val)
				{
				case 0: norm = HOA_NORM_SN3D;
					break;
				case 1: norm = HOA_NORM_N3D;
					break;
				case 2: norm = HOA_NORM_FUMA;
					break;
				default: norm = HOA_NORM_SN3D;
				}
				decoder_->set_normalisation(norm);
				return args;
			}
		},
		description{"Input normalisation convention: SN3D (AmbiX default), N3D, or FuMa"}
	};

	attribute<int> a_channel_order{
		this,
		"channelOrder",
		0, // ACN default
		order_range,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || decoder_ == nullptr) { return args; }
				int val = args[0];
				HOA_CH_ORDER order = (val == 0) ? HOA_CH_ORDER_ACN : HOA_CH_ORDER_FUMA;
				decoder_->set_channel_order(order);
				return args;
			}
		},
		description{"Input channel ordering: ACN (AmbiX default) or FuMa"}
	};

	attribute<int> a_decoder_method{
		this,
		"method",
		0, // AllRAD default
		decoder_range,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || decoder_ == nullptr) { return args; }
				int val = args[0];
				LOUDSPEAKER_AMBI_DECODER_METHODS method;
				switch (val)
				{
				case 0: method = LOUDSPEAKER_DECODER_ALLRAD;
					break;
				case 1: method = LOUDSPEAKER_DECODER_SAD;
					break;
				case 2: method = LOUDSPEAKER_DECODER_MMD;
					break;
				case 3: method = LOUDSPEAKER_DECODER_EPAD;
					break;
				default: method = LOUDSPEAKER_DECODER_ALLRAD;
				}
				decoder_->set_decoder_method(method);
				return args;
			}
		},
		description{"Decoder method: AllRAD (recommended), SAD, MMD, or EPAD"}
	};

	attribute<bool> a_maxre{
		this,
		"maxRE",
		true,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || decoder_ == nullptr) { return args; }
				decoder_->set_max_re(static_cast<bool>(args[0]));
				return args;
			}
		},
		getter{
			[this]()-> atoms
			{
				if (dummy() || decoder_ == nullptr) { return {true}; }
				return {decoder_->get_max_re()};
			}
		},
		description{"Enable max rE weighting to reduce side lobes"}
	};

	attribute<vector<number>> a_speakers{
		this,
		"speakers",
		{-30, 0, 30, 0}, // Default: stereo at +/- 30 degrees
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || decoder_ == nullptr) { return args; }
				if (args.size() < 2)
				{
					return args;
				}

				// Format: az1, el1, az2, el2, ...
				int n_speakers = args.size() / 2;
				std::vector<float> dirs(args.size());
				for (size_t i = 0; i < args.size(); ++i)
				{
					dirs[i] = static_cast<float>(args[i]);
				}

				decoder_->set_speaker_layout(dirs.data(), n_speakers);
				output_channels_value = n_speakers;
				return args;
			}
		},
		description{"Speaker layout as az1 el1 az2 el2 ... (degrees). Azimuth: 0=front, positive=left"}
	};

	// Message to set speakers from xyz coordinates
	message<> m_speakers_xyz{
		this,
		"speakers_xyz",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (decoder_ == nullptr || args.size() < 3) { return args; }

			int n_speakers = args.size() / 3;
			std::vector<float> azimuths(n_speakers);
			std::vector<float> elevations(n_speakers);

			for (int i = 0; i < n_speakers; ++i)
			{
				float x = static_cast<float>(args[i * 3]);
				float y = static_cast<float>(args[i * 3 + 1]);
				float z = static_cast<float>(args[i * 3 + 2]);

				float r = std::sqrt(x * x + y * y + z * z);
				if (r < 1e-6f)
				{
					azimuths[i] = 0.0f;
					elevations[i] = 0.0f;
				}
				else
				{
					azimuths[i] = std::atan2(x, y) * (180.0f / 3.14159265358979f);
					elevations[i] = std::asin(z / r) * (180.0f / 3.14159265358979f);
				}
			}

			decoder_->set_speaker_layout(azimuths, elevations);
			output_channels_value = n_speakers;
			return args;
		},
		description{"Set speaker positions as x1 y1 z1 x2 y2 z2 ... coordinates"}
	};

	// Message to trigger decoder rebuild
	message<> m_rebuild{
		this,
		"rebuild",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (decoder_ != nullptr)
			{
				decoder_->rebuild();
			}
			return {};
		},
		description{"Force decoder matrix rebuild"}
	};

#pragma endregion
};
