#pragma once
#include "c74_min.h"
#include "gfUtils.h"
#include "gfGrainCollection.h"
#include "maxBufferReader.h"
#include <mutex>
#include <map>
constexpr size_t internal_block = 16;

using namespace c74::min;
using namespace Grainflow;
long simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count);
long simplemc_inputchanged(c74::max::t_object* x, long g, long count);

class grainflow_tilde final : public object<grainflow_tilde>, public mc_operator<>
	// NOLINT(cppcoreguidelines-special-member-functions)
{
public:
	MIN_DESCRIPTION{"the base object for grainflow"};
	MIN_TAGS{"granulation, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{""};

private:
	std::unique_ptr<GfGrainCollection<buffer_reference, internal_block>> grain_collection_;
	string buffer_arg_;
	string env_arg_;

	float one_over_samplerate_ = 1.0f / 48000;
	int samplerate_ = 48000;
	int target_ = 0;
	int stream_target_ = 0;
	int channel_target_ = 0;
	int n_streams_ = 0;
	int max_grains_;
	std::random_device rd_;
	gfIoConfig io_config_;
	float empty_buffer_[10] = {};
	bool has_update_;
	bool linked_params_dirty_ = false;


	atoms m_grain_state_;
	atoms m_grain_progress_;
	atoms m_grain_playhead_;
	atoms m_grain_envelope_;
	atoms m_grain_amp_;
	atoms m_grain_stream_channel_;
	atoms m_grain_buffer_channel_;

	GfIBufferReader<buffer_reference> buffer_reader_;

	atoms get_grain_params(GfParamName param, GfParamType type) const;
	atoms set_grain_params(atoms args, GfParamName param, GfParamType type) const;
	void try_set_attribute_or_message(const string& name, const atoms& args);
	void grain_info_reset();
	void refresh_named_attributes(const std::string& name);
	void refresh_all_attributes();
	void output_all_grain_info();

public:
	int input_chans[4] = {0, 0, 0, 0};
	int max_grains_this_frame = 0;
	std::mutex lock;

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

	int get_max_grains() const;
	grainflow_tilde();
	~grainflow_tilde() override;
	void operator()(audio_bundle input, audio_bundle output);
	void grain_message(float value, GfParamName param, GfParamType type);
	void buffer_ref_message(const string& buffer_name, GFBuffers type);
	void buffer_refresh(GFBuffers type);
	auto init() -> void;
	void reinit(int grains);
	void use_default_envelope(bool state, int target = 0);
	void output_grain_info(string name, const atoms& data);
	void setup_outputs(gfIoConfig& io_config, double** outputs) const;
	static void setup_inputs(gfIoConfig& io_config, const int* input_channels, double** inputs);
	void refresh_linked_attribute();


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
			buffer_reader_.SampleBuffer = MaxBufferReader::SampleBuffer;
			buffer_reader_.SampleEnvelope = MaxBufferReader::SampleEnvelope;
			buffer_reader_.UpdateBufferInfo = MaxBufferReader::UpdateBufferInfo;
			buffer_reader_.SampleParamBuffer = MaxBufferReader::SampleParamBuffer;
			grain_collection_ = std::make_unique<GfGrainCollection<buffer_reference, internal_block>>(
				buffer_reader_, max_grains_);
			if (auto_overlap) set_grain_params(atoms{1.0f / max_grains_}, GfParamName::window, GfParamType::offset);
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
			this->lock.lock();
			buffer_refresh(GFBuffers::buffer); // This is needed so grainflow live can load buffers correctly.
			samplerate_ = samplerate();
			grain_collection_->samplerate = samplerate_;
			one_over_samplerate_ = 1.0f / samplerate_;


			this->lock.unlock();
			return {};
		}
	};
#pragma endregion

#pragma region ATTRIBUTES_PITCH_AND_RATE


	// Rate
	attribute<vector<number>> rate{
		this,
		"rate",
		{1},
		//description{"how fast a grain plays in relation to its normal playback rate"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, GfParamName::rate, GfParamType::base);
				//if(transpose.writable())transpose.touch();
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::rate, GfParamType::base);
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
				set_grain_params(args, GfParamName::rate, GfParamType::random);
				linked_params_dirty_ = true;
				//if(transposeRandom.writable())transposeRandom.touch();
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::rate, GfParamType::random);
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
				set_grain_params(args, GfParamName::rate, GfParamType::offset);
				linked_params_dirty_ = true;
				//if(transposeOffset.writable())transposeOffset.touch();
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::rate, GfParamType::offset);
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
				set_grain_params(args, GfParamName::transpose, GfParamType::base);
				//if(rate.writable())rate.touch();
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(GfParamName::rate, GfParamType::base);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateToPitch((float)res[i])); }
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
				set_grain_params(args, GfParamName::transpose, GfParamType::random);
				//if (rateRandom.writable())rateRandom.touch();
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(GfParamName::rate, GfParamType::random);
				for (int i = 0; i < res.size(); i++)
				{
					res[i] = static_cast<atom>(GfUtils::RateOffsetToPitchOffset((float)res[i]));
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
				set_grain_params(args, GfParamName::transpose, GfParamType::offset);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(GfParamName::rate, GfParamType::offset);
				for (auto& re : res)
				{
					re = static_cast<atom>(GfUtils::RateOffsetToPitchOffset((float)re));
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
					transposed[i] = static_cast<atom>(GfUtils::PitchToRate(args[i]));
				}
				return set_grain_params(transposed, GfParamName::rateQuantizeSemi, GfParamType::value);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(GfParamName::rateQuantizeSemi, GfParamType::value);
				for (auto& re : res) { re = static_cast<atom>(GfUtils::RateToPitch(re)); }
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
				set_grain_params(args, GfParamName::glisson, GfParamType::base);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::glisson, GfParamType::base);
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
				set_grain_params(args, GfParamName::glisson, GfParamType::random);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::glisson, GfParamType::random);
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
				set_grain_params(args, GfParamName::glisson, GfParamType::offset);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::glisson, GfParamType::offset);
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
				set_grain_params(args, GfParamName::glissonSt, GfParamType::base);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(GfParamName::glisson, GfParamType::base);
				for (auto& re : res)
				{
					re = static_cast<atom>(GfUtils::RateOffsetToPitchOffset((float)re));
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
				set_grain_params(args, GfParamName::glissonSt, GfParamType::random);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(GfParamName::glisson, GfParamType::random);
				for (auto& re : res)
				{
					re = static_cast<atom>(GfUtils::RateOffsetToPitchOffset((float)re));
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
				set_grain_params(args, GfParamName::glissonSt, GfParamType::offset);
				linked_params_dirty_ = true;
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(GfParamName::glisson, GfParamType::offset);
				for (auto& re : res)
				{
					re = static_cast<atom>(GfUtils::RateOffsetToPitchOffset((float)re));
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
				return set_grain_params(args, GfParamName::glissonPosition, GfParamType::base);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::glissonPosition, GfParamType::base);;
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
				return set_grain_params(args, GfParamName::glissonPosition, GfParamType::offset);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::glissonPosition, GfParamType::offset);;
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
				return set_grain_params(args, GfParamName::glissonPosition, GfParamType::random);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::glissonPosition, GfParamType::random);;
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
				return set_grain_params(args, GfParamName::direction, GfParamType::base);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::direction, GfParamType::base); }},
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
				return set_grain_params(args, GfParamName::delay, GfParamType::base);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto ms = get_grain_params(GfParamName::delay, GfParamType::base);
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
				return set_grain_params(args, GfParamName::delay, GfParamType::random);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto ms = get_grain_params(GfParamName::delay, GfParamType::random);
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
				return set_grain_params(args, GfParamName::delay, GfParamType::offset);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto ms = get_grain_params(GfParamName::delay, GfParamType::offset);
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
				return set_grain_params(args, GfParamName::window, GfParamType::base);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::window, GfParamType::base); }},
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
				return set_grain_params(args, GfParamName::window, GfParamType::random);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::window, GfParamType::random); }},
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
				return set_grain_params(args, GfParamName::window, GfParamType::offset);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::window, GfParamType::offset); }},
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
					return set_grain_params({0.999}, GfParamName::space, GfParamType::base);
				}
				return set_grain_params(args, GfParamName::space, GfParamType::base);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::space, GfParamType::base); }},
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
				return set_grain_params(args, GfParamName::space, GfParamType::random);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::space, GfParamType::random); }},
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
				return set_grain_params(args, GfParamName::space, GfParamType::offset);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::space, GfParamType::offset); }},
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
				grain_collection_->SetDensity(target_, args[0]);
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
				set_grain_params(args, GfParamName::startPoint, GfParamType::base);
				return args;
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::startPoint, GfParamType::base); }},
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
				set_grain_params(args, GfParamName::stopPoint, GfParamType::base);
				return args;
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::stopPoint, GfParamType::base); }},
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
				set_grain_params(args, GfParamName::loopMode, GfParamType::base);
				return args;
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::loopMode, GfParamType::base); }},
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
				return set_grain_params(args, GfParamName::amplitude, GfParamType::base);
			}
		},
		getter{[this]() -> atoms { return get_grain_params(GfParamName::amplitude, GfParamType::base); }},
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
				return set_grain_params(args, GfParamName::amplitude, GfParamType::random);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto amps = get_grain_params(GfParamName::amplitude, GfParamType::random);;
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
				return set_grain_params(args, GfParamName::amplitude, GfParamType::offset);
			}
		},
		getter{
			[this]() -> atoms
			{
				auto amps = get_grain_params(GfParamName::amplitude, GfParamType::offset);;
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
				grain_collection_->SetActiveGrains((int)args[0]);
				return {grain_collection_->ActiveGrains()};
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
				if (grain_collection_->Grains() <= 0) return args;

				auto buf = grain_collection_->GetBuffer(GFBuffers::buffer);
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
				const int chans = args[0];
				grain_collection_->ChannelsSetInterleaved(chans);
				return args;
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

				grain_collection_->ChannelModeSet(mode);

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

				if (args[0] == grain_collection_->Grains()) return {};
				int grains = args[0];
				if (grains < 1) return {grain_collection_->Grains()};
				reinit(grains);
				return args;
			}
		},
		getter{[this]() -> atoms { return {grain_collection_->Grains()}; }},
		category{"Grainflow Settings"},
		description{"the maximum number of voices/grains. You will need to restart audio after setting this."},
		order{2},
	};


	attribute<bool> live_mode{
		this,
		"liveMode",
		false,
		category{"Grainflow Settings"},
		order{2},
		description{
			"removes samplerate correction from a buffers samplerate. This is useful with live granulation if a buffer is created them Max's samplerate changes."
		},

	};

	attribute<vector<number>> n_envelopes{
		this,
		"nEnvelopes",
		{1},
		description{"sets the number of envelopes in the 2d envelope buffer"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, GfParamName::nEnvelopes, GfParamType::value);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::nEnvelopes, GfParamType::value);;
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
				return set_grain_params(args, GfParamName::envelopePosition, GfParamType::base);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::envelopePosition, GfParamType::base);;
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
				return set_grain_params(args, GfParamName::envelopePosition, GfParamType::offset);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::envelopePosition, GfParamType::offset);;
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
				return set_grain_params(args, GfParamName::envelopePosition, GfParamType::random);
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(GfParamName::envelopePosition, GfParamType::random);;
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
			grain_message(static_cast<float>(args[0]), GfParamName::delay, GfParamType::base);
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
			grain_message(static_cast<float>(args[0]), GfParamName::delay, GfParamType::random);
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
			grain_message(static_cast<float>(args[0]), GfParamName::delay, GfParamType::offset);
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
			auto res = grain_collection_->ParamSet((int)args[0], (std::string)args[1], (float)args[2]);
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
			return set_grain_params(args, GfParamName::window, GfParamType::offset);
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
			auto mode = GfStreamSetType::automaticStreams;
			if (mode_str == "auto")
				mode = GfStreamSetType::automaticStreams;
			else if (mode_str == "per")
				mode = GfStreamSetType::perStreams;
			else if (mode_str == "random")
				mode = GfStreamSetType::randomStreams;
			else
				return {};
			grain_collection_->StreamSet(mode, n_streams);
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
			grain_collection_->StreamSet(GfStreamSetType::manualStreams, n_streams_);
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

			switch (grain_collection_->StreamParamSet(reflection_string, stream_target, value))
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
			grain_collection_->StreamParamFunc(reflection_string, &GfUtils::Deviate, (float)args[2], (float)args[1]);
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
			if (const auto res = grain_collection_->GrainParamFunc(reflection_string, &GfUtils::Deviate, center, dev);
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
			grain_collection_->StreamParamFunc(reflectionString, &GfUtils::RandomRange, (float)args[1], (float)args[2]);
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
			if (const auto res = grain_collection_->GrainParamFunc(reflection_string, &GfUtils::RandomRange, low, high);
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
			grain_collection_->StreamParamFunc(reflection_string, &GfUtils::Lerp, (float)args[1], (float)args[2]);
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
			if (const auto res = grain_collection_->GrainParamFunc(reflection_string, &GfUtils::Lerp, low, high); res !=
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

			if (g >= grain_collection_->Grains() || g < 0)
				return {};
			if (grain_collection_ == nullptr)return {};
			grain_collection_->ChannelSet(g, chan);
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
			if (const auto res = grain_collection_->ChannelParamSet(chan, reflection_string, value); res !=
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
			grain_message(args[0], GfParamName::delay, GfParamType::mode);
			return {};
		}
	};

	message<> rate_mode{
		this,
		"rateMode",
		"sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(args[0], GfParamName::rate, GfParamType::mode);
			return {};
		}
	};

	message<> window_mode{
		this,
		"windowMode",
		"sets  the window mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(args[0], GfParamName::window, GfParamType::mode);
			return {};
		}
	};

	message<> glissonMode{
		this,
		"glissonMode",
		"sets  the window mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			grain_message(args[0], GfParamName::glisson, GfParamType::mode);
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
			buffer_ref_message(b_name, GFBuffers::envelope);
			use_default_envelope(false, target_);
			if (args.size() < 2)
			{
				grain_message(1, GfParamName::nEnvelopes, GfParamType::value);
				return {};
			}
			grain_message((int)args[1], GfParamName::nEnvelopes, GfParamType::value);

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
			grain_message(args[0], GfParamName::envelopePosition, GfParamType::base);
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
			buffer_ref_message(b_name, GFBuffers::buffer);
			auto b = grain_collection_->GetBuffer(GFBuffers::buffer);
			if (b != nullptr) { o_grain_info.send({"buf", b->name()}); };
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
			buffer_ref_message(b_name, GFBuffers::delayBuffer);
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
			buffer_ref_message(b_name, GFBuffers::windowBuffer);
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
			buffer_ref_message(b_name, GFBuffers::rateBuffer);
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
			buffer_ref_message(b_name, GFBuffers::glissonBuffer);
			if (args.size() < 2)
			{
				grain_message(1, GfParamName::glissonRows, GfParamType::value);
				return {};
			}
			grain_message((int)args[1], GfParamName::glissonRows, GfParamType::value);
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
