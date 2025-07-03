#pragma once
#include <c74_min.h>
#include <mutex>
#include <map>
#include <gfUtils.h>
#include <gfGrainCollection.h>
#include "maxBufferReader.h"
#include <gfRecord.h>
#include <algorithm>
#include "grainflowBase.h"


using namespace c74::min;
using namespace Grainflow;

class grainflow_live_tilde final : public grainflow_base<grainflow_live_tilde>
{
public:
	MIN_DESCRIPTION{"the live granulation object for grainflow"};
	MIN_TAGS{"granulation, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{""};

private:
	bool has_record_update_;
	bool buffer_is_internal_ = false;
	bool audio_thread_busy_;
	c74::min::atom buffer_arg_value_;


	buffer_reference* buffer_ = nullptr;
	c74::max::t_object* buffer_object_handle_ = nullptr;

	std::unique_ptr<gfRecorder<buffer_reference, internal_block>> recorder_;;
	int block_size_ = 0;
	double* traversal_phasor_ = nullptr;


	static long simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count);
	static long simplemc_inputchanged(c74::max::t_object* x, long g, long count);
	void generate_internal_buffer(int length_ms, int channels);
	void destroy_internal_buffer();
	void resize_buffer(int length_ms, int channels);
	bool check_and_update_buffer(const int channels);

	void init() override;
	void event_update() override;
	void setup_dsp() override;
	void max_class_setup(const atoms& args) override;

public:
	int input_chans[4] = {0, 0, 0, 0};
	int max_grains_this_frame = 0;

#pragma region MAX_IO

	inlet<> input_signal{this, "(multichannelsignal) signal to granulate", "multichannelsignal"};
	inlet<> grain_clock{this, "(multichannelsignal) phasor input", "multichannelsignal"};
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

	grainflow_live_tilde();
	~grainflow_live_tilde() override;
	void operator()(audio_bundle input, audio_bundle output);
	void setup_outputs(gf_io_config<>& io_config, double** outputs) const;
	static void setup_inputs(gf_io_config<>& io_config, const int* input_channels, double** inputs,
	                         double** traveral_phasor);


#pragma endregion

#pragma region MAX_ARGS
	argument<anything> buffer_arg{
		this,
		"buffer-size-or-buffer",
		"the size of the internal buffer in ms or the name of a buffer",
		[this](const c74::min::atom& arg)
		{
			buffer_arg_value_ = arg;
			return arg;
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


#pragma region GRAINFLOW_LIVE
	attribute<symbol> buffer_name{
		this, "buffer_name", symbol{},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				auto name = static_cast<symbol>(args[0]);
				if (buffer_ == nullptr) return {symbol{}};
				if (name.empty()) return {symbol{}};
				buffer_->set(name);
				buffer_ref_message({name}, gf_buffers::buffer);
				buffer_lock<> samples(*buffer_);
				buf_chans.set({samples.channel_count()});
				buffer_is_internal_ = false;
				return {name};
			}
		},
		getter{
			[this]()-> atoms
			{
				if (buffer_ == nullptr) return {symbol{}};
				return {buffer_->name()};
			}
		},
		category{"Grainflow Live Settings"},
		description{"The buffer linked with this instance of grainflow live"},
	};


	attribute<bool> freeze{
		this, "freeze", false,
		category{"Grainflow Live Settings"},
		description{"Freezes the traversal phasor"},
	};
	attribute<bool> record{
		this, "rec", true,
		category{"Grainflow Live Settings"},
		description{"Determines if grainflow.live is recording"},
	};

	attribute<vector<number>> od_filters{
		this,
		"overdubFilters",
		{0.0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy())
				{
					return {0.0};
				}
				int n_filters = args.size() / 3;
				if (n_filters < 1)
				{
					if (recorder_ == nullptr)
					{
						return {0.0};
					}
					recorder_->set_n_filters(0);
					return {0.0};
				}
				atoms output_args;
				output_args.reserve(n_filters * 3);
				recorder_->set_n_filters(n_filters);
				for (int i = 0; i < n_filters; ++i)
				{
					const float freq = std::clamp<float>(args[0 + i * 3], 0.0f, samplerate() * 0.5f);
					const float q = std::clamp<float>(args[1 + i * 3], 0.001f, 10000);
					const float dub = std::clamp<float>(args[2 + i * 3], 0.0f, 1.0);
					recorder_->set_filter_params(i, freq, q, dub);
					output_args.emplace_back(freq);
					output_args.emplace_back(q);
					output_args.emplace_back(dub);
				}
				recorder_->pre_process_filters();
				return output_args;
			}
		},
		category{"Grainflow Live Settings"},
		description{"filter bands in freq q overdub"},
	};

	message<> m_clear{
		this, "clear", "clears the internal buffer",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (buffer_ == nullptr)
			{
				return args;
			}
			recorder_->clear(buffer_);
			return args;
		},
	};
#ifdef Experimental
	//recordRange does not work well currently and will need some effort to make it work correctly
	attribute<vector<number>> recordRange{
		this, "rec_range", {0.0f,1.0f},
		category{"Grainflow Live Settings"},
		description{"Determines to write loop"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms{
				atoms fixedArgs = {
					args.empty() ? 0.0f : std::clamp(static_cast<float>(args[0]), 0.0f, 1.0f),
					args.size() < 2 ? 1.0f : std::clamp(static_cast<float>(args[1]), 0.0f, 1.0f),
				};
				if(recorder_ != nullptr){
					recorder_->rec_range[0].store(static_cast<float>(fixedArgs[0]));
					recorder_->rec_range[1].store(static_cast<float>(fixedArgs[1]));
				}
				return fixedArgs;
			}

		}
	};
#endif

	attribute<bool> play{
		this, "play", true,
		category{"Grainflow Live Settings"},
		description{"Determines if grainflow.live should output grains"},
	};

	attribute<number> overdub{
		this, "overdub", 0.0,
		category{"Grainflow Live Settings"},
		description{"How much the previous contented is mixed with new content"},
	};
#pragma endregion
};
