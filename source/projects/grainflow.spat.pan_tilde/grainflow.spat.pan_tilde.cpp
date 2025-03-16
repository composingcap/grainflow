/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
///
///
#include "grainflow.spat.pan_tilde.h"

using namespace c74::min;
using namespace Grainflow;

grainflow_spat_pan_tilde::grainflow_spat_pan_tilde()
{
	panner_ = std::make_unique<gf_spat_pan<INTERNALBLOCK, double>>();
}

grainflow_spat_pan_tilde::~grainflow_spat_pan_tilde()
{
	panner_.release();
}

#pragma region DSP

void grainflow_spat_pan_tilde::operator()(audio_bundle input, audio_bundle output)
{
	output.clear();
	panner_->process(input.samples(), output.samples(), input.channel_count(), output.channel_count(),
	                 input.frame_count());
}

#pragma endregion


void grainflow_spat_pan_tilde::config_from_dictionary(dict& config)
{
	if (dummy()) { return; }
	if (!config.valid()) { return; }
	if (config.keyCount() <= 0) { return; }
	try
	{
		auto entryRef = config.at("speakers");
		if (!entryRef.empty())
		{
			auto speakersDictAtom = *entryRef.begin();
			dict speakerDict(speakersDictAtom);
			speakers_from_dict(speakerDict);
		}
		entryRef = config.at("distanceThreshold");
		if (!entryRef.empty())
		{
			if (entryRef.begin()->a_type == c74::max::A_FLOAT)
			{
				a_distance_thresh = entryRef.begin()->a_w.w_float;
			}
			else if (entryRef.begin()->a_type == c74::max::A_LONG)
			{
				a_distance_thresh = entryRef.begin()->a_w.w_long;
			}
		}
		entryRef = config.at("exponent");
		if (!entryRef.empty())
		{
			if (entryRef.begin()->a_type == c74::max::A_FLOAT)
			{
				a_exponent = entryRef.begin()->a_w.w_float;
			}
			else if (entryRef.begin()->a_type == c74::max::A_LONG)
			{
				a_exponent = entryRef.begin()->a_w.w_long;
			}
		}
		entryRef = config.at("dimMask");
		if (!entryRef.empty())
		{
			atoms dim_mask;
			for (auto& entry : entryRef)
			{
				if (entry.a_type == c74::max::A_FLOAT)
				{
					dim_mask.push_back(entry.a_w.w_float);
				}
				else if (entry.a_type == c74::max::A_LONG)
				{
					dim_mask.push_back(entry.a_w.w_long);
				}
				if (dim_mask.size() > 0) { a_dim_mask.set(dim_mask); }
			}
		}
	}
	catch (...)
	{
		cerr << "Invalid input dictionary" << endl;
	}
}

void grainflow_spat_pan_tilde::speakers_from_dict(dict& speakerDict)
{
	std::vector<std::array<float, 3>> speakerPositions;
	speakerPositions.resize(speakerDict.keyCount());
	for (int i = 0; i < speakerDict.keyCount(); ++i)
	{
		auto speakerKey = speakerDict.getKeys()[i];
		auto entry = speakerDict.at(speakerKey);
		int dim = 0;
		string keyString(speakerKey->s_name);
		//Check if it can be a number
		if (std::find_if(keyString.begin(), keyString.end(), [](unsigned char c) { return !std::isdigit(c); })
			!= keyString.end())
		{
			continue;
		}
		int idx = std::stoi(keyString);
		if (idx >= speakerPositions.size()) { continue; }
		for (auto& num : entry)
		{
			if (num.a_type == c74::max::A_FLOAT)
			{
				speakerPositions[idx][dim] = num.a_w.w_float;
			}
			else if (num.a_type == c74::max::A_LONG)
			{
				speakerPositions[idx][dim] = num.a_w.w_long;
			}

			++dim;
			if (dim >= 3) break;
		}
	}
	atoms speakersArg;
	speakersArg.resize(speakerPositions.size() * 3);
	for (int i = 0; i < speakerPositions.size(); ++i)
	{
		speakersArg[i * 3] = speakerPositions[i][0];
		speakersArg[i * 3 + 1] = speakerPositions[i][1];
		speakersArg[i * 3 + 2] = speakerPositions[i][2];
	}
	if (speakersArg.empty()) return;
	a_speakers.set(speakersArg);
	a_speakers.touch();
}

atoms grainflow_spat_pan_tilde::output_dictionary(const c74::min::atoms& args, const int inlet)
{
	if (panner_ != nullptr)
	{
		std::vector<float> speakerAmps;
		std::vector<float> grainAmps;
		std::map<int, std::array<float, 3>> speakerPositions;
		std::map<int, std::array<float, 3>> grainPositions;

		panner_->get_data_outputs(speakerAmps, grainAmps, speakerPositions, grainPositions);
		if (!speakerAmps.empty())
		{
			outputTmp_.assign(speakerAmps.begin(), speakerAmps.end());
			output_dict.setArray("speakerAmps", outputTmp_);
			outputTmp_.assign(grainAmps.begin(), grainAmps.end());
			output_dict.setArray("grainAmps", outputTmp_);

			dict grainPositionsDict;
			dict speakerPositionsDict;
			for (auto& entry : grainPositions)
			{
				outputTmp_.assign(entry.second.begin(), entry.second.end());
				grainPositionsDict.setArray(
					entry.first, outputTmp_);
			}
			for (auto& entry : speakerPositions)
			{
				outputTmp_.assign(entry.second.begin(), entry.second.end());
				speakerPositionsDict.setArray(
					entry.first, outputTmp_);
			}
			output_dict["grainPositions"] = grainPositionsDict;
			output_dict["speakerPositions"] = speakerPositionsDict;

			//output_dict["exponent"] = a_exponent.get();
			//output_dict["distanceThreshold"] = a_distance_thresh.get();
			//output_dict.setArray("dimMask", atoms{a_dim_mask.get().begin(), a_dim_mask.get().end()});


			info.send({"dictionary", output_dict.name()});
		}
	}
	output_data.delay(33);
	return {};
};


#pragma region MAX_API_EX

/// <summary>
/// Allows for the use of mc inputs. Must be added as an event at the objects startup. Also requires an input channels register
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long grainflow_spat_pan_tilde::simplemc_inputchanged(c74::max::t_object* x, long ch, long count)
{
	if (ch != 0) return 1;
	minwrap<grainflow_spat_pan_tilde>* ob = reinterpret_cast<minwrap<grainflow_spat_pan_tilde>*>(x);

	int chans = count > 0 ? count : 1;
	ob->m_min_object.input_chans = chans; // Tells us how many channels are in each inlet
	return chans;
}

long grainflow_spat_pan_tilde::simplemc_output(c74::max::t_object* x, long ch, long count)
{
	minwrap<grainflow_spat_pan_tilde>* ob = reinterpret_cast<minwrap<grainflow_spat_pan_tilde>*>(x);
	return ob->m_min_object.output_channels_value;
}
#pragma endregion

MIN_EXTERNAL(grainflow_spat_pan_tilde);
