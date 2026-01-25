/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include <c74_min.h>
#include <cmath>
#include <vector>
#include "gfAmbi.h"
#include "saf_hoa.h"

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
	int output_channels_value = 4;
	int pending_order = 3;

	inlet<> input{this, "(multichannelsignal) sources to encode", "multichannelsignal"};
	outlet<> output{this, "(multichannel) ambisonics output", "multichannelsignal"};

	grainflow_ambi_encode_tilde()
	{
		encoder_ = std::make_unique<gf_ambi_encode<INTERNALBLOCK, double>>();
	}

	~grainflow_ambi_encode_tilde()
	{
		encoder_.reset();
	}

	void operator()(audio_bundle input, audio_bundle output)
	{
		output.clear();
		if (encoder_ == nullptr) return;

		const int block_size = input.frame_count();
		const int n_sources = input_chans;

		if (n_sources == 1)
		{
			float az, el;
			encoder_->get_source_direction(0, az, el);
			encoder_->encode(input.samples()[0], output.samples(), block_size, az, el);
		}
		else
		{
			std::vector<float> azimuths(n_sources);
			std::vector<float> elevations(n_sources);
			for (int i = 0; i < n_sources; ++i)
			{
				encoder_->get_source_direction(i, azimuths[i], elevations[i]);
			}
			encoder_->encode_multi(input.samples(), output.samples(), n_sources,
			                       block_size, azimuths.data(), elevations.data());
		}
	}

	static long simplemc_inputchanged(c74::max::t_object* x, long ch, long count)
	{
		minwrap<grainflow_ambi_encode_tilde>* ob = reinterpret_cast<minwrap<grainflow_ambi_encode_tilde>*>(x);
		if (ch == 0)
		{
			int chans = count > 0 ? count : 1;
			ob->m_min_object.input_chans = chans;
			return chans;
		}
		return count;
	}

	static long simplemc_output(c74::max::t_object* x, long ch, long count)
	{
		minwrap<grainflow_ambi_encode_tilde>* ob = reinterpret_cast<minwrap<grainflow_ambi_encode_tilde>*>(x);
		return ob->m_min_object.output_channels_value;
	}

	message<> maxclass_setup{
		this, "maxclass_setup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			c74::max::t_class* c = args[0];
			c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(simplemc_inputchanged), "inputchanged", c74::max::A_CANT, 0);
			c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(simplemc_output), "multichanneloutputs", c74::max::A_CANT, 0);
			return {};
		}
	};

	attribute<int> a_order{
		this, "order", 4,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy()) { return args; }
				auto val = std::clamp(static_cast<int>(args[0]), 1, 7);
				pending_order = val;
				output_channels_value = (val + 1) * (val + 1);
				return {val};
			}
		},
		description{"Ambisonics order (1-7). Output channels = (order+1)^2. Changes take effect on DSP start."},
		range{1, 7}
	};

	message<> dspsetup{
		this, "dspsetup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (encoder_ != nullptr)
			{
				encoder_->set_order(pending_order);
			}
			return {};
		}
	};

	attribute<int> a_norm{
		this, "normalisation", 0, norm_range,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || encoder_ == nullptr) { return args; }
				int val = args[0];
				HOA_NORM norm = (val == 0) ? HOA_NORM_SN3D : (val == 1) ? HOA_NORM_N3D : HOA_NORM_FUMA;
				encoder_->set_normalisation(norm);
				return args;
			}
		},
		description{"Normalisation convention: SN3D (AmbiX default), N3D, or FuMa (1st order only)"}
	};

	attribute<int> a_channel_order{
		this, "channelOrder", HOA_CH_ORDER::HOA_CH_ORDER_ACN, order_range,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || encoder_ == nullptr) { return args; }
				int val = args[0];
				encoder_->set_channel_order((val == 0) ? HOA_CH_ORDER_ACN : HOA_CH_ORDER_FUMA);
				return args;
			}
		},
		description{"Channel ordering: ACN (AmbiX default) or FuMa (1st order only)"}
	};

	message<> m_xyz{
		this, "xyz",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (args.size() < 4 || encoder_ == nullptr) { return args; }
			int source_index = static_cast<int>(args[0]);
			float x = static_cast<float>(args[1]);
			float y = static_cast<float>(args[2]);
			float z = static_cast<float>(args[3]);

			float r = std::sqrt(x * x + y * y + z * z);
			if (r < 1e-6f)
			{
				encoder_->set_source_direction(source_index, 0.0f, 0.0f);
				return args;
			}
			// Negate x so that negative x = left (positive azimuth in ambisonics)
			float azimuth = std::atan2(-x, y) * (180.0f / 3.14159265358979f);
			float elevation = std::asin(z / r) * (180.0f / 3.14159265358979f);
			encoder_->set_source_direction(source_index, azimuth, elevation);
			return args;
		},
		description{"Set source position as source_index x y z coordinates (negative x=left, negative z=down)"}
	};

	message<> m_azel{
		this, "azel",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (args.size() < 3 || encoder_ == nullptr) { return args; }
			int source_index = static_cast<int>(args[0]);
			encoder_->set_source_direction(source_index, static_cast<float>(args[1]), static_cast<float>(args[2]));
			return args;
		},
		description{"Set source direction as source_index azimuth elevation (degrees)"}
	};
};

MIN_EXTERNAL(grainflow_ambi_encode_tilde);
