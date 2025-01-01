#pragma once
#include <c74_min.h>
#include <mutex>
#include <map>

#include "grainflowBase.h"


using namespace c74::min;
using namespace Grainflow;


class grainflow_tilde final : public grainflow_base<grainflow_tilde>
	// NOLINT(cppcoreguidelines-special-member-functions)
{
public:
	MIN_DESCRIPTION{"the base object for grainflow"};
	MIN_TAGS{"granulation, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{""};

private:
	static long simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count);
	static long simplemc_inputchanged(c74::max::t_object* x, long g, long count);

	void max_class_setup(const atoms& args) override;

public:
	int input_chans[4] = {0, 0, 0, 0};
	int max_grains_this_frame = 0;

#pragma region MAX_IO
	inlet<> grain_clock{this, "(multichannelsignal) phasor input", "multichannelsignal"};
	inlet<> traversal_phasor{
		this, "(multichannelsignal) where the grain should be sampled from the buffer", "multichannelsignal"
	};
	inlet<> fm{this, "(multichannelsignal) grain playback rate", "multichannelsignal"};
	inlet<> am{this, "(multichannelsignal) amplitude modulation", "multichannelsignal"};

	outlet<> output{this, "(multichannel) grain output", "multichannelsignal"};

	outlet<> o_grain_info{this, "(list) grain info", "list"};

	outlet<> grain_state{this, "(multichannel) grainState", "multichannelsignal"};
	outlet<> grain_progress{this, "(multichannel) grainProgress", "multichannelsignal"};
	outlet<> grain_playhead{this, "(multichannel) grainPlayhead", "multichannelsignal"};
	outlet<> grain_amp{this, "(multichannel) grainAmp (abs)", "multichannelsignal"};
	outlet<> envelope{this, "(multichannel) grainEnvelope", "multichannelsignal"};
	outlet<> channel{this, "(multichannel) channel", "multichannelsignal"};
	outlet<> stream{this, "(multichannel) stream", "multichannelsignal"};
#pragma endregion
#pragma region DSP

	void operator()(audio_bundle input, audio_bundle output);
	void init() override;
	void setup_outputs(gf_io_config<>& io_config, double** outputs) const;
	static void setup_inputs(gf_io_config<>& io_config, const int* input_channels, double** inputs);


#pragma endregion

#pragma region MAX_ARGS
	argument<symbol> buffer_arg{
		this,
		"buf",
		"Buffer~ from which to read.",
		[this](const c74::min::atom& arg)
		{
			buffer_arg_ = (string)arg;
		}
	};

	argument<int> grains_arg{
		this,
		"number-of-grains",
		"max number of grains",
		[this](const c74::min::atom& arg)
		{
			max_grains_ = static_cast<int>(arg);
			if (max_grains_ < 1) max_grains_ = 2;
		}
	};

	argument<int> envelope_arg{
		this,
		"envelope-buffer",
		"(optional) the initial envelope buffer for all grains",
		[this](const c74::min::atom& arg)
		{
			env_arg_ = static_cast<string>(arg);
			return arg;
		}
	};

#pragma endregion
};
