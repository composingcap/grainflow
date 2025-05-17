#pragma once
#include "gfFilters.h"
#include "gfUtils.h"
#include <c74_min.h>
#include <vector>

#include "gfParam.h"

constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;

class grainflow_morphFilter_tilde : public object<grainflow_morphFilter_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{"A morphing biquad filter with Lowpass, Bandpass, and Highpass steps"};
	MIN_TAGS{"granulation, msp, grainflow, filters"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{""};

private:
	double oneOverSamplerate = 1;
	std::vector<biquad<double>> biquads;
	std::vector<gf_param> p_frequency;
	std::array<biquad_params<double>, INTERNALBLOCK> params_block;
	biquad_params<double> current_params{0, 0, 0, 0, 0};
	biquad_params<double> last_params{0, 0, 0, 0, 0};

public:
	std::array<int, 6> inlet_chans{1, 1, 1, 1, 1, 1};
	std::vector<double> last_grain_state{0};
	int output_chans = 1;

	inlet<> i_input{this, "(multichannelsignal) input", "multichannelsignal"};
	inlet<> i_state{this, "(multichannelsignal) state", "multichannelsignal"};
	inlet<> i_life{this, "(multichannelsignal) clock", "multichannelsignal"};

	inlet<> i_freq{this, "(multichannelsignal) freqMod", "multichannelsignal"};
	inlet<> i_q{this, "(multichannelsignal) qMod", "multichannelsignal"};
	inlet<> i_morph{this, "(multichannelsignal) morphMod", "multichannelsignal"};

	outlet<> o_output{this, "(multichannelsignal) output", "multichannelsignal"};


	void operator()(audio_bundle input, audio_bundle output)
	{
		if (!i_input.has_signal_connection() || biquads.empty())
		{
			output.clear();
			return;
		}

		int block_size = input.frame_count();
		int sub_blocks = block_size / INTERNALBLOCK;
		auto ins = input.samples();
		auto outs = output.samples();
		const float one_over_sub_block = 1.0f / sub_blocks;

		const int grain_chans = inlet_chans[0] + inlet_chans[1] + inlet_chans[2];

		for (int i = 0; i < inlet_chans[0]; ++i)
		{
			auto* grain_state = ins[inlet_chans[0] + i % inlet_chans[2]];
			auto* freq_chan = ins[grain_chans + i % inlet_chans[3]];
			auto* q_chan = ins[grain_chans + inlet_chans[3] + i % inlet_chans[4]];
			auto* morph_chan = ins[grain_chans + inlet_chans[3] + inlet_chans[4] + i % inlet_chans[5]];


			for (int j = 0; j < sub_blocks; ++j)
			{
				auto* freq_pin = freq_chan + (j * INTERNALBLOCK);

				auto change = gf_utils::detect_one_transition(grain_state + (j * INTERNALBLOCK + i), INTERNALBLOCK,
				                                              last_grain_state.data(), i);


				biquad_params<double>::morph(current_params,
				                             p_frequency[i].value + freq_pin[0],
				                             q_chan[j * INTERNALBLOCK],
				                             morph_chan[j * INTERNALBLOCK] + 1, samplerate());

				if (change < INTERNALBLOCK)
				{
					p_frequency[i].sample(i, gf_random_mode::positive);
				}

				biquad_params<double>::morph(last_params, p_frequency[i].value + freq_pin[INTERNALBLOCK],
				                             q_chan[(j + 1) * INTERNALBLOCK],
				                             morph_chan[(j + 1) * INTERNALBLOCK] + 1, samplerate());

				biquad_params<double>::lerp_block(current_params, last_params, one_over_sub_block, INTERNALBLOCK,
				                                  params_block.data());
				biquads[i].perform(ins[i] + (j * INTERNALBLOCK), INTERNALBLOCK, params_block.data(),
				                   outs[i] + (j * INTERNALBLOCK));
			}
		}
	}

	static long simplemc_inputchanged(c74::max::t_object* x, long ch, long count)
	{
		int chans = count > 0 ? count : 1;
		minwrap<grainflow_morphFilter_tilde>* ob = reinterpret_cast<minwrap<grainflow_morphFilter_tilde>*>(x);
		auto& min_obj = ob->m_min_object;
		min_obj.inlet_chans[ch] = chans;


		if (ch == 0)
		{
			min_obj.p_frequency.resize(chans);
			min_obj.a_freq.set(ob->m_min_object.a_freq);
			min_obj.a_freqOffset.set(ob->m_min_object.a_freqOffset);
			min_obj.a_freqFreqRandom.set(ob->m_min_object.a_freqFreqRandom);
			min_obj.biquads.resize(chans);
			min_obj.last_grain_state.resize(chans);
		}
		for (auto& i : min_obj.biquads)
		{
			i.clear();
		}

		return chans;
	}

	static long simplemc_output(c74::max::t_object* x, long ch, long count)
	{
		minwrap<grainflow_morphFilter_tilde>* ob = reinterpret_cast<minwrap<grainflow_morphFilter_tilde>*>(x);
		int chans = ob->m_min_object.inlet_chans[0] > 0 ? ob->m_min_object.inlet_chans[0] : 1;
		ob->m_min_object.output_chans = chans;
		return chans;
	}

	static void fit_args_to_size(const atoms& base, const int size, atoms& output)
	{
		output.resize(size);
		for (int i = 0; i < size; ++i)
		{
			output[i] = base[i % base.size()];
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
			c74::max::class_addmethod(
				c, reinterpret_cast<c74::max::method>(grainflow_morphFilter_tilde::simplemc_inputchanged),
				"inputchanged",
				c74::max::A_CANT, 0);
			c74::max::class_addmethod(
				c, reinterpret_cast<c74::max::method>(grainflow_morphFilter_tilde::simplemc_output),
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
			for (auto& i : biquads)
			{
				i.clear();
			}
			return {};
		}
	};

	message<> m_clear{
		this,
		"clear",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			for (auto& i : biquads)
			{
				i.clear();
			}
			return {};
		}
	};


	attribute<vector<number>> a_freq{
		this,
		"frequency",
		{1000},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				atoms fixed;
				fit_args_to_size(args, inlet_chans[0], fixed);
				for (int i = 0; i < p_frequency.size(); ++i)
				{
					p_frequency[i].base = fixed[i];
				}
				return fixed;
			}
		},
		description{"Frequency"},
	};
	attribute<vector<number>> a_freqOffset{
		this,
		"frequencyOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				atoms fixed;
				fit_args_to_size(args, inlet_chans[0], fixed);
				for (int i = 0; i < p_frequency.size(); ++i)
				{
					p_frequency[i].offset = fixed[i];
				}
				return fixed;
			}
		},
		description{"Frequency Offset"},
	};
	attribute<vector<number>> a_freqFreqRandom{
		this,
		"frequencyRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				atoms fixed;
				fit_args_to_size(args, inlet_chans[0], fixed);
				for (int i = 0; i < p_frequency.size(); ++i)
				{
					p_frequency[i].random = fixed[i];
				}
				return fixed;
			}
		},
		description{"Frequency Random"},
	};
};

MIN_EXTERNAL(grainflow_morphFilter_tilde);
