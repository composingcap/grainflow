#pragma once
#include <c74_min.h>
#include <mutex>
#include <map>
#include <gfUtils.h>
#include <gfGrainCollection.h>
#include "maxBufferReader.h"
#include <gfRecord.h>
#include <algorithm>

namespace {
	constexpr size_t internal_block = 16;
}
using namespace c74::min;
using namespace Grainflow;

class grainflow_live_tilde final : public object<grainflow_live_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{"the live granulation object for grainflow"};
	MIN_TAGS{"granulation, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{""};

private:
	std::unique_ptr<gf_grain_collection<buffer_reference, internal_block>> grain_collection_;
	string buffer_arg_;
	string env_arg_;

	float one_over_samplerate_ = 1.0f / 48000;
	int samplerate_ = 48000;
	int target_ = 0;
	int stream_target_ = 0;
	int channel_target_ = 0;
	int n_streams_ = 0;
	int max_grains_= 2;
	std::random_device rd_;
	gf_io_config io_config_;
	float empty_buffer_[10] = {};
	bool has_update_;
	bool has_record_update_;
	bool linked_params_dirty_ = false;
	bool buffer_is_internal_= false;
	std::mutex mutex_;

	atoms m_grain_state_;
	atoms m_grain_progress_;
	atoms m_grain_playhead_;
	atoms m_grain_envelope_;
	atoms m_grain_amp_;
	atoms m_grain_stream_channel_;
	atoms m_grain_buffer_channel_;

	c74::min::atom buffer_arg_value_;

	buffer_reference* buffer_ = nullptr;
	c74::max::t_object* buffer_object_handle_ = nullptr;

	std::unique_ptr<gfRecorder<buffer_reference, internal_block>> recorder_;;
	int block_size_ = 0;
	double* traversal_phasor_ = nullptr;




	atoms get_grain_params(gf_param_name param, gf_param_type type) const;
	atoms set_grain_params(atoms args, gf_param_name param, gf_param_type type) const;
	void try_set_attribute_or_message(const string& name, const atoms& args);
	void grain_info_reset();
	void refresh_named_attributes(const std::string& name);
	void refresh_all_attributes();
	void output_all_grain_info();

	static long simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count);
	static long simplemc_inputchanged(c74::max::t_object* x, long g, long count);
	void generate_internal_buffer(int length_ms, int channels);
	void destroy_internal_buffer();
	void resize_buffer(int length_ms, int channels);
	bool check_and_update_buffer(const int channels);

public:
	int input_chans[4] = {0, 0, 0, 0};
	int max_grains_this_frame = 0;
	std::mutex lock;

#pragma region MAX_IO

	inlet<> input_signal{this, "(multichannelsignal) signal to granulate", "multichannelsignal"	};
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

	int get_max_grains() const;
	grainflow_live_tilde();
	~grainflow_live_tilde() override;
	void operator()(audio_bundle input, audio_bundle output);
	void grain_message(float value, gf_param_name param, gf_param_type type);
	void buffer_ref_message(const string& buffer_name, gf_buffers type);
	void buffer_refresh(gf_buffers type);
	auto init() -> void;
	void reinit(int grains);
	void use_default_envelope(bool state, int target = 0);
	void output_grain_info(string name, const atoms& data);
	void setup_outputs(gf_io_config& io_config, double** outputs) const;
	static void setup_inputs(gf_io_config& io_config, const int* input_channels, double** inputs, double** traveral_phasor);
	void refresh_linked_attribute();


#pragma endregion

#pragma region MAX_ARGS
	argument<anything> buffer_arg{
		this,
		"buffer size in ms or the name of a refrence buffer",
		"the size of the internal buffer in ms or the name of an interanl buffer",
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
			this->try_call("env", arg);
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


			grain_collection_ = std::make_unique<gf_grain_collection<buffer_reference, internal_block>>(
				max_buffer_reader::get_max_buffer_reader(), max_grains_);
			if (auto_overlap) set_grain_params(atoms{1.0f / max_grains_}, gf_param_name::window, gf_param_type::offset);
			m_grain_state_.resize(max_grains_);
			m_grain_progress_.resize(max_grains_);
			m_grain_playhead_.resize(max_grains_);
			m_grain_amp_.resize(max_grains_);
			m_grain_envelope_.resize(max_grains_);
			m_grain_stream_channel_.resize(max_grains_);
			m_grain_buffer_channel_.resize(max_grains_);
			n_grains = max_grains_;
			one_over_samplerate_ = 1.0f / samplerate_;
			grain_collection_->samplerate = samplerate_;
			init();
			return {};
		}
	};

	message<> maxclass_setup{
		this,
		"maxclass_setup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			c74::max::t_class* c = args[0];
			c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(simplemc_multichanneloutputs),
			                          "multichanneloutputs", c74::max::A_CANT, 0);
			c74::max::class_addmethod(c, reinterpret_cast<c74::max::method>(simplemc_inputchanged), "inputchanged",
			                          c74::max::A_CANT, 0);
			return {};
		}
	};

	message<> dspsetup{
		this,
		"dspsetup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			std::lock_guard<std::mutex> lock(mutex);
			buffer_refresh(gf_buffers::buffer); // This is needed so grainflow live can load buffers correctly.
			samplerate_ = samplerate();
			//grain_collection_->samplerate = samplerate_;
			one_over_samplerate_ = 1.0f / samplerate_;
			auto _temp_is_internal = buffer_is_internal_;
			buffer_name.set(buffer_name);
			buffer_is_internal_ = _temp_is_internal;
			return {};
		}
	};
#pragma endregion

#pragma region GRAINFLOW_LIVE
	attribute<symbol> buffer_name{ this, "buffer_name", symbol{},
	setter{
	[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto name = static_cast<symbol>(args[0]);
			if (buffer_ == nullptr) return { symbol{} };
			if (name.empty()) return{ symbol{} };
			buffer_->set(name);
			buffer_ref_message(name, gf_buffers::buffer);
			buffer_lock<> samples(*buffer_);
			buf_chans.set({ samples.channel_count() });
			buffer_is_internal_ = false;
			return {name};
			}},
		getter {
			[this]()->atoms {
			if (buffer_ == nullptr) return {symbol{}};
			return { buffer_->name() };
		}},
		category{"Grainflow Live Settings"},
		description{"The buffer linked with this instance of grainflow live"},
	};


	attribute<bool> freeze{ this, "freeze", false,
		category{"Grainflow Live Settings"},
		description{"Freezes the traversal phasor"},
	};
	attribute<bool> record{ this, "rec", true,
	category{"Grainflow Live Settings"},
	description{"Determines if grainflow.live is recording"},
	};

	attribute<bool> play{ this, "play", true,
		category{"Grainflow Live Settings"},
		description{"Determines if grainflow.live should output grains"},
	};

	attribute<number> overdub{ this, "overdub", 0.0,
	category{"Grainflow Live Settings"},
	description{"How much the previous contented is mixed with new content"},
	};
#pragma endregion

#pragma region ATTRIBUTES_PITCH_AND_RATE


	// Rate
	attribute<vector<number>> rate{
		this,
		"rate",
		{1},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::rate, gf_param_type::base);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::rate, gf_param_type::base);
			}
		},
		description{"Controls the rate of playback of each grain. This will modify pitch."},
		category{"Pitch | Rate"},
		order{3},
	};
	attribute<vector<number>> rateRandom{
		this,
		"rateRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::rate, gf_param_type::random);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::rate, gf_param_type::random);
			}
		},
		description{"Adds a unipolar random amount to the playback rate on each grains start."},
		category{"Pitch | Rate"},
		order{3},
	};
	attribute<vector<number>> rateOffset{
		this,
		"rateOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::rate, gf_param_type::offset);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::rate, gf_param_type::offset);
			}
		},
		description{"Adds an amount to the playback rate based on the grains index."},
		category{"Pitch | Rate"},
		order{3},
	};

	attribute<vector<number>> transpose{
		this,
		"transpose",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::transpose, gf_param_type::base);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(gf_param_name::rate, gf_param_type::base);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(gf_utils::rate_to_pitch((float)res[i])); }
				return res;
			}
		},
		description{"Controls each grains playback rate in terms of the pitch change that will occur"},
		category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> transposeRandom{
		this,
		"transposeRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::transpose, gf_param_type::random);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(gf_param_name::rate, gf_param_type::random);
				for (int i = 0; i < res.size(); i++)
				{
					res[i] = static_cast<atom>(gf_utils::rate_offset_to_pitch_offset((float)res[i]));
				}
				return res;
			}
		},
		description{"Adds a unipolar random amount to each grains transposition when a grain starts"},
		category{"Pitch | Rate"},
		order{3},
	};

	attribute<vector<number>> transpose_offset{
		this,
		"transposeOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::transpose, gf_param_type::offset);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(gf_param_name::rate, gf_param_type::offset);
				for (auto& re : res)
				{
					re = static_cast<atom>(gf_utils::rate_offset_to_pitch_offset((float)re));
				}
				return res;
			}
		},
		description{"Adds an amount to each grains transposition based on grain index"},
		category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> rate_quantize_semi{
		this,
		"rateQuantizeSemi",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				atoms transposed;
				transposed.resize(args.size());
				for (int i = 0; i < args.size(); i++)
				{
					transposed[i] = static_cast<atom>(gf_utils::pitch_to_rate(args[i]));
				}
				return set_grain_params(transposed, gf_param_name::rate_quantize_semi, gf_param_type::value);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(gf_param_name::rate_quantize_semi, gf_param_type::value);
				for (auto& re : res) { re = static_cast<atom>(gf_utils::rate_to_pitch(re)); }
				return res;
			}
		},
		description{
			"Snaps grain playback rates to a semitone grid. 0 provides no snapping. Fractional amounts are allowed."
		},
		category{"Pitch | Rate"},
		order{3},
	};

	// glisson
	attribute<vector<number>> glisson{
		this,
		"glisson",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::glisson, gf_param_type::base);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::glisson, gf_param_type::base);
			}
		},
		description{"How much the playback rate will change over the life of the grain. Creates a glissando effect"},
		category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> glisson_random{
		this,
		"glissonRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::glisson, gf_param_type::random);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::glisson, gf_param_type::random);
			}
		},
		description{
			"A unipolar random amount added to each grains glisson destination. Determined at the start of each grain."
		},
		category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> glisson_offset{
		this,
		"glissonOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::glisson, gf_param_type::offset);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::glisson, gf_param_type::offset);
			}
		},
		description{"An amount added to each grains glisson destination based on the grain index"},
		category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> glisson_st{
		this,
		"glissonSt",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::glisson_st, gf_param_type::base);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(gf_param_name::glisson, gf_param_type::base);
				for (auto& re : res)
				{
					re = static_cast<atom>(gf_utils::rate_offset_to_pitch_offset((float)re));
				}
				return res;
			}
		},
		description{"Controls the glisson attribute in terms of the pitch change that will occur"},
		category{"Pitch | Rate"},
		order{3},
	};

	attribute<vector<number>> glisson_st_random{
		this,
		"glissonStRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::glisson_st, gf_param_type::random);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(gf_param_name::glisson, gf_param_type::random);
				for (auto& re : res)
				{
					re = static_cast<atom>(gf_utils::rate_offset_to_pitch_offset((float)re));
				}
				return res;
			}
		},
		description{"A unipolar random amount added to the glissonSt value. Determined at the start of each grain."},
		category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> glisson_st_offset{
		this,
		"glissonStOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::glisson_st, gf_param_type::offset);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(gf_param_name::glisson, gf_param_type::offset);
				for (auto& re : res)
				{
					re = static_cast<atom>(gf_utils::rate_offset_to_pitch_offset((float)re));
				}
				return res;
			}
		},
		description{"An amount added to the glissonSt value based on each grain's index"},
		category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> glisson_position{
		this,
		"glissonBufferPosition",
		{0},
		description{"sets the 2D envelope position"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::glisson_position, gf_param_type::base);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::glisson_position, gf_param_type::base);;
			}
		},
		category{"Pitch | Rate"},
	};

	attribute<vector<number>> glisson_position_offset{
		this,
		"glissonBufferPositionOffset",
		{0},
		description{"sets the 2D envelope position"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::glisson_position, gf_param_type::offset);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::glisson_position, gf_param_type::offset);;
			}
		},
		category{"Pitch | Rate"},
	};

	attribute<vector<number>> glisson_position_random{
		this,
		"glissonBufferPositionRandom",
		{0},
		description{"sets the 2D envelope position"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::glisson_position, gf_param_type::random);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::glisson_position, gf_param_type::random);;
			}
		},
		category{"Pitch | Rate"},
	};
#pragma endregion
#pragma region ATTRIBUTES_TIME_AND_SPACE
	attribute<vector<number>> direction{
		this,
		"direction",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::direction, gf_param_type::base);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::direction, gf_param_type::base); }},
		description{
			"The probability a grain will play forwards or backwards. 1: always forwards, 0: 50% chance forwards or backwards, -1: always backwards"
		},
		category{"Time | Volume"},
		order{4},
	};

	// delay
	attribute<vector<number>> delay{
		this,
		"delay",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::delay, gf_param_type::base);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto ms = get_grain_params(gf_param_name::delay, gf_param_type::base);
				return ms;
			}
		},
		description{"An offset from the traversal phasor in milliseconds"},
		category{"Time | Volume"},
		order{4},
	};

	attribute<vector<number>> delay_random{
		this,
		"delayRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::delay, gf_param_type::random);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto ms = get_grain_params(gf_param_name::delay, gf_param_type::random);
				return ms;
			}
		},
		description{
			"A unipolar random offset from the traversal phasor in milliseconds. Determined at the start of each grain"
		},
		category{"Time | Volume"},
		order{4},
	};


	attribute<vector<number>> delay_offset{
		this,
		"delayOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::delay, gf_param_type::offset);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto ms = get_grain_params(gf_param_name::delay, gf_param_type::offset);
				return ms;
			}
		},
		description{"An offset from the traversal phasor in milliseconds based on the index of each grain"},
		category{"Time | Volume"},
		order{4},

	};
	// Window
	attribute<vector<number>> window{
		this,
		"window",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::window, gf_param_type::base);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::window, gf_param_type::base); }},
		description{"Sets the position of each grains starting point on the grain clock from 0-1"},
		category{"Envelope"},
		order{4},
	};

	attribute<vector<number>> window_random{
		this,
		"windowRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::window, gf_param_type::random);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::window, gf_param_type::random); }},
		description{"Adds a unipolar random amount to each grains window"},
		category{"Envelope"},
		order{4},
	};

	attribute<vector<number>> window_offset{
		this,
		"windowOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::window, gf_param_type::offset);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::window, gf_param_type::offset); }},
		description{
			"Adds an offset to the base grain window position based on each grains index. When autoOverlap is enabled this is set based on the number of grains"
		},
		category{"Envelope"},
		order{4},
	};


	// Space
	attribute<vector<number>> space{
		this,
		"space",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (static_cast<float>(args[0]) >= 1)
				{
					return set_grain_params({0.999}, gf_param_name::space, gf_param_type::base);
				}
				return set_grain_params(args, gf_param_name::space, gf_param_type::base);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::space, gf_param_type::base); }},
		description{"the amount of empty space at the end of each grains as a ratio of the total grain size"},
		category{"Envelope"},
		order{4},

	};

	attribute<vector<number>> space_random{
		this,
		"spaceRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::space, gf_param_type::random);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::space, gf_param_type::random); }},
		description{"the amount of empty space at the end of each grains as a ratio of the total grain size"},
		category{"Envelope"},
		order{4},

	};

	attribute<vector<number>> space_offset{
		this,
		"spaceOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::space, gf_param_type::offset);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::space, gf_param_type::offset); }},
		description{"the amount of empty space at the end of each grains as a ratio of the total grain size"},
		category{"Envelope"},
		order{4},

	};

	attribute<number> density{
		this,
		"density",
		1,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (grain_collection_ == nullptr)return args;
				grain_collection_->set_density(target_, args[0]);
				return args;
			}
		},
		description{"the probability a grain will play"},
		category{"Time | Volume"},
		order{4},

	};

	attribute<vector<number>> start_point{
		this,
		"startPoint",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::start_point, gf_param_type::base);
				return args;
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::start_point, gf_param_type::base); }},
		description{"the start of the loop from 0-1"},
		category{"Time | Volume"},
		order{4},
	};

	attribute<vector<number>> stopPoint{
		this,
		"stopPoint",
		{1},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::stop_point, gf_param_type::base);
				return args;
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::stop_point, gf_param_type::base); }},
		description{"the end of the loop from 0-1"},
		category{"Time | Volume"},
		order{4},
	};

	attribute<vector<int>> loop_mode{
		this,
		"loopMode",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::loop_mode, gf_param_type::base);
				return args;
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::loop_mode, gf_param_type::base); }},
		description{"how the loops is handled by each grain. 0: ignore the loop. 1: wrap 2: fold "},
		category{"Time | Volume"},
		order{4},
	};

#pragma endregion
#pragma region AMPLITUDE
	// amp
	attribute<vector<number>> amp_mess{
		this,
		"amp",
		{1},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::amplitude, gf_param_type::base);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::amplitude, gf_param_type::base); }},
		description{"The amplitude of each grain as a value from 0-1"},
		category{"Time | Volume"},
		order{5},
	};

	attribute<vector<number>> amp_random{
		this,
		"ampRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::amplitude, gf_param_type::random);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto amps = get_grain_params(gf_param_name::amplitude, gf_param_type::random);;
				for (auto& amp : amps)
				{
					amp = std::max(std::min(-static_cast<float>(amp), 1.0f), 0.0f);
				}
				return amps;
			}
		},
		description{
			"A unipolar random amount subtracted from each grains amplitude. Determined at the start of each grain"
		},
		category{"Time | Volume"},
		order{5},
	};


	attribute<vector<number>> amp_offset{
		this,
		"ampOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::amplitude, gf_param_type::offset);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto amps = get_grain_params(gf_param_name::amplitude, gf_param_type::offset);;
				for (auto& amp : amps)
				{
					amp = std::max(1.0f - static_cast<float>(amp), 0.0f);
				}
				return amps;
			}
		},
		description{"An amount subtracted from each grains amplitude based on each grains index."},
		category{"Time | Volume"},
		order{5},
	};

#pragma endregion
#pragma region ATTRIBUTES_SETTINGS

	attribute<bool> auto_overlap{
		this,
		"autoOverlap",
		true,
		description{"Automatically sets windowOffset based on the number of grains when nGrains is changed"},
		category{"Grainflow Settings"},
		order{2},

	};

	attribute<int> n_grains{
		this,
		"ngrains",
		0,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (grain_collection_ == nullptr) return {0};
				grain_collection_->set_active_grains((int)args[0]);
				return {grain_collection_->active_grains()};
			}
		},
		description{"the number of active grains"},
		category{"Grainflow Settings"},
		order{2},


	};

	attribute<bool> state{
		this, "state", false,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (!args[0])
				{
					if (state)grain_info_reset();
					return args;
				}
				if (grain_collection_ == nullptr) return args;
				if (grain_collection_->grains() <= 0) return args;

				auto buf = grain_collection_->get_buffer(gf_buffers::buffer);
				if (buf == nullptr) return args;
				o_grain_info.send(atoms{"buf", buf->name()});
				return args;
			}
		},
		description{"Determines if grainflow is on or off"},
		category{"Grainflow Settings"},
		order{2},
	};




	// Buffer Channels
	attribute<int> buf_chans{
		this,
		"bufChans",
		1,
		description{"channels of the buffer associated to each grain"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (grain_collection_ == nullptr)return args;
				if (buffer_ == nullptr) return args;
				int chans = args[0];
				buffer_lock<> samples(*buffer_);
				chans = std::max(chans, static_cast<int>(samples.channel_count()));
				grain_collection_->channels_set_interleaved(chans);
				return { chans };
			}
		},
		category{"Grainflow Settings"},
		order{2},
	};


	attribute<int> chan_mode{
		this,
		"chanMode",
		0,
		description{"If greater than 1, channels are assigned at random"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (grain_collection_ == nullptr)return args;
				int mode = static_cast<float>(args[0]) >= 0.999f ? 1 : 0;

				grain_collection_->channel_mode_set(mode);

				return {mode};
			},
		},
		category{"Grainflow Settings"},
	};

	attribute<int> voices{
		this,
		"voices",
		2,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (args.empty()) return {};
				if (grain_collection_ == nullptr) return args;

				if (args[0] == grain_collection_->grains()) return {};
				int grains = args[0];
				if (grains < 1) return {grain_collection_->grains()};
				reinit(grains);
				return args;
			}
		},
		getter{[this]() -> atoms { return {grain_collection_->grains()}; }},
		category{"Grainflow Settings"},
		description{"the maximum number of voices/grains. You will need to restart audio after setting this."},
		order{2},
	};


	attribute<vector<number>> n_envelopes{
		this,
		"nEnvelopes",
		{1},
		description{"sets the number of envelopes in the 2d envelope buffer"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::n_envelopes, gf_param_type::value);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::n_envelopes, gf_param_type::value);;
			}
		},
		category{"Envelope"},
	};

	attribute<vector<number>> env_position{
		this,
		"envPosition",
		{0},
		description{"sets the 2D envelope position"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::envelope_position, gf_param_type::base);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::envelope_position, gf_param_type::base);;
			}
		},
		category{"Envelope"},
	};

	attribute<vector<number>> env_position_offset{
		this,
		"envPositionOffset",
		{0},
		description{"sets the 2D envelope position"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::envelope_position, gf_param_type::offset);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::envelope_position, gf_param_type::offset);;
			}
		},
		category{"Envelope"},
	};

	attribute<vector<number>> env_position_random{
		this,
		"envPositionRandom",
		{0},
		description{"sets the 2D envelope position"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::envelope_position, gf_param_type::random);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::envelope_position, gf_param_type::random);;
			}
		},
		category{"Envelope"},
	};
#pragma endregion

#pragma region GRAINFLOW_MESSAGES

	// Grainflow Messages
	message<> m_int{
		this,
		"int",
		"enables and disables the granulator",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			state = static_cast<int>(args[0]) >= 1;
			//o_grainInfo.send(atoms{ "buf", grainInfo[0].GetBuffer(GFBuffers::buffer)->name() });
			return {};
		}
	};

	message<> trav{
		this,
		"trav",
		"DEPRECATED the amount grains are delayed in ms",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(static_cast<float>(args[0]), gf_param_name::delay, gf_param_type::base);
			linked_params_dirty_ = true;
			return {};
		}
	};


	message<> trav_random{
		this,
		"travRandom",
		"DEPRECATED the amount grains are delayed in ms",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(static_cast<float>(args[0]), gf_param_name::delay, gf_param_type::random);
			linked_params_dirty_ = true;
			return {};
		}
	};


	message<> trav_offset{
		this,
		"travOffset",
		"DEPRECATED message to set the amount grains are delayed in ms",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(static_cast<float>(args[0]), gf_param_name::delay, gf_param_type::offset);
			linked_params_dirty_ = true;
			return {};
		}
	};

	// Targets
	message<> grain{
		this,
		"g",
		"sends a message to a single grain",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (args.size() <= 1) return {};
			if (grain_collection_ == nullptr) return {};
			if (args[2].a_type == 3)
			{
				const auto last_target = target_;
				target_ = static_cast<int>(args[0]);
				this->try_call(static_cast<std::string>(args[1]), atoms(args.begin() + 2, args.end()));
				target_ = last_target;
				return {};
			}
			auto res = grain_collection_->param_set((int)args[0], (std::string)args[1], (float)args[2]);
			refresh_named_attributes((std::string)args[1]);
			return {};
		}
	};

	message<> target{
		this,
		"target",
		"sends a message to a single grain",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			target_ = args[0];
			channel_target_ = 0;
			stream_target_ = 0;
			return {};
		}
	};

	message<> window_offset_random{
		this,
		"windowOffsetRandom",
		"DEPRECATED message for setting the window offset attribute",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			return set_grain_params(args, gf_param_name::window, gf_param_type::offset);
		},
	};


	// Streams

	message<> stream_set{
		this,
		"streamSet",
		"Sets the number of stream and assigns each grain to a stream depending on the mode. auto: rotate grains around max grains. per: grains are assigned to streams in chunks. random: grains are assigned to random streams.",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (grain_collection_ == nullptr)return args;
			const string mode_str = args[0];
			const int n_streams = args[1];
			if (n_streams < 1)
				return {};
			auto mode = gf_stream_set_type::automatic_streams;
			if (mode_str == "auto")
				mode = gf_stream_set_type::automatic_streams;
			else if (mode_str == "per")
				mode = gf_stream_set_type::per_streams;
			else if (mode_str == "random")
				mode = gf_stream_set_type::random_streams;
			else
				return {};
			grain_collection_->stream_set(mode, n_streams);
			n_streams_ = n_streams;
			return {};
		}
	};

	message<> number_of_streams{
		this,
		"nstreams",
		"Sets the number of streams",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (args.empty()) return {};
			const int n_streams = args[0];

			if (n_streams < 1)
				return {};
			n_streams_ = n_streams;
			grain_collection_->stream_set(gf_stream_set_type::manual_streams, n_streams_);
			return {};
		}
	};

	message<> stream_target{
		this,
		"streamTarget",
		"messages will target grains assigned to this stream",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			target_ = 0;
			channel_target_ = 0;
			stream_target_ = args[0];
			return {};
		}
	};

	message<> stream_msg{
		this,
		"stream",
		"sets an attribute or message for all grains in a stream",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (grain_collection_ == nullptr)return {};
			const int stream_target = args[0];
			const float value = args[2];
			const auto reflection_string = static_cast<string>(args[1]);

			switch (grain_collection_->stream_param_set(reflection_string, stream_target, value))
			{
			case GF_RETURN_CODE::GF_PARAM_NOT_FOUND:
				cout << stderr << "Parameter " << reflection_string << " not found";
				break;
			case GF_RETURN_CODE::GF_ERR:
				cout << stderr << "Stream not found";
				break;
			default:
				cout << stderr << "Bad Return Code";
			}
			refresh_named_attributes(reflection_string);
			return {};
		}
	};

	message<> stream_deviate{
		this,
		"streamDeviate",
		"will deviate any parameter based on streams",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (grain_collection_ == nullptr)return args;
			float value = 0;
			const auto reflection_string = args[0];
			grain_collection_->stream_param_func(reflection_string, &gf_utils::deviate, (float)args[2], (float)args[1]);
			refresh_named_attributes(reflection_string);
			return {};
		}
	};

	message<> deviate{
		this,
		"deviate",
		"deviate a parameter {1} from a center value {2} in the amount of a bipolar depth {3}",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			const std::string reflection_string = args[0];
			const float dev = args[1];
			const float center = args[2];
			if (const auto res = grain_collection_->grain_param_func(reflection_string, &gf_utils::deviate, center, dev)
				;
				res
				!= GF_RETURN_CODE::GF_SUCCESS)
				cout << stderr << "Parameter " << reflection_string << " not found" <<
					"\n";
			refresh_named_attributes(reflection_string);
			return args;
		}
	};

	message<> stream_random_range{
		this,
		"streamRandomrange",
		"will deviate any parameter based on streams",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (grain_collection_ == nullptr)return args;
			float value = 0;
			auto reflectionString = args[0];
			grain_collection_->stream_param_func(reflectionString, &gf_utils::random_range, (float)args[1],
			                                     (float)args[2]);
			refresh_named_attributes(reflectionString);
			return {};
		}
	};

	message<> random_range{
		this,
		"randomrange",
		"picks a random value between two points for each parameter",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			const std::string reflection_string = args[0];
			const float low = args[1];
			const float high = args[2];
			if (const auto res = grain_collection_->grain_param_func(reflection_string, &gf_utils::random_range, low,
			                                                         high);
				res != GF_RETURN_CODE::GF_SUCCESS)
				cout << stderr << "Parameter " << reflection_string << " not found" <<
					"\n";
			refresh_named_attributes(reflection_string);
			return args;
		}
	};

	message<> stream_spread{
		this,
		"streamSpread",
		"will create evenly spaced values between each number based on streams",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (grain_collection_ == nullptr)return {};
			float value = 0;
			const auto reflection_string = args[0];
			grain_collection_->stream_param_func(reflection_string, &gf_utils::lerp, (float)args[1], (float)args[2]);
			refresh_named_attributes(reflection_string);
			return {};
		}
	};

	message<> spread{
		this,
		"spread",
		"spread a parameter {1} by between values {2} and {3}",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			const std::string reflection_string = args[0];
			const float low = args[1];
			const float high = args[2];
			if (const auto res = grain_collection_->grain_param_func(reflection_string, &gf_utils::lerp, low, high); res
				!=
				GF_RETURN_CODE::GF_SUCCESS)
				cout << stderr << "Parameter " << reflection_string << " not found" << "\n";
			refresh_named_attributes(reflection_string);
			return args;
		}
	};


	message<> buf_chan{
		this,
		"bufChan",
		"sets the channel of grains with a certain channel. Should be used with the g message",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			int g = 0;
			int chan = 0;
			if (grain_collection_ == nullptr) return args;

			if (args.size() == 1)
			{
				g = target_ - 1;
				chan = args[0];
			}
			else
			{
				g = static_cast<int>(args[0]) - 1;
				chan = args[1];
			}

			if (g >= grain_collection_->grains() || g < 0)
				return {};
			if (grain_collection_ == nullptr)return {};
			grain_collection_->channel_set(g, chan);
			buf_chans.touch();
			return {};
		}
	};

	message<> g_chan{
		this,
		"g_chan",
		"sets an attribute of message for all grains assigned to a buffer channel",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (grain_collection_ == nullptr) return args;
			const int chan = args[0];
			const std::string reflection_string = args[1];
			const float value = args[2];
			if (const auto res = grain_collection_->channel_param_set(chan, reflection_string, value); res !=
				GF_RETURN_CODE::GF_SUCCESS)
				cout << stderr << "Parameter " << reflection_string << " not found" << "\n";
			refresh_named_attributes(reflection_string);
			return {};
		}
	};


	// Param Modes
	message<> delay_mode{
		this,
		"delayMode",
		"sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(args[0], gf_param_name::delay, gf_param_type::mode);
			return {};
		}
	};

	message<> rate_mode{
		this,
		"rateMode",
		"sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(args[0], gf_param_name::rate, gf_param_type::mode);
			return {};
		}
	};

	message<> window_mode{
		this,
		"windowMode",
		"sets  the window mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(args[0], gf_param_name::window, gf_param_type::mode);
			return {};
		}
	};

	message<> glissonMode{
		this,
		"glissonMode",
		"sets  the window mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(args[0], gf_param_name::glisson, gf_param_type::mode);
			return {};
		}
	};


	// Envelope
	message<> env{
		this,
		"env",
		"sets the envelope buffer with a second argument defining the number of envelopes in the buffer",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (args.empty()) return {};
			const auto b_name = static_cast<string>(args[0]);
			if (b_name.empty() || b_name.compare("0") == 0 || b_name.compare("_") == 0 || b_name.compare("default") ==
				0)
			{
				use_default_envelope(true, target_);
				return {};
			}
			buffer_ref_message(b_name, gf_buffers::envelope);
			use_default_envelope(false, target_);
			if (args.size() < 2)
			{
				grain_message(1, gf_param_name::n_envelopes, gf_param_type::value);
				return {};
			}
			grain_message((int)args[1], gf_param_name::n_envelopes, gf_param_type::value);

			return {};
		}
	};

	message<> env_2d{
		this,
		"env2D",
		"sets the envelope buffer with a second argument defining the number of envelopes in the buffer",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			this->try_call("env", args);
			return {};
		}
	};

	message<> env_2d_position{
		this,
		"env2DPosition",
		"sets the 2D envelope position",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(args[0], gf_param_name::envelope_position, gf_param_type::base);
			return {};
		}
	};

	// Buffers
	message<> buf{
		this,
		"buf",
		"sets the granulation buffer",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (grain_collection_ == nullptr)return args;
			const auto b_name = static_cast<string>(args[0]);
			buffer_name = b_name;
			return {};
		}
	};

	message<> delay_buffer{
		this,
		"delayBuffer",
		"sets the buffer for delay modes 1 and 2",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			const auto b_name = static_cast<string>(args[0]);
			buffer_ref_message(b_name, gf_buffers::delay_buffer);
			return {};
		}
	};

	message<> window_buffer{
		this,
		"windowBuffer",
		"sets the buffer for window modes 1 and 2",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			const auto b_name = static_cast<string>(args[0]);
			buffer_ref_message(b_name, gf_buffers::window_buffer);
			return {};
		}
	};

	message<> rate_buffer{
		this,
		"rateBuffer",
		"sets the buffer for rate modes 1 and 2",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			const auto b_name = static_cast<string>(args[0]);
			buffer_ref_message(b_name, gf_buffers::rate_buffer);
			return {};
		}
	};

	message<> glisson_buffer{
		this,
		"glissonBuffer",
		"sets the buffer for glisson modes 1 and 2",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			const auto b_name = static_cast<string>(args[0]);
			buffer_ref_message(b_name, gf_buffers::glisson_buffer);
			if (args.size() < 2)
			{
				grain_message(1, gf_param_name::glisson_rows, gf_param_type::value);
				return {};
			}
			grain_message((int)args[1], gf_param_name::glisson_rows, gf_param_type::value);
			return {};
		}
	};

	message<> done{
		this,
		"done",
		"",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			return {};
		}
	};


#pragma endregion
#pragma region GRAINFLOW_OTHER
	timer<timer_options::defer_delivery> internal_update{
		this,
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			output_all_grain_info();
			refresh_linked_attribute();
			internal_update.delay(33);
			return {};
		}
	};
#pragma endregion
};
