#pragma once
#include <c74_min.h>
#include "gfUtils.h"
#include "gfGrainCollection.h"
#include "maxBufferReader.h"

using namespace c74::min;
using namespace Grainflow;

namespace
{
	constexpr size_t internal_block = 16;
}

template <typename T>
class grainflow_base : public object<T>, public mc_operator<>
{
protected:
	std::unique_ptr<gf_grain_collection<buffer_reference, internal_block>> grain_collection_;
	gf_i_buffer_reader<buffer_reference> buffer_reader_;

	string buffer_arg_;
	string env_arg_;

	bool linked_params_dirty_ = false;
	int target_ = 0;
	float one_over_samplerate_ = 1.0f / 48000;
	int samplerate_ = 48000;
	int stream_target_ = 0;
	int channel_target_ = 0;
	int n_streams_ = 0;
	int max_grains_;


	atoms m_grain_state_;
	atoms m_grain_progress_;
	atoms m_grain_playhead_;
	atoms m_grain_envelope_;
	atoms m_grain_amp_;
	atoms m_grain_stream_channel_;
	atoms m_grain_buffer_channel_;
	dict m_grain_dict{symbol(true)};

	outlet<>* data_outlet = nullptr;

	virtual void event_update()
	{
		output_all_grain_info(data_outlet);
		refresh_linked_attribute();
	};

	virtual void max_class_setup(const atoms& args)
	{
	};

	virtual void setup_dsp()
	{
		buffer_refresh(gf_buffers::buffer); // This is needed so grainflow live can load buffers correctly.
		samplerate_ = samplerate();
		grain_collection_->samplerate = samplerate_;
		one_over_samplerate_ = 1.0f / samplerate_;
	};

	void setup_buffers()
	{
		for (int g = 0; g < grain_collection_->grains(); g++)
		{
			grain_collection_->get_grain(g)->set_index(g);
			grain_collection_->get_grain(g)->set_buffer(gf_buffers::buffer,
			                                            (new buffer_reference(this, nullptr, false)));
			grain_collection_->get_grain(g)->set_buffer(gf_buffers::envelope,
			                                            (new buffer_reference(this, nullptr, false)));
			grain_collection_->get_grain(g)->
			                   set_buffer(gf_buffers::delay_buffer, (new buffer_reference(this, nullptr, false)));
			grain_collection_->get_grain(g)->
			                   set_buffer(gf_buffers::window_buffer, (new buffer_reference(this, nullptr, false)));
			grain_collection_->get_grain(g)->
			                   set_buffer(gf_buffers::rate_buffer, (new buffer_reference(this, nullptr, false)));
			grain_collection_->get_grain(g)->set_buffer(gf_buffers::glisson_buffer,
			                                            (new buffer_reference(this, nullptr, false)));

			auto env = grain_collection_->get_grain(g)->get_buffer(gf_buffers::envelope);
			env->set(env_arg_);
			auto buf = grain_collection_->get_grain(g)->get_buffer(gf_buffers::buffer);
			buf->set(buffer_arg_);
		}
\

		grain_collection_->samplerate = samplerate_;
	}

	virtual void init()
	{
		buffer_reader_.sample_buffer = max_buffer_reader::sample_buffer;
		buffer_reader_.sample_envelope = max_buffer_reader::sample_envelope;
		buffer_reader_.update_buffer_info = max_buffer_reader::update_buffer_info;
		buffer_reader_.sample_param_buffer = max_buffer_reader::sample_param_buffer;
		grain_collection_ = std::make_unique<gf_grain_collection<buffer_reference, internal_block>>(
			buffer_reader_, max_grains_);
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
		setup_buffers();
	}

	void reinit(const int grains)
	{
		grain_collection_.release();
		max_grains_ = grains;
		if (n_grains > max_grains_) n_grains = max_grains_;
		if (auto_overlap) this->try_set_attribute_or_message("windowOffset", atoms{1.0f / n_grains});
		m_grain_state_.resize(max_grains_);
		m_grain_progress_.resize(max_grains_);
		m_grain_playhead_.resize(max_grains_);
		m_grain_amp_.resize(max_grains_);
		m_grain_envelope_.resize(max_grains_);
		m_grain_stream_channel_.resize(max_grains_);
		m_grain_buffer_channel_.resize(max_grains_);
		init();
	}


	bool has_update_;
	gf_io_config<> io_config_;


	void grain_message(float value, gf_param_name param, gf_param_type type)
	{
		if (stream_target_ > 0)
		{
			grain_collection_->stream_param_set(stream_target_, param, type, value);
		}

		if (channel_target_ > 0)
		{
			grain_collection_->channel_param_set(channel_target_, param, type, value);
		}

		grain_collection_->param_set(target_, param, type, value);
	}

	void buffer_ref_message(const atoms& buffer_names, const gf_buffers type)
	{
		if (buffer_names.size() > 1)
		{
			for (int g = 0; g < grain_collection_->grains(); g++)
			{
				auto buffer_name = static_cast<std::string>(buffer_names[g % buffer_names.size()]);
				auto buf = grain_collection_->get_grain(g)->get_buffer(type);
				buf->set("");
				buf->set(buffer_name);
			}
			return;
		}
		auto buffer_name = static_cast<std::string>(buffer_names[0]);

		if (target_ > 0)
		{
			auto buf = grain_collection_->get_grain(target_ - 1)->get_buffer(type);
			buf->set(""); // This forces a refresh even if the name is the same
			buf->set(buffer_name);
			return;
		}
		for (int g = 0; g < grain_collection_->grains(); g++)
		{
			auto buf = grain_collection_->get_grain(g)->get_buffer(type);
			// To access ir must be converted to the correct type
			buf->set("");
			buf->set(buffer_name);
		}
	}


	atoms get_grain_params(gf_param_name param, gf_param_type type)
	{
		if (grain_collection_ == nullptr) return {};
		atoms values = {};
		values.resize(grain_collection_->grains());
		for (int i = 0; i < grain_collection_->grains(); i++)
		{
			values[i] = grain_collection_->param_get(i + 1, param, type);
		}
		return values;
	};

	atoms set_grain_params(atoms args, gf_param_name param, gf_param_type type)
	{
		if (grain_collection_ == nullptr) return args;
		if (args.size() <= 1)
		{
			grain_collection_->param_set(target_, param, type, (float)args[0]);
			return args;
		}

		for (int g = 0; g < grain_collection_->grains(); g++)
		{
			grain_collection_->param_set(g + 1, param, type, (float)args[g % args.size()]);
		}

		return args;
	};

	void try_set_attribute_or_message(const string& name, const atoms& args)
	{
		if (auto get = this->attributes().find(name); get != this->attributes().end())
		{
			get->second->set(args);
			return;
		}
		this->try_call(name, args);
		return;
	};

	void output_grain_info(symbol name, const atoms& data, outlet<>* max_outlet)
	{
		auto mess = atoms();
		mess.emplace_back(name);
		for (int g = 0; g < std::min(static_cast<int>(data.size()), static_cast<int>(n_grains)); g++)
		{
			mess.push_back(data[g]);
		}
		max_outlet->send(mess);
	}

	void update_grain_data(gf_io_config<>& config, const int max_grains)
	{
		if (!has_update_)
		{
			const auto current_grains = clamp(static_cast<int>(n_grains), 0, max_grains);
			for (int g = 0; g < current_grains; g++)
			{
				m_grain_state_[g] = io_config_.grain_state[g][0];
				m_grain_progress_[g] = io_config_.grain_progress[g][0];
				m_grain_playhead_[g] = io_config_.grain_playhead[g][0];
				m_grain_amp_[g] = io_config_.grain_amp[g][0];
				m_grain_envelope_[g] = io_config_.grain_envelope[g][0];
				m_grain_buffer_channel_[g] = io_config_.grain_buffer_channel[g][0];
				m_grain_stream_channel_[g] = io_config_.grain_stream_channel[g][0];
			}
			has_update_ = true;
		}
	}

	void grain_info_reset()
	{
		if (data_outlet == nullptr) return;
		output_grain_info("grainState", {0}, data_outlet);
		output_grain_info("grainPosition", {0}, data_outlet);
		output_grain_info("grainWindow", {0}, data_outlet);
		output_grain_info("grainAmp", {0}, data_outlet);
		output_grain_info("grainProgress", {0}, data_outlet);
		output_grain_info("grainBufferChannel", {0}, data_outlet);
		output_grain_info("grainStreamChannel", {0}, data_outlet);
	}

private:
	void use_default_envelope(const bool state, const int target)
	{
		if (target > 0)
		{
			grain_collection_->get_grain(target - 1)->use_default_envelope = state;
			if (state) grain_collection_->get_grain(target - 1)->get_buffer(gf_buffers::envelope)->set("");

			return;
		}
		for (int g = 0; g < grain_collection_->grains(); g++)
		{
			grain_collection_->get_grain(g)->use_default_envelope = state;;
			if (state) grain_collection_->get_grain(g)->get_buffer(gf_buffers::envelope)->set("");
			// To access ir must be converted to the correct type
		}
	}


	void output_all_grain_info(outlet<>* max_outlet)
	{
		if (max_outlet == nullptr) return;
		if (has_update_)
		{
			has_update_ = false;
			if (state)
			{
				output_grain_info("grainState", m_grain_state_, max_outlet);
				output_grain_info("grainPosition", m_grain_playhead_, max_outlet);
				output_grain_info("grainWindow", m_grain_envelope_, max_outlet);
				output_grain_info("grainAmp", m_grain_amp_, max_outlet);
				output_grain_info("grainProgress", m_grain_progress_, max_outlet);
				output_grain_info("grainBufferChannel", m_grain_buffer_channel_, max_outlet);
				output_grain_info("grainStreamChannel", m_grain_stream_channel_, max_outlet);
				m_grain_dict.clear();
				m_grain_dict.setArray("grainState", m_grain_state_);
				m_grain_dict.setArray("grainPosition", m_grain_playhead_);
				m_grain_dict.setArray("grainWindow", m_grain_envelope_);
				m_grain_dict.setArray("grainAmp", m_grain_amp_);
				m_grain_dict.setArray("grainProgress", m_grain_progress_);
				m_grain_dict.setArray("grainBufferChannel", m_grain_buffer_channel_);
				m_grain_dict.setArray("grainStreamChannel", m_grain_stream_channel_);

				output_grain_info("grainInfo", atoms{"dictionary", m_grain_dict.name()}, max_outlet);
			}
		}
	}

	void refresh_linked_attribute()
	{
		//This is needed to reflect internal changes-running touch in the setter causes a crash unfortunately
		if (!linked_params_dirty_)return;
		transpose.touch();
		transposeRandom.touch();
		transpose_offset.touch();

		rate.touch();
		rateRandom.touch();
		rateOffset.touch();

		glisson.touch();
		glisson_random.touch();
		glisson_offset.touch();

		glisson_st.touch();
		glisson_st_random.touch();
		glisson_st_offset.touch();

		delay.touch();
		delay_random.touch();
		delay_offset.touch();

		linked_params_dirty_ = false;
	}

	void refresh_all_attributes()
	{
		auto a = this->attributes();
		for (auto i = a.begin(); i != a.end(); ++i)
		{
			i->second->touch();
		}
	}

	void refresh_named_attributes(const std::string& name)
	{
		auto attr_map = this->attributes();
		if (const auto attr = attr_map.find(name); attr != attr_map.end())
		{
			attr->second->touch();
		}
	}


	/// <summary>
/// Forces a refresh of a type of buffer.
/// </summary>
	void buffer_refresh(const gf_buffers type)
	{
		if (grain_collection_ == nullptr) return;
		for (int g = 0; g < grain_collection_->grains(); g++)
		{
			const auto buf = grain_collection_->get_grain(g)->get_buffer(type);
			// To access ir must be converted to the correct type
			const auto name = buf->name();
			buf->set("");
			buf->set(name);
		}
	};

public:
	grainflow_base() : max_grains_(0), io_config_(), has_update_(false)
	{
		internal_update.delay(33);
	}


	int get_max_grains() const { return grain_collection_ != nullptr ? grain_collection_->grains() : 0; }


#pragma region ATTRIBUTES_PITCH_AND_RATE

#pragma region MAX_MESSAGES
	// Setup functions

	message<> setup{
		this,
		"setup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			init();
			return {};
		}
	};

	message<> maxclass_setup{
		this,
		"maxclass_setup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			max_class_setup(args);
			return {};
		}
	};

	message<> dspsetup{
		this,
		"dspsetup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			setup_dsp();
			return {};
		}
	};
#pragma endregion

	// Rate
	attribute<vector<number>> rate{
		this,
		"rate",
		{1},
		//description{"how fast a grain plays in relation to its normal playback rate"},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::rate, gf_param_type::base);
				//if(transpose.writable())transpose.touch();
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
				//if(transposeRandom.writable())transposeRandom.touch();
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
				//if(transposeOffset.writable())transposeOffset.touch();
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


	attribute<vector<number>> vibratoRate{
		this,
		"vibratoRate",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::vibrato_rate, gf_param_type::base);
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::vibrato_rate, gf_param_type::base);
			}
		},
		description{"Adds a unipolar random amount to the playback rate on each grains start."},
		category{"Pitch | Rate"},
		order{3},
	};
	attribute<vector<number>> vibratoRateRandom{
		this,
		"vibratoRateRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::vibrato_rate, gf_param_type::random);
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::vibrato_rate, gf_param_type::random);
			}
		},
		description{"Adds a unipolar random amount to the playback rate on each grains start."},
		category{"Pitch | Rate"},
		order{3},
	};
	attribute<vector<number>> vibratoRateOffset{
		this,
		"vibratoRateOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				return set_grain_params(args, gf_param_name::vibrato_rate, gf_param_type::offset);
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return get_grain_params(gf_param_name::vibrato_rate, gf_param_type::offset);
			}
		},
		description{"Adds a unipolar random amount to the playback rate on each grains start."},
		category{"Pitch | Rate"},
		order{3},
	};
	attribute<vector<number>> vibratoDepth{
		this,
		"vibratoDepth",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::vibrato_depth, gf_param_type::base);
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(gf_param_name::vibrato_depth, gf_param_type::base);
				return res;
			}
		},
		description{"Adds an amount to the playback rate based on the grains index."},
		category{"Pitch | Rate"},
		order{3},
	};
	attribute<vector<number>> vibratoDepthRandom{
		this,
		"vibratoDepthRandom",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::vibrato_depth, gf_param_type::random);
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(gf_param_name::vibrato_depth, gf_param_type::random);
				return res;
			}
		},
		description{"Adds an amount to the playback rate based on the grains index."},
		category{"Pitch | Rate"},
		order{3},
	};
	attribute<vector<number>> vibratoDepthOffset{
		this,
		"vibratoDepthOffset",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::vibrato_depth, gf_param_type::offset);
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				auto res = get_grain_params(gf_param_name::vibrato_depth, gf_param_type::offset);
				return res;
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
				//if(rate.writable())rate.touch();
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
				//if (rateRandom.writable())rateRandom.touch();
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

	attribute<vector<number>> density{
		this,
		"density",
		{1},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				set_grain_params(args, gf_param_name::density, gf_param_type::base);
				return args;
			}
		},
		getter{[this]() -> atoms { return get_grain_params(gf_param_name::density, gf_param_type::base); }},
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
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (grain_collection_ == nullptr) return args;
				grain_collection_->set_auto_overlap(static_cast<int>(args[0]) > 0);
				return args;
			}
		}

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
				if (auto_overlap) window_offset.touch();
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
				if (data_outlet != nullptr)data_outlet->send(atoms{"buf", buf->name()});
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
				grain_collection_->channels_set_interleaved(chans);
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

				if (args[0] == grain_collection_->grains()) return args;
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
				this->cerr << "Parameter " << reflection_string << " not found";
				break;
			case GF_RETURN_CODE::GF_ERR:
				this->cerr << "Stream not found";
				break;
			default:
				this->cerr << "Bad Return Code";
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
				this->cerr << "Parameter " << reflection_string << " not found" <<
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
				this->cerr << "Parameter " << reflection_string << " not found" <<
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
				this->cerr << "Parameter " << reflection_string << " not found" << "\n";
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
		"chan",
		"sets an attribute of message for all grains assigned to a buffer channel",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (grain_collection_ == nullptr) return args;
			const int chan = args[0];
			const std::string reflection_string = args[1];
			const float value = args[2];
			if (const auto res = grain_collection_->channel_param_set(chan, reflection_string, value); res !=
				GF_RETURN_CODE::GF_SUCCESS)
				this->cerr << "Parameter " << reflection_string << " not found" << "\n";
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
			use_default_envelope(false, target_);
			if (args.size() < 2)
			{
				buffer_ref_message({b_name}, gf_buffers::envelope);
				grain_message(1, gf_param_name::n_envelopes, gf_param_type::value);
				return {};
			}
			if (args[1].a_type == c74::max::A_FLOAT)
			{
				for (int i = 0; i < args.size() / 2; ++i)
				{
					grain_message((int)args[i * 2 + 1], gf_param_name::n_envelopes, gf_param_type::value);
					buffer_ref_message({args[i * 2]}, gf_buffers::envelope);
				}
				return {};
			}
			buffer_ref_message(args, gf_buffers::envelope);

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
			buffer_ref_message(args, gf_buffers::buffer);
			auto b = grain_collection_->get_buffer(gf_buffers::buffer);
			if (b != nullptr && data_outlet != nullptr) { data_outlet->send({"buf", b->name()}); };
			return {};
		}
	};

	message<> delay_buffer{
		this,
		"delayBuffer",
		"sets the buffer for delay modes 1 and 2",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			buffer_ref_message(args, gf_buffers::delay_buffer);
			return {};
		}
	};

	message<> window_buffer{
		this,
		"windowBuffer",
		"sets the buffer for window modes 1 and 2",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			buffer_ref_message(args, gf_buffers::window_buffer);
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
			buffer_ref_message(args, gf_buffers::rate_buffer);
			return {};
		}
	};

	message<> glisson_buffer{
		this,
		"glissonBuffer",
		"sets the buffer for glisson modes 1 and 2",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (args.size() < 1)
			{
				buffer_ref_message({" "}, gf_buffers::glisson_buffer);
				grain_message(0, gf_param_name::glisson_rows, gf_param_type::value);
				return {};
			}
			const auto b_name = static_cast<string>(args[0]);
			if (args.size() < 2)
			{
				buffer_ref_message(args, gf_buffers::glisson_buffer);
				grain_message(1, gf_param_name::glisson_rows, gf_param_type::value);
				return {};
			}
			if (args[1].a_type == c74::max::A_FLOAT)
			{
				for (int i = 0; i < args.size() / 2; ++i)
				{
					grain_message((int)args[i * 2 + 1], gf_param_name::n_envelopes, gf_param_type::value);
					buffer_ref_message({args[i * 2]}, gf_buffers::envelope);
				}
				return {};
			}
			buffer_ref_message({b_name}, gf_buffers::glisson_buffer);
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
			event_update();
			internal_update.delay(33);
			return {};
		},
	};
#pragma endregion
};
