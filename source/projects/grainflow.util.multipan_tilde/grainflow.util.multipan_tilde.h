#pragma once
#include <c74_min.h>
#include "gfUtils.h"
#include "gfPanner.h"
#include <mutex>
#include <atomic>
#include  <cmath>
#include <vector>

constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;

class grainflow_util_multipan_tilde : public object<grainflow_util_multipan_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{"An easy way to pan grains generated with grainflow."};
	MIN_TAGS{"granulation, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{"grainflow.util.multipan~,""grainflow.spatpan~"};

private:
	double oneOverSamplerate = 1;
	unique_ptr<gf_panner<INTERNALBLOCK, gf_pan_mode::unipolar>> panner_;

public:
	int input_chans = 1;
	int output_channels_value = 2;
#pragma region MAX_IO
	inlet<> grains{this, "(multichannelsignal) grains", "multichannelsignal"};
	inlet<> grain_states{this, "(multichannelsignal) grain_states", "multichannelsignal"};

	outlet<> output{this, "(multichannel) panned grains", "multichannelsignal"};
	outlet<> positions{this, "list of pan positions", "list"};


#pragma endregion
#pragma region DSP
#pragma region DSP

	grainflow_util_multipan_tilde();
	~grainflow_util_multipan_tilde();
	void operator()(audio_bundle input, audio_bundle output);
	static long simplemc_inputchanged(c74::max::t_object* x, long g, long count);
	static long simplemc_output(c74::max::t_object* x, long g, long count);
	void setup_panner(int inputs) const;

#pragma endregion

#pragma region MAX_ARGS
	argument<int> output_channels{
		this,
		"output channels",
		"The number of output channels",
		[this](const c74::min::atom& arg)
		{
			output_channels_value = static_cast<int>(arg);
		}
	};
#pragma endregion


#pragma region MAX_MESSAGES
	// Setup functions

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
			oneOverSamplerate = 1 / samplerate();
			return {};
		}
	};

	attribute<number> pan_center{
		this,
		"panCenter",
		0.5,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (args.empty()) return args;
				if (panner_ == nullptr) return args;
				panner_->pan_position = static_cast<float>(args[0]);
				return args;
			}
		},
		description{"The center to where grain pan"},
	};

	attribute<number> pan_spread{
		this,
		"panSpread",
		0.25,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (args.empty()) return args;
				if (panner_ == nullptr) return args;
				panner_->pan_spread = static_cast<float>(args[0]);
				return args;
			}
		},
		description{"The distance grains can pan from the center"},
	};

		attribute<number> quantize{
		this,
		"quantize",
		0.0,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (args.empty()) return args;
				if (panner_ == nullptr) return args;
				panner_->pan_quantization = static_cast<float>(args[0]);
				return args;
			}
		},
		description{"A speaker division grains will lock to"},
	};

	timer<timer_options::defer_delivery> internal_update{
		this,
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (panner_ != nullptr)
			{
				auto pos = panner_->get_positions();
				atoms output;
				output.assign(pos.begin(), pos.end());
				positions.send(output);
			}

			internal_update.delay(33);
			return {};
		}
	};
#pragma endregion
};
