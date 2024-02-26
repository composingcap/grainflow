/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
/// 

#include "grainflow.h"
#include "c74_min.h"

using namespace c74::min;


long simplemc_multichanneloutputs(c74::max::t_object* x, long index, long count);
long simplemc_inputchanged(c74::max::t_object* x, long index, long count);
void ProccessGrains(audio_bundle& input, audio_bundle& output, const int subloopSize, const int maxGrains);
void GrainMessage(float value, Grainflow::GfParamName param, Grainflow::GfParamType type);

class grainflow_voice_tilde : public object<grainflow_voice_tilde>, public mc_operator<> {

public:

	MIN_DESCRIPTION{ "the base object for grainflow" };
	MIN_TAGS{ "grainulation, msp, grainflow" };
	MIN_AUTHOR{ "Christopher Poovey" };
	MIN_RELATED{ "" };

#pragma region MAX_IO
	inlet<>  grainClock{ this,  "(multichannelsignal) phasor input", "multichannelsignal" };
	inlet<>  traversalPhasor{ this,  "(multichannelsignal) where the grain should be sampled from the buffer", "multichannelsignal" };
	inlet<>  fm{ this,  "(multichannelsignal) grain playback rate", "multichannelsignal" };
	inlet<>  am{ this,  "(multichannelsignal) amplitude modulation", "multichannelsignal" };

	outlet<> output{ this, "(multichannel) grain output", "multichannelsignal" };
	outlet<> grainState{ this, "(multichannel) grainState", "multichannelsignal" };
	outlet<> grainProgress{ this, "(multichannel) grainProgress", "multichannelsignal" };
	outlet<> grainPlayhead{ this, "(multichannel) grainPlayhead", "multichannelsignal" };
	outlet<> grainAmp{ this, "(multichannel) grainAmp (abs)", "multichannelsignal" };
	outlet<> envelope{ this, "(multichannel) grainEnvelope", "multichannelsignal" };
	outlet<> channel{ this, "(multichannel) channel", "multichannelsignal" };
	outlet<> stream{ this, "(multichannel) stream", "multichannelsignal" };
#pragma endregion

	buffer_reference envelopeBuffer{ this };
	Grainflow::GrainInfo* grainInfo = nullptr;

	string bufferArg;



	~grainflow_voice_tilde() {
		for (int g = 0; g < maxGrains; g++) {
			//delete (buffer_reference*)(grainInfo[g].bufferRef); //must explicitly delete int* members
		}
		delete[] grainInfo;
	}

	void operator()(audio_bundle input, audio_bundle output) {

		//auto grainClock = input.samples(0);
		//auto traversalPhasor = input.samples(1);
		//auto fm = input.samples(2);
		//auto am = input.samples(3);
		auto in = input.samples();
		auto out = output.samples();

		//These varible indicate the starting indices of each mc parameter
		int grainClockCh = 0;
		int traversalPhasorCh = input_chans[0];
		int fmCh = traversalPhasorCh + input_chans[1];
		int amCh = fmCh + input_chans[2];

		//Ouputs are constant because they are based on the max grain count
		const int grainOutput = 0;
		const int grainState = 1 * maxGrains;
		const int grainProgress = 2 * maxGrains;
		const int grainPlayhead = 3 * maxGrains;
		const int grainAmp = 4 * maxGrains;
		const int grainEnvelope = 5 * maxGrains;
		const int grainBufferChannel = 6 * maxGrains;
		const int grainStreamChannel = 7 * maxGrains;




		//Clear unused channels or we will get garbage
		int size = output.frame_count();
		for (int g = 0; g < (maxGrains - _ngrains) * 8; g++) {
			memset(out[g], double(0), sizeof(double) * size);
		}

		//Pre proccess

		for (int g = 0; g < _ngrains; g++) {
			//Vector Level operations

			Grainflow::GrainInfo* thisGrain = &grainInfo[g];
			buffer_lock<>	grainSamples(*(buffer_reference*)(thisGrain->bufferRef));
			buffer_lock<>   envelopeSamples(*(buffer_reference*)(thisGrain->envelopeRef));
			if (!grainSamples.valid() || !envelopeSamples.valid()) continue;
			thisGrain->bufferFrames = grainSamples.frame_count();
			thisGrain->oneOverBufferFrames = 1.0f / grainSamples.frame_count();

			//Determine the channel to pull from for each grain.
			int grainClock = grainClockCh + (g % input_chans[0]);
			int traversalPhasor = traversalPhasorCh + (g % input_chans[1]);
			int fm = fmCh + (g % input_chans[2]);
			int am = amCh + (g % input_chans[3]);
			

			
			size_t chan = (thisGrain->bchan) % grainSamples.channel_count();
			double stream = thisGrain->stream;
			float windowPortion = std::clamp(1 - thisGrain->space.value, 0.0001f, 1.0f);

			//Sample level
			for (int i = 0; i < output.frame_count(); i += 16) {
				//If possible in the future, this setup should help with vecorization
				//Outer Loop				
				//Innter Loop
				for (int j = 0; j < 16; j++) {
					int v = i + j;

					double thisGrainClock = fmod(in[grainClock][v] + thisGrain->window.value, 1)/windowPortion;
					thisGrainClock *= thisGrainClock <= 1;
					double thisTraversalPhasor = in[traversalPhasor][v];
					double thisFm = in[fm][v];
					double thisAm = in[am][v];
					auto grainReset = GrainReset(thisGrain, thisGrainClock, thisTraversalPhasor, g);

					//Sample buffers
					auto tween = (float)fmod(thisGrain->sourceSample, 1);
					auto frame = size_t(thisGrain->sourceSample);
					auto frame2 = size_t((thisGrainClock * envelopeSamples.frame_count()));
					//TODO how to make this more efficent? maybe memcopy in the outer loop? 
					//We are using linear interpolation here because cosine interpolation has too much overhead 
					auto sample = grainSamples.lookup(frame, chan) * (1 - tween) + grainSamples.lookup((frame + 1), chan) * tween;
					auto envelope = envelopeSamples.lookup(frame2, 0);
					auto grainEnabled =  thisGrain->grainEnabled;

					//Set correct data into each outlet 
					out[g + grainOutput][v] = sample * 0.5f * envelope * (1 - thisAm)* grainEnabled;
					out[g + grainState][v] = grainReset* grainEnabled;
					out[g + grainProgress][v] = thisGrainClock* grainEnabled;
					out[g + grainPlayhead][v] = thisGrain->sourceSample * thisGrain->oneOverBufferFrames * grainEnabled;
					out[g + grainAmp][v] = (1 - thisAm) * grainEnabled;
					out[g + grainEnvelope][v] = envelope * grainEnabled;
					out[g + grainBufferChannel][v] = chan;
					out[g + grainStreamChannel][v] = stream+1;

					//Increment playhead 
					Grainflow::Increment(thisGrain, thisFm, thisGrainClock);
				}

			}
		}
	}

	/// <summary>
	/// Resets each grain when a zero crossing is detected 
	/// </summary>
	/// <param name="thisGrain">Grain info of the current grain</param>
	/// <param name="grainClock">The progress phasor for the current grain</param>
	/// <param name="traversal">playback position that will be set if reset</param>
	/// <param name="g">grain index</param>
	/// <returns></returns>
	bool GrainReset(Grainflow::GrainInfo* thisGrain, float grainClock, float traversal, int g) {
		bool grainReset = thisGrain->lastGrainClock > grainClock;
		if (!grainReset) return grainReset;

		Grainflow::SampleParam(thisGrain->delay, g);
		thisGrain->sourceSample = (fmod((traversal + 10) * thisGrain->bufferFrames - thisGrain->delay.value, thisGrain->bufferFrames));
		Grainflow::SampleParam(thisGrain->rate, g);
		Grainflow::SampleParam(thisGrain->window, g);
		Grainflow::SampleParam(thisGrain->space, g);
		Grainflow::SampleParam(thisGrain->glisson, g);
		Grainflow::SampleDensity(thisGrain);


		return grainReset;
	}

	/// <summary>
	/// Helper to make targeting grains easier
	/// </summary>
	/// <param name="value"></param>
	/// <param name="param"></param>
	/// <param name="type"></param>
	void GrainMessage(float value, Grainflow::GfParamName param, Grainflow::GfParamType type) {

		if (_streamTarget > 0) {
			for (int g = 0; g < maxGrains; g++) {
				if (grainInfo[g].stream != _streamTarget) continue;
				Grainflow::GfParamSet(value, grainInfo[g], param, type);
			}
			return;
		}

		if (_target > 0) {
			if (_target >= maxGrains) return;
			Grainflow::GfParamSet(value, grainInfo[_target-1], param, type);
			return;
		}
		for (int g = 0; g < maxGrains; g++) {
			Grainflow::GfParamSet(value, grainInfo[g], param, type);
		}
	};

#pragma region MAX_ARGS
	argument<symbol> buffer{ this, "buf", "Buffer~ from which to read.",
	MIN_ARGUMENT_FUNCTION {

	bufferArg = arg;
}
	};

	argument<symbol> grains{ this, "number-of-grains", "max number of grins",
MIN_ARGUMENT_FUNCTION {
	grainInfo = new Grainflow::GrainInfo[arg];
	maxGrains = arg;
	_ngrains = 0;
	for (int g = 0; g < maxGrains; g++) {
		grainInfo[g].bufferRef = (int*)(new buffer_reference{ this }); //For flexibility this location is stored as an int*
		grainInfo[g].envelopeRef = (int*)(new buffer_reference{ this });
		if (bufferArg.empty() || bufferArg == "0") continue;
		((buffer_reference*)(grainInfo[g].bufferRef))->set(bufferArg); //To access ir must be converted to the correct type
	}
	}
	};

#pragma endregion

#pragma region MAX_MESSAGES

	//Setup functions 
	message<> maxclass_setup{ this, "maxclass_setup",
	MIN_FUNCTION {
		c74::max::t_class * c = args[0];
		c74::max::class_addmethod(c, (c74::max::method)simplemc_multichanneloutputs, "multichanneloutputs", c74::max::A_CANT, 0);
		c74::max::class_addmethod(c, (c74::max::method)simplemc_inputchanged,
			"inputchanged", c74::max::A_CANT, 0);
		return {};
		}
	};

	message<> dspsetup{ this, "dspsetup",
	MIN_FUNCTION {
		dspSamplerate = args[0];
		oneOverSamplerate = 1 / dspSamplerate;
			for (int g = 0; g < _ngrains; g++) {
				buffer_lock<>	grainSamples(*(buffer_reference*)(grainInfo[g].bufferRef));
				if (!grainSamples.valid()) continue;
				//Grainflow::AssignAutoOverlap(&grainInfo[g], _ngrains, g); //This  is now handled through window offset
				Grainflow::SetSampleRateAdjustment(&grainInfo[g], dspSamplerate, grainSamples.samplerate());
		}

		return {};
	}
	};

	//Grainflow Messages 

	//Rate
	message<> rate{ this, "rate", "turns grainflow on and off",
	MIN_FUNCTION {
			GrainMessage(args[0], Grainflow::rate, Grainflow::base);
			return{};
	} };
	message<> rateRandom{ this, "rateRandom", "turns grainflow on and off",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::rate, Grainflow::random);
	return{};
	} };
	message<> rateOffset{ this, "rateOffset", "turns grainflow on and off",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::rate, Grainflow::offset);
	return{};
	} };

	//glisson
	message<> glisson{ this, "glisson", "turns grainflow on and off",
	MIN_FUNCTION {
			GrainMessage(args[0], Grainflow::glisson, Grainflow::base);
			return{};
	} };
	message<> glissonRandom{ this, "glissonRandom", "turns grainflow on and off",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::glisson, Grainflow::random);
	return{};
	} };
	message<> glissonOffset{ this, "glissonOffset", "turns grainflow on and off",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::glisson, Grainflow::offset);
	return{};
	} };

	//delay
	message<> delay{ this, "delay", "turns grainflow on and off",
	MIN_FUNCTION {
		auto value = (float)args[0] * 0.001f * dspSamplerate;
		GrainMessage(value, Grainflow::delay, Grainflow::base);
		return{};
	} };
	message<> delayRandom{ this, "delayRandom", "turns grainflow on and off",
	MIN_FUNCTION {
			auto value = (float)args[0] * 0.001f * dspSamplerate;
			GrainMessage(value, Grainflow::delay, Grainflow::random);

	return{};
	} };
	message<> delayOffset{ this, "delayOffset", "turns grainflow on and off",
	MIN_FUNCTION {
			auto value = (float)args[0] * 0.001f * dspSamplerate;
			GrainMessage(value, Grainflow::delay, Grainflow::offset);

	return{};
	} };
	//Targets 
	message<> grain{ this, "g", "sends a message to a single grain",
		MIN_FUNCTION{
			_target = args[0];
			_streamTarget = 0;
	return{};
	} };

	message<> target{ this, "target", "sends a message to a single grain",
	MIN_FUNCTION{
		_target = args[0];
		_streamTarget = 0;
return{};
} };

	//Window
	message<> window{ this, "window", "sets the position of the window",
	MIN_FUNCTION {
			GrainMessage(args[0], Grainflow::window, Grainflow::base);
			return{};
	} };
	message<> windowRandom{ this, "windowRandom", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::window, Grainflow::random);
	return{};
	} };
	message<> windowOffset{ this, "windowOffset", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::window, Grainflow::offset);
	return{};
	} };

	//Space
	message<> space{ this, "space", "sets the position of the window",
	MIN_FUNCTION {
			GrainMessage(args[0], Grainflow::space, Grainflow::base);
			return{};
	} };
	message<> spaceRandom{ this, "spaceRandom", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::space, Grainflow::random);
	return{};
	} };
	message<> spaceOffset{ this, "spaceOffset", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::space, Grainflow::offset);
	return{};
	} };

	//Streams

	message<> streamSet{ this, "streamSet", "",
		MIN_FUNCTION{
			string modestr = args[0];
			Grainflow::GfStreamSetType mode = Grainflow::automaticStreams;
			if (modestr == "per")  mode = Grainflow::perStreams;
			if (modestr == "random") mode = Grainflow::randomStreams;
			int nstreams = args[1];
			Grainflow::StreamSet(grainInfo, maxGrains, mode, nstreams);	
			return{};
	} };

	message<> streamMsg{ this, "stream", "",
	MIN_FUNCTION{
			_streamTarget = args[0];
			_target = 0;
			return{};

} };


	//State

	message<> density{ this, "density", "",
	MIN_FUNCTION {
		if (_target > 0) {
				grainInfo[_target - 1].density = args[0];
				return{};
			}
	for (int g = 0; g < maxGrains; g++) {
		grainInfo[g].density = args[0];
	}
		return{};
		} };

	message<> ngrains{ this,"ngrains", "",
		MIN_FUNCTION {
			_ngrains = (int)(args[0]) <= maxGrains ? (int)(args[0]) : maxGrains;
			gainAdjustment = _ngrains > 0 ? 1 / _ngrains : 0;
			return{};
			} };

	message<> env{ this, "env","",
		MIN_FUNCTION {
			string bname = args[0];
			if (bname.empty()) return{};
			if (_target > 0) {
				((buffer_reference*)(grainInfo[_target-1].envelopeRef))->set(bname);
				return{};
			}
			for (int g = 0; g < maxGrains; g++) {
				((buffer_reference*)(grainInfo[g].envelopeRef))->set(bname);
}
return{};
} };

	message<> buf{ this, "buf","",
		MIN_FUNCTION {
			string bname = args[0];
			if (bname.empty()) return{};

			if (_target > 0) {
				((buffer_reference*)(grainInfo[_target-1].bufferRef))->set(bname);
				return{};
			}
			for (int g = 0; g < maxGrains; g++) {

				((buffer_reference*)(grainInfo[g].bufferRef))->set(bname); //To access ir must be converted to the correct type
			}
			return{};
		} };

	message<> done{ this, "done","",
	MIN_FUNCTION {
		return{};
	} };

#pragma endregion
#pragma region MAX_ATTR
#pragma endregion


#if 0
	// UNUSED FUNCTIONS
	float SampleBuffer(buffer_lock<> buffer, float samplePosition) {
		auto frame = size_t(samplePosition);
		auto sample = buffer.lookup(frame, 0);
		auto nextSample = buffer.lookup((frame + 1) % buffer.frame_count(), 0);
		float tween = fmod(samplePosition, 1);
		//TODO: Interpolate      
		return CosineInterp(sample, nextSample, tween);

	}
	/// <summary>
	/// Two point cosine interpolation
	/// https://paulbourke.net/miscellaneous/interpolation/ 
	/// </summary>
	float CosineInterp(float y1, float y2, float mu) {
		float mu2 = (1 - cos(mu * PI)) / 2;
		return(y1 * (1 - mu2) + y2 * mu2);
	}
#endif

	int GetMaxGrains() {
		return maxGrains;
	}
	int input_chans[4];
	int maxGrains = 0;
private:
	int _ngrains = 0;
	float gainAdjustment = 1;
	int dspSamplerate = 441000;
	float oneOverSamplerate = 1;

	int _target = 0;
	int _streamTarget = 0;

};




MIN_EXTERNAL(grainflow_voice_tilde);

#pragma region MAX_API_EX
/// <summary>
/// Allows for the use of mc outlets. Must be added as an event at the objects startup
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long simplemc_multichanneloutputs(c74::max::t_object* x, long index, long count) {
	minwrap<grainflow_voice_tilde>* ob = (minwrap<grainflow_voice_tilde>*)(x);
	return ob->m_min_object.GetMaxGrains();
}
/// <summary>
/// Allows for the use of mc inputs. Must be added as an event at the objects startup. Also requires an input channels regester
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long simplemc_inputchanged(c74::max::t_object* x, long index, long count) {
	minwrap<grainflow_voice_tilde>* ob = (minwrap<grainflow_voice_tilde> *)(x);
	//auto chan_number = ob->m_min_object.GetMaxGrains(); //We should check for bonus channels and handle it
	ob->m_min_object.input_chans[index] = count > 0 ? count : 1; //Tells us how many channels are in each inlet 
	return false;
}
#pragma endregion