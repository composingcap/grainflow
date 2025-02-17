#pragma once
#include <c74_min.h>
#include "gfUtils.h"
#include "gfPanner.h"
#include <mutex>
#include <atomic>
#include  <cmath>
#include <vector>
#include "gfSpat.h"

constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;

class grainflow_util_spatpan_tilde : public object<grainflow_util_spatpan_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{"An easy way to pan grains generated with grainflow."};
	MIN_TAGS{"granulation, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{"grainflow.util.multipan~,""grainflow.spatpan~"};

private:
	double oneOverSamplerate = 1;
	unique_ptr<gf_spat_pan<INTERNALBLOCK, double>> panner_;

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

	grainflow_util_spatpan_tilde();
	~grainflow_util_spatpan_tilde();
	void operator()(audio_bundle input, audio_bundle output);
	static long simplemc_inputchanged(c74::max::t_object* x, long g, long count);
	static long simplemc_output(c74::max::t_object* x, long g, long count);

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

	message<> m_setSpeakerPosition{
		this,
		"speakerPositions",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			panner_->clear_speaker_position();
			for (int i = 0; i < args.size() / 3; ++i)
			{
				auto pos = std::array<float, 3>{
					(float)args[0 + i * 3], (float)args[1 + i * 3], (float)args[2 + i * 3]
				};
				panner_->set_speaker_position(i, pos);
			}
			panner_->recalculate_all_gains();
			return {};
		}
	};

	message<> m_setSourcePosition{
		this,
		"xyz",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (args.size() < 3) { return args; }
			auto pos = std::array<float, 3>{(float)args[1], (float)args[2], (float)args[3]};
			panner_->set_source_position((int)args[0], pos);
			return {};
		}
	};

	message<> m_clearSources{
		this,
		"clearSources",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			panner_->clear_source_positions();
			return {};
		}
	};


#pragma endregion
};
