#pragma once
#include <c74_min.h>
#include <cmath>
#include <vector>
#include "gfAmbi.h"

constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;

class grainflow_ambi_encode_tilde : public object<grainflow_ambi_encode_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{"Encode mono sources to ambisonics format"};
	MIN_TAGS{"ambisonics, spatial, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{"grainflow.ambi.decode~, grainflow.spat.pan~"};

private:
	enum_map norm_range = {"SN3D", "N3D", "FuMa"};
	enum_map order_range = {"ACN", "FuMa"};

	unique_ptr<gf_ambi_encode<INTERNALBLOCK, double>> encoder_;

public:
	int input_chans = 1;
	int output_channels_value = 4; // Default: 1st order = 4 channels

#pragma region MAX_IO
	inlet<> input{this, "(multichannelsignal) sources to encode", "multichannelsignal"};
	inlet<> position_input{this, "(multichannelsignal) xyz positions per source", "multichannelsignal"};

	outlet<> output{this, "(multichannel) ambisonics output", "multichannelsignal"};
#pragma endregion

#pragma region DSP
	grainflow_ambi_encode_tilde();
	~grainflow_ambi_encode_tilde();
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
			return {};
		}
	};

	attribute<int> a_order{
		this,
		"order",
		1,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || encoder_ == nullptr) { return args; }
				auto val = std::clamp(static_cast<int>(args[0]), 1, 7);
				encoder_->set_order(val);
				output_channels_value = (val + 1) * (val + 1);
				return {val};
			}
		},
		getter{
			[this]()-> atoms
			{
				if (dummy() || encoder_ == nullptr) { return {1}; }
				return {encoder_->get_order()};
			}
		},
		description{"Ambisonics order (1-7). Output channels = (order+1)^2"},
		range{1, 7}
	};

	attribute<int> a_norm{
		this,
		"normalisation",
		0, // SN3D default (AmbiX)
		norm_range,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || encoder_ == nullptr) { return args; }
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
				encoder_->set_normalisation(norm);
				return args;
			}
		},
		description{"Normalisation convention: SN3D (AmbiX default), N3D, or FuMa (1st order only)"}
	};

	attribute<int> a_channel_order{
		this,
		"channelOrder",
		0, // ACN default
		order_range,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || encoder_ == nullptr) { return args; }
				int val = args[0];
				HOA_CH_ORDER order = (val == 0) ? HOA_CH_ORDER_ACN : HOA_CH_ORDER_FUMA;
				encoder_->set_channel_order(order);
				return args;
			}
		},
		description{"Channel ordering: ACN (AmbiX default) or FuMa (1st order only)"}
	};

	// Message to set source position
	message<> m_xyz{
		this,
		"xyz",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (args.size() < 3 || encoder_ == nullptr) { return args; }
			// Convert XYZ to azimuth/elevation
			float x = static_cast<float>(args[0]);
			float y = static_cast<float>(args[1]);
			float z = static_cast<float>(args[2]);

			float r = std::sqrt(x * x + y * y + z * z);
			if (r < 1e-6f)
			{
				encoder_->set_source_direction(0.0f, 0.0f);
				return args;
			}

			float azimuth = std::atan2(x, y) * (180.0f / 3.14159265358979f);
			float elevation = std::asin(z / r) * (180.0f / 3.14159265358979f);

			encoder_->set_source_direction(azimuth, elevation);
			return args;
		},
		description{"Set source position as x y z coordinates"}
	};

	message<> m_azel{
		this,
		"azel",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (args.size() < 2 || encoder_ == nullptr) { return args; }
			float azimuth = static_cast<float>(args[0]);
			float elevation = static_cast<float>(args[1]);
			encoder_->set_source_direction(azimuth, elevation);
			return args;
		},
		description{"Set source direction as azimuth elevation (degrees)"}
	};

#pragma endregion
};
