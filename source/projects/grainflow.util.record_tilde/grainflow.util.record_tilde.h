#pragma once
#include <c74_min.h>
#include "gfUtils.h"
#include "gfPanner.h"
#include "maxBufferReader.h"
#include <gfRecord.h>
#include <mutex>
#include <atomic>
#include  <cmath>
#include <vector>

constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;

class grainflow_util_record_tilde : public object<grainflow_util_record_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{"A simple buffer recorder intended to be used with grainflow"};
	MIN_TAGS{"granulation, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{"grainflow~,""grainflow.live~"};

private:
	double oneOverSamplerate = 1;
	buffer_reference* target_buffer_;
	gf_i_buffer_reader<buffer_reference> buffer_reader_;
	std::unique_ptr<gfRecorder<buffer_reference, INTERNALBLOCK>> recorder_;
public:
	std::array<int,2> input_chans = { 1,0 };

#pragma region MAX_IO
	inlet<> input_signal{this, "(multichannelsignal) input signal", "multichannelsignal"};
	inlet<> sync_signal{ this, "(signal) sync signal", "signal" };
	outlet<> traversal{this, "(signal) normalized position in buffer", "signal"};
	outlet<> dump{this, "dump", "list"};


#pragma endregion
#pragma region DSP
#pragma region DSP

	grainflow_util_record_tilde();
	~grainflow_util_record_tilde();
	void operator()(audio_bundle input, audio_bundle output);
	static long simplemc_inputchanged(c74::max::t_object* x, long g, long count);
	static long simplemc_output(c74::max::t_object* x, long g, long count);

#pragma endregion

#pragma region MAX_ARGS
	argument<int> buffer_name_arg{
	this,
	"buffer-name",
	"the buffer to record to",
	[this](const c74::min::atom& arg)
	{
		buffer.set({arg});
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

	message<> int_mess{
	this,
	"int",
	[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
	{
		state.set({(static_cast<int>(args[0]) > 0)});
		return{};
	}
	};

	message<> buf_mess{
		this,
		"buf",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			buffer.set(args);
			return{};
		}
	};

	attribute<symbol> buffer{
		this,
		"buffer",
		"",
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (args.size() < 1) return {};
				auto name = static_cast<symbol>(args[0]);
				if (name.empty() || name == "") return {""};
				target_buffer_->set(name);
				return args;
			}
		},
		description{"target buffer"},
	};

	attribute<number> overdub{
		this,
		"overdub",
		0.0,
		description{"The amount of the old samples that will be mixed in with the new samples"},
	};

	attribute<bool> state{
		this,
		"state",
		0,
		description{"state of the recorder"},
	};



	attribute<bool> freeze{
	this,
	"freeze",
	0,
		description{"should the output buffer position be frozen?"},
	};

	timer<timer_options::defer_delivery> internal_update{
		this,
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			internal_update.delay(12.5);
			double pos_norm;
			double pos_samps;
			double pos_ms;
			recorder_->get_position(pos_samps, pos_norm, pos_ms);
			dump.send({ "recordHead", pos_norm });
			dump.send({ "recordHeadMs", pos_ms });
			return {};
		
		}
	};
#pragma endregion
};
