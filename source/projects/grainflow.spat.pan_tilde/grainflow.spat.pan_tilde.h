#pragma once
#include <c74_min.h>
#include "gfUtils.h"
#include "gfPanner.h"
#include <mutex>
#include <atomic>
#include  <cmath>
#include <vector>
#include "gfSpat.h"

constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;


class grainflow_spat_pan_tilde : public object<grainflow_spat_pan_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{"An easy way to pan grains generated with grainflow."};
	MIN_TAGS{"granulation, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{"grainflow.util.multipan~,""grainflow.spatpan~"};

private:
	enum_map spat_pan_mode_range = {"vbap", "dbap"};

	double oneOverSamplerate = 1;
	unique_ptr<gf_spat_pan<INTERNALBLOCK, double>> panner_;
	dict output_dict{symbol(true)};
	atoms outputTmp_;

public:
	int input_chans = 1;
	int output_channels_value = 1;
#pragma region MAX_IO
	inlet<> grains{this, "(multichannelsignal) grains", "multichannelsignal"};

	outlet<> output{this, "(multichannel) panned grains", "multichannelsignal"};
	outlet<> info{this, "(dictionary) grain and speaker info", "dictionary"};


#pragma endregion
#pragma region DSP

	grainflow_spat_pan_tilde();
	~grainflow_spat_pan_tilde();
	void config_from_dictionary(dict& config);
	void speakers_from_dict(dict& speakerDict);
	void operator()(audio_bundle input, audio_bundle output);
	static long simplemc_inputchanged(c74::max::t_object* x, long g, long count);
	static long simplemc_output(c74::max::t_object* x, long g, long count);
	atoms output_dictionary(const c74::min::atoms& args, const int inlet);

#pragma endregion

	timer<timer_options::defer_delivery> output_data{
		this,
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			return output_dictionary(args, inlet);
		}
	};


#pragma region MAX_MESSAGES
	// Setup functions

	message<> setup{
		this,
		"setup",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			output_data.delay(0);
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
			if (dummy()) { return {}; }
			oneOverSamplerate = 1 / samplerate();
			if (panner_ != nullptr) panner_->recalculate_all_gains(true);
			return {};
		}
	};

	attribute<spat_pan_mode> a_mode{
		this, "mode", spat_pan_mode::vbap, spat_pan_mode_range,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || panner_ == nullptr) { return args; }
				panner_->pan_mode = args[0];
				panner_->recalculate_all_gains();
				return args;
			}
		},
		description{
			"Panning algorithm used to determine gains. vbap selects the top N speakers and evenly pans between them. dpab also selects the top N speakers, but adjusts volume based on distance"
		}
	};

	attribute<vector<number>> a_speakers{
		this,
		"speakers",
		{0},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || panner_ == nullptr) { return args; }
				if (args.size() < 1)
				{
					panner_->clear_speaker_position();
					output_channels_value = 1;
					return {0};
				}
				panner_->clear_speaker_position();
				for (int i = 0; i < args.size() / 3; ++i)
				{
					auto pos = std::array<float, 3>{
						static_cast<float>(args[0 + i * 3]), static_cast<float>(args[1 + i * 3]),
						static_cast<float>(args[2 + i * 3])
					};
					panner_->set_speaker_position(i, pos);
				}
				panner_->recalculate_all_gains();
				output_channels_value = args.size() / 3;
				return args;
			}
		}
	};

	attribute<int> a_n_speakers{
		this,
		"speakersPerSource",
		3,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || panner_ == nullptr) { return args; }
				auto val = std::max(0, static_cast<int>(args[0]));
				if (val == panner_->n_speakers) { return {val}; }
				panner_->n_speakers = val;
				panner_->recalculate_all_gains();
				return {val};
			}
		},
		getter{
			[this]()-> atoms
			{
				if (dummy() || panner_ == nullptr) { return {3}; }
				return {panner_->n_speakers};
			}
		},
		description{"maximum number of speakers that can receive signal from a single source"}
	};

	attribute<number> a_distance_thresh{
		this,
		"distanceThreshold",
		2,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || panner_ == nullptr) { return args; }
				auto val = std::max(0.0, static_cast<number>(args[0]));
				if (std::abs(val - panner_->distance_thresh) < 0.00001) { return {val}; }
				panner_->distance_thresh = val;
				panner_->recalculate_all_gains();
				return {val};
			}
		},
		getter{

			[this]()-> atoms
			{
				if (dummy() || panner_ == nullptr) { return {2}; }
				return {panner_->distance_thresh};
			}
		},
		description{"the maximum distance where a source can be rendered by a speaker"}
	};

	attribute<number> a_exponent{
		this,
		"exponent",
		0,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || panner_ == nullptr) { return args; }
				auto val = gf_utils::pitch_to_rate(static_cast<float>(args[0]) * 12.0f);
				if (std::abs(val - panner_->exponent) < 0.00001) { return args; }
				panner_->exponent = val;
				panner_->recalculate_all_gains();
				return args;
			}
		},
		getter{
			[this]()-> atoms
			{
				if (dummy() || panner_ == nullptr) { return {0}; }
				return {gf_utils::round(gf_utils::rate_to_pitch(panner_->exponent) / 12.0, 0.0001)};
			}
		},
		description{"an exponent determining the falloff curve. 0 is linear"},
	};

	attribute<vector<number>> a_dim_mask{
		this,
		"dimMask",
		{1, 1, 1},
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (dummy() || panner_ == nullptr) { return args; }
				std::array<float, 3> mask = {0, 0, 0};
				const int arg_count = args.size();
				for (int i = 0; i < std::min(arg_count, 3); ++i)
				{
					mask[i] = std::clamp(static_cast<float>(args[i]), 0.0f, 1.0f);
				}


				panner_->dim_mask = mask;
				return {mask[0], mask[1], mask[2]};
			}
		}
	};


	message<> m_setSourcePosition{
		this,
		"xyz",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (args.size() < 3) { return args; }
			auto pos = std::array<float, 3>{
				static_cast<float>(args[1]), static_cast<float>(args[2]), static_cast<float>(args[3])
			};
			panner_->set_source_position((int)args[0], pos);

			return args;
		}
	};

	message<> m_clearSources{
		this,
		"clearSources",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			panner_->clear_source_positions();
			return args;
		}
	};


	message<> m_dictionary{
		this,
		"dictionary",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			if (dummy() || panner_ == nullptr) { return args; }
			dict config{args[0]};
			config_from_dictionary(config);
			return args;
		}
	};


#pragma endregion
};
