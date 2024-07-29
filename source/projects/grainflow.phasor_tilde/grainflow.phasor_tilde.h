#pragma once
#include "c74_min.h"
#include "gfUtils.h"
#include "gfSyn.h"
#include <mutex>
#include <atomic>
#include  <cmath>
#include <vector>

constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;
long simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count);
long simplemc_inputchanged(c74::max::t_object* x, long g, long count);

class grainflow_phasor_tilde : public object<grainflow_phasor_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{ "the base object for grainflow" };
	MIN_TAGS{ "grainulation, msp, grainflow" };
	MIN_AUTHOR{ "Christopher Poovey" };
	MIN_RELATED{ "" };

private:
double oneOverSamplerate = 1;
std::vector<double> lastPhasorValue;
std::vector<double> phasorFrequencies;

public:
	int input_chans = 1;
	void Resize();

#pragma region MAX_IO
	inlet<> frequencies{ this, "(multichannelsignal) phasor frequencies", "multichannelsignal" };
	outlet<> output{ this, "(multichannel) phasor output", "multichannelsignal" };


#pragma endregion
#pragma region DSP
#pragma region DSP

	grainflow_phasor_tilde();
	~grainflow_phasor_tilde();
	void operator()(audio_bundle input, audio_bundle output);

#pragma endregion

#pragma region MAX_ARGS


#pragma endregion



#pragma region MAX_MESSAGES
	// Setup functionsf

	message<> setup{
		this,
		"setup",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		return {};
		}
	};

	message<> maxclass_setup{
		this,
		"maxclass_setup",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			c74::max::t_class* c = args[0];
			c74::max::class_addmethod(c, (c74::max::method)simplemc_inputchanged, "inputchanged", c74::max::A_CANT, 0);
			c74::max::class_addmethod(c, (c74::max::method)simplemc_multichanneloutputs, "multichanneloutputs", c74::max::A_CANT, 0);
			return {};
		}
	};

	message<> dspsetup{
		this,
		"dspsetup",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			oneOverSamplerate = 1 / samplerate();

			return {};
		}
	};
#pragma endregion

};
