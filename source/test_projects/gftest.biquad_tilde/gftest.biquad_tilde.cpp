#pragma once
#include "gfFilters.h"
#include <c74_min.h>
#include <vector>
#include <atomic>

constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;

class gfTest_biquad_tilde : public object<gfTest_biquad_tilde>, public vector_operator<>
{
public:
	MIN_DESCRIPTION{"biquad test"};
	MIN_TAGS{"tests"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{""};

private:
	double oneOverSamplerate = 1;
	biquad<double> biquad_;
	std::atomic<biquad_params<double>> params_atom;
    biquad_params<double> params;
    biquad_params<double> params_dsp;
    int blocks_per_vector_ = 1;
public:
	std::array<int, 6> inlet_chans{1, 1, 1, 1, 1, 1};
	std::vector<double> last_grain_state{0};
	int output_chans = 1;

	inlet<> i_input{this, "(signal) input", "signal"};

    outlet<> o_output{this, "(signal) output", "signal"};


	void operator()(audio_bundle input, audio_bundle output)
	{
		if (!i_input.has_signal_connection())
		{
			output.clear();
			return;
		}

        params_dsp = params_atom.load();
        blocks_per_vector_ = input.frame_count() / INTERNALBLOCK;
        auto** input_samples = input.samples();
        auto** output_samples = output.samples();
        for (int i = 0; i < blocks_per_vector_; ++i){
            auto* input_pin = input_samples[0]+i*INTERNALBLOCK;
            auto* output_pin = output_samples[0]+i*INTERNALBLOCK;
            biquad_.perform(input_pin, INTERNALBLOCK, params_dsp, output_pin);
        }
    }

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
			return {};
		}
	};

	message<> dspsetup{
		this,
		"dspsetup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			oneOverSamplerate = 1 / samplerate();
			biquad_.clear();
			return {};
		}
	};

	message<> m_clear{
		this,
		"clear",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			biquad_.clear();
			return {};
		}
	};

    message<> m_biquad{
		this,
		"biquad",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
            if (args.size() < 5){
                return {};
            }
			params.b0 = args[0]; 
            params.b1 = args[1]; 
            params.b2 = args[2]; 
            params.a1 = args[3]; 
            params.a2 = args[4]; 
            params_atom.store(params);
            return {};
		}
	};

    message<> m_morph{
		this,
		"morph",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
            if (args.size() < 3){
                return {};
            }
            biquad_params<double>::morph(params, args[0], args[1], args[2], samplerate());
            params_atom.store(params);
            return {};
		}
	};

    message<> m_bandpass{
		this,
		"band",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
            if (args.size() < 2){
                return {};
            }
            biquad_params<double>::bandpass(params, args[0], args[1], samplerate());
            params_atom.store(params);
            return {};
		}
	};




};

MIN_EXTERNAL(gfTest_biquad_tilde);
