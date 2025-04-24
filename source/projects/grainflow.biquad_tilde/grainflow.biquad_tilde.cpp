#pragma once
#include "gfFilters.h"
#include "gfUtils.h"
#include <c74_min.h>
#include <vector>

constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;

class grainflow_biquad_tilde : public object<grainflow_biquad_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{"Biquad Test"};
	MIN_TAGS{"granulation, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{};

private:
	double oneOverSamplerate = 1;
	std::vector<biquad<double>> biquads;
	biquad_params params;

public:
	int input_chans = 1;
	int output_chans = 1;

#pragma region MAX_IO
	inlet<> i_input{this, "(multichannelsignal) input", "multichannelsignal"};
	outlet<> o_output{this, "(multichannelsignal) output", "multichannelsignal"};




#pragma endregion
#pragma region DSP
#pragma region DSP

	void operator()(audio_bundle input, audio_bundle output){
		int block_size = input.frame_count();
		int sub_blocks = block_size/INTERNALBLOCK;
		auto ins = input.samples();
		auto outs = output.samples();
		
		if (!i_input.has_signal_connection()){
			output.clear();
			return;
		}
		for (int i = 0; i < input_chans; ++i){
			for(int j = 0; j < sub_blocks; ++j){
				biquads[i].perform(ins[i]+(j*INTERNALBLOCK), INTERNALBLOCK,params, outs[i]+(j*INTERNALBLOCK));
			}
		}
	};
	static long simplemc_inputchanged(c74::max::t_object* x, long ch, long count){
		if (ch != 0) return 1;
		minwrap<grainflow_biquad_tilde>* ob = reinterpret_cast<minwrap<grainflow_biquad_tilde>*>(x);
		int chans = count > 0 ? count : 1;
		ob->m_min_object.input_chans = chans;
		ob->m_min_object.biquads.resize(chans);
		return chans;
	};
	static long simplemc_output(c74::max::t_object* x, long ch, long count){
		minwrap<grainflow_biquad_tilde>* ob = reinterpret_cast<minwrap<grainflow_biquad_tilde>*>(x);
		ob->m_min_object.output_chans = ob->m_min_object.input_chans;
		return ob->m_min_object.input_chans;
	};

#pragma endregion

#pragma region MAX_ARGS


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

	attribute<vector<number>> biquadParams{
		this,
		"biquadParams",
		{0.9, 0.1, 0.1, 0.2, 0.2},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy()) return args;
				if (args.size() >= 5){
					params.a1 = args[3];
					params.a2 = args[4];
					params.b0 = args[0];
					params.b1 = args[1];
					params.b2 = args[2];
				}

				return {params.b0, params.b1, params.b2, params.a1, params.a2};
				

			}
		},
		description{"biquad params"},
	};

#pragma endregion
};

MIN_EXTERNAL(grainflow_biquad_tilde);

