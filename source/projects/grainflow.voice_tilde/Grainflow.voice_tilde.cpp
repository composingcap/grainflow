/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
#include "grainflow.h"
#include "c74_min.h"
#ifdef _WIN64
#include <omp.h>
#define USEOMP
#elif __APPLE__
#if TARGET_OS_MAC
#endif
#endif

using namespace c74::min;

long simplemc_multichanneloutputs(c74::max::t_object* x, long index, long count);
long simplemc_inputchanged(c74::max::t_object* x, long index, long count);

class grainflow_voice_tilde : public object<grainflow_voice_tilde>, public mc_operator<> {
private:
public:

	MIN_DESCRIPTION{ "the base object for grainflow" };
	MIN_TAGS{ "grainulation, msp, grainflow" };
	MIN_AUTHOR{ "Christopher Poovey" };
	MIN_RELATED{ "" };

	~grainflow_voice_tilde() {
		Cleanup();
	}

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
#pragma region DSP

	void operator()(audio_bundle input, audio_bundle output) {
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
#ifdef USEOMP
		//Pre proccess
#pragma omp parallel for
#endif
		for (int g = 0; g < _ngrains; g++) {
			//Vector Level operations

			Grainflow::GrainInfo* thisGrain = &grainInfo[g];
			buffer_lock<>	grainSamples(*(buffer_reference*)(thisGrain->bufferRef.get()));
			buffer_lock<>   envelopeSamples(*(buffer_reference*)(thisGrain->envelopeRef.get()));
			thisGrain->sampleRateAdjustment = _livemode ? 1 : grainSamples.samplerate() / samplerate();

			thisGrain->bufferFrames = grainSamples.valid() ? grainSamples.frame_count() : 0;
			thisGrain->oneOverBufferFrames = thisGrain->bufferFrames > 0 ? 1.0f / grainSamples.frame_count() : 0;

			//Determine the channel to pull from for each grain.
			int grainClock = grainClockCh + (g % input_chans[0]);
			int traversalPhasor = traversalPhasorCh + (g % input_chans[1]);
			int fm = fmCh + (g % input_chans[2]);
			int am = amCh + (g % input_chans[3]);

			size_t chan = grainSamples.valid() ? (thisGrain->bchan) % grainSamples.channel_count() : 0;
			double stream = thisGrain->stream;
			float windowPortion = std::clamp(1 - thisGrain->space.value, 0.0001f, 1.0f);

			//Sample level
			for (int v = 0; v < output.frame_count(); v++) {
				double thisGrainClock = fmod(in[grainClock][v] + thisGrain->window.value, 1) / windowPortion;
				thisGrainClock *= thisGrainClock <= 1;
				double thisTraversalPhasor = in[traversalPhasor][v];
				double thisFm = in[fm][v];
				double thisAm = in[am][v];
				GrainReset(thisGrain, thisGrainClock, thisTraversalPhasor, g);

				//Sample buffers
				auto tween = (float)fmod(thisGrain->sourceSample, 1);
				auto frame = size_t(thisGrain->sourceSample);

				//TODO how to make this more efficent? maybe memcopy in the outer loop?
				//We are using linear interpolation here because cosine interpolation has too much overhead
				auto sample = grainSamples.valid() ? grainSamples.lookup(frame, chan) * (1 - tween) + grainSamples.lookup((frame + 1), chan) * tween : 0;
				auto envelope = envelopeSamples.valid() ? GetEnvelopeValue(envelopeSamples, thisGrain, thisGrainClock) : 0;

				//Set correct data into each outlet
				out[g + grainOutput][v] = sample * 0.5f * envelope * (1 - thisAm) * thisGrain->amplitude.value;
				out[g + grainState][v] = thisGrainClock != 0;
				out[g + grainProgress][v] = thisGrainClock;
				out[g + grainPlayhead][v] = thisGrain->sourceSample * thisGrain->oneOverBufferFrames;
				out[g + grainAmp][v] = (1 - thisAm) * thisGrain->amplitude.value;
				out[g + grainEnvelope][v] = envelope;
				out[g + grainBufferChannel][v] = chan + 1;
				out[g + grainStreamChannel][v] = stream + 1;

				//Increment playhead
				Grainflow::Increment(thisGrain, thisFm, thisGrainClock);
			}
		}
	}

	float GetEnvelopeValue(buffer_lock<> buffer, Grainflow::GrainInfo* grain, float grainClock) {
		if (grain->nEnvelopes <= 1) {
			auto frame = size_t((grainClock * buffer.frame_count()));
			auto envelope = buffer.lookup(frame, 0);
			return envelope;
		}
		int sizePerEnvelope = buffer.frame_count() / grain->nEnvelopes;
		int env1 = (int)(grain->envelope.value * grain->nEnvelopes);
		int env2 = env1 + 1;
		float fade = grain->envelope.value * grain->nEnvelopes - env1;
		auto frame = size_t((grainClock * sizePerEnvelope));
		auto envelope = buffer.lookup((env1 * sizePerEnvelope + frame) % buffer.frame_count(), 0) * (1 - fade) + buffer.lookup((env2 * sizePerEnvelope + frame) % buffer.frame_count(), 0) * fade;
		return envelope;
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

		SampleParamBuffer(Grainflow::GFBuffers::delayBuffer, thisGrain, thisGrain->delay, g);
		thisGrain->sourceSample = (fmod((traversal + 10) * thisGrain->bufferFrames - thisGrain->delay.value, thisGrain->bufferFrames));
		SampleParamBuffer(Grainflow::GFBuffers::rateBuffer, thisGrain, thisGrain->rate, g);
		SampleParamBuffer(Grainflow::GFBuffers::windowBuffer, thisGrain, thisGrain->window, g);
		Grainflow::SampleParam(thisGrain->space, g);
		Grainflow::SampleParam(thisGrain->glisson, g);
		Grainflow::SampleParam(thisGrain->envelope, g);
		Grainflow::SampleParam(thisGrain->amplitude, g);
		Grainflow::SampleDensity(thisGrain);
		Grainflow::SampleDirection(thisGrain);

		return grainReset;
	}

#pragma endregion

	void SampleParamBuffer(Grainflow::GFBuffers bufferType, Grainflow::GrainInfo* grain, Grainflow::GfParam& param, int index) {
		auto buf = (buffer_reference*)Grainflow::GetBuffer(*grain, bufferType);
		if (param.mode == Grainflow::GfBufferMode::normal || buf == nullptr) {
			Grainflow::SampleParam(param, index);
			return;
		}
		buffer_lock<> paramBuf(*buf);
		if (!paramBuf.valid()) return;
		size_t frame = 0;
		if (param.mode == Grainflow::GfBufferMode::buffer_sequence) {
			frame = index % paramBuf.frame_count();
		}
		else if (param.mode == Grainflow::GfBufferMode::buffer_random) {
			frame = rd() % paramBuf.frame_count();
		}

		param.value = paramBuf.lookup(frame, 0);
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
				if (grainInfo[g].stream - 1 != _streamTarget) continue;
				Grainflow::GfParamSet(value, grainInfo[g], param, type);
			}
			return;
		}

		if (_channelTarget > 0) {
			for (int g = 0; g < maxGrains; g++) {
				if (grainInfo[g].bchan - 1 != _channelTarget) continue;
				Grainflow::GfParamSet(value, grainInfo[g], param, type);
			}
			return;
		}

		if (_target > 0) {
			if (_target >= maxGrains) return;
			Grainflow::GfParamSet(value, grainInfo[_target - 1], param, type);
			return;
		}
		for (int g = 0; g < maxGrains; g++) {
			Grainflow::GfParamSet(value, grainInfo[g], param, type);
		}
	};

	void BufferRefMessage(string bname, Grainflow::GFBuffers type) {
		if (bname.empty()) return;

		if (_target > 0) {
			auto buf = (buffer_reference*)Grainflow::GetBuffer(grainInfo[_target - 1], type);
			buf->set(""); //This forces a refresh even if the name is the same
			buf->set(bname);
			return;
		}
		for (int g = 0; g < maxGrains; g++) {
			auto buf = (buffer_reference*)Grainflow::GetBuffer(grainInfo[g], type); //To access ir must be converted to the correct type
			buf->set("");
			buf->set(bname);
		}
	}
	/// <summary>
	/// Forces a refresh of a type of buffer.
	/// </summary>
	void BufferRefresh(Grainflow::GFBuffers type) {
		for (int g = 0; g < maxGrains; g++) {
			auto buf = (buffer_reference*)Grainflow::GetBuffer(grainInfo[g], type); //To access ir must be converted to the correct type
			auto name = buf->name();
			buf->set("");
			buf->set(name);
		}
	};

	void Init() {
		for (int g = 0; g < maxGrains; g++) {
			Grainflow::SetBufferRef(grainInfo[g], Grainflow::GFBuffers::buffer, (int*)(new buffer_reference{ this }));
			Grainflow::SetBufferRef(grainInfo[g], Grainflow::GFBuffers::envelope, (int*)(new buffer_reference{ this }));
			Grainflow::SetBufferRef(grainInfo[g], Grainflow::GFBuffers::delayBuffer, (int*)(new buffer_reference{ this }));
			Grainflow::SetBufferRef(grainInfo[g], Grainflow::GFBuffers::windowBuffer, (int*)(new buffer_reference{ this }));
			Grainflow::SetBufferRef(grainInfo[g], Grainflow::GFBuffers::rateBuffer, (int*)(new buffer_reference{ this }));

			buffer_reference* env = (buffer_reference*)Grainflow::GetBuffer(grainInfo[g], Grainflow::GFBuffers::envelope);
			env->set(envArg);
			buffer_reference* buf = (buffer_reference*)Grainflow::GetBuffer(grainInfo[g], Grainflow::GFBuffers::buffer);
			buf->set(bufferArg);
		}
	}

	void Cleanup() {
		delete[] grainInfo;
	}

	void Reinit(int grains) {
		Cleanup();
		grainInfo = new Grainflow::GrainInfo[grains];
		maxGrains = grains;
		Init();
	}

#pragma region MAX_ARGS
	argument<symbol> buffer{ this, "buf", "Buffer~ from which to read.",
	MIN_ARGUMENT_FUNCTION {
	bufferArg = (string)arg;
}
	};

	argument<int> grains{ this, "number-of-grains", "max number of grains",
		MIN_ARGUMENT_FUNCTION {
			maxGrains = (int)arg;
			if (maxGrains < 1) maxGrains = 2;
			grainInfo = new Grainflow::GrainInfo[maxGrains];

			_ngrains = 0;
			}
	};

	argument<symbol> env_arg{ this, "env", "default envelope buffer.",
		MIN_ARGUMENT_FUNCTION {
		envArg = (string)arg;
		}
	};

#pragma endregion
#pragma region MAX_MESSAGES
	//Setup functions

	message<> setup{ this, "setup",
MIN_FUNCTION {
	Init();

return {};
}
	};
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
		oneOverSamplerate = 1 / samplerate();
		BufferRefresh(Grainflow::GFBuffers::buffer); //This is needed so grainflow live can load buffers correctly.

		return {};
	}
	};

	//Grainflow Messages

	//Rate
	message<> rate{ this, "rate", "how fast a grain plays in relation to its normal playback rate",
	MIN_FUNCTION {
			GrainMessage(args[0], Grainflow::GfParamName::rate, Grainflow::GfParamType::base);
			return{};
	} };
	message<> rateRandom{ this, "rateRandom", "randomization depth for the rate parameter",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::GfParamName::rate, Grainflow::GfParamType::random);
	return{};
	} };
	message<> rateOffset{ this, "rateOffset", "the amount rate to apply rate based on grain index",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::GfParamName::rate, Grainflow::GfParamType::offset);
	return{};
	} };

	message<> transpose{ this, "transpose", "control rate in semitones",
		MIN_FUNCTION{
			GrainMessage(Grainflow::PitchToRate((float)args[0]), Grainflow::GfParamName::rate, Grainflow::GfParamType::base);
			return{};
			}
	};
	message<> transposeRandom{ this, "transposeRandom", "randomization depth for the the transpose parameter",
		MIN_FUNCTION{
			auto transpose = (abs(Grainflow::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
			GrainMessage(transpose, Grainflow::GfParamName::rate, Grainflow::GfParamType::random);
			return{};
			}
	};
	message<> transposeOffset{ this, "transposeOffset", "the amount of transposition to apply rate based on grain index",
	MIN_FUNCTION{
		auto transpose = (abs(Grainflow::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
		GrainMessage(transpose, Grainflow::GfParamName::rate, Grainflow::GfParamType::offset);
		return{};
		}
	};

	//glisson
	message<> glisson{ this, "glisson", "how much the pitch will change over the life of the grain based on rate",
	MIN_FUNCTION {
			GrainMessage(args[0], Grainflow::GfParamName::glisson, Grainflow::GfParamType::base);
			return{};
	} };
	message<> glissonRandom{ this, "glissonRandom", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::GfParamName::glisson, Grainflow::GfParamType::random);
	return{};
	} };
	message<> glissonOffset{ this, "glissonOffset", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::GfParamName::glisson, Grainflow::GfParamType::offset);
	return{};
	} };

	message<> glissonSt{ this, "glissonSt", "controls glisson in semitones",
	MIN_FUNCTION{
		GrainMessage(Grainflow::PitchToRate((float)args[0]) - 1, Grainflow::GfParamName::glisson, Grainflow::GfParamType::base);
		return{};
		}
	};
	message<> glissonStRandom{ this, "glissonStRandom", "",
		MIN_FUNCTION{
			auto transpose =(abs(Grainflow::PitchToRate((float)args[0]))-1) * (((float)args[0] > 0) * 2 - 1);
			GrainMessage(transpose, Grainflow::GfParamName::glisson, Grainflow::GfParamType::random);
			return{};
			}
	};
	message<> glissonStOffset{ this, "glissonStOffset", "",
	MIN_FUNCTION{
		auto transpose = (abs(Grainflow::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
		GrainMessage(transpose, Grainflow::GfParamName::glisson, Grainflow::GfParamType::offset);
		return{};
		}
	};
	message<> direction{ this, "direction", "",
	MIN_FUNCTION{
		GrainMessage((float)args[0], Grainflow::GfParamName::direction, Grainflow::GfParamType::base);
		return{};
	}
	};

	//amp
	message<> ampMess{ this, "amp", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::GfParamName::amplitude, Grainflow::GfParamType::base);
		return{};
	} };
	message<> ampRandom{ this, "ampRandom", "",
	MIN_FUNCTION {
		GrainMessage(-(float)args[0], Grainflow::GfParamName::amplitude, Grainflow::GfParamType::random);
		return{};
	} };
	message<> ampOffseet{ this, "ampOffset", "",
	MIN_FUNCTION {
		GrainMessage(-(float)args[0], Grainflow::GfParamName::amplitude, Grainflow::GfParamType::offset);
		return{};
	} };

	//delay
	message<> delay{ this, "delay", "the amound grains are delayed in ms",
	MIN_FUNCTION {
		auto value = (float)args[0] * 0.001f * samplerate();
		GrainMessage(value, Grainflow::GfParamName::delay, Grainflow::GfParamType::base);
		return{};
	} };
	message<> delayRandom{ this, "delayRandom", "",
	MIN_FUNCTION {
			auto value = (float)args[0] * 0.001f * samplerate();
			GrainMessage(value, Grainflow::GfParamName::delay, Grainflow::GfParamType::random);

	return{};
	} };
	message<> delayOffset{ this, "delayOffset", "",
	MIN_FUNCTION {
			auto value = (float)args[0] * 0.001f * samplerate();
			GrainMessage(value, Grainflow::GfParamName::delay, Grainflow::GfParamType::offset);

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
			GrainMessage(args[0], Grainflow::GfParamName::window, Grainflow::GfParamType::base);
			return{};
	} };
	message<> windowRandom{ this, "windowRandom", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::GfParamName::window, Grainflow::GfParamType::random);
	return{};
	} };
	message<> windowOffset{ this, "windowOffset", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::GfParamName::window, Grainflow::GfParamType::offset);
	return{};
	} };

	//Space
	message<> space{ this, "space", "the amound of emty space at the end of each grains as a ratio of the total grain size",
	MIN_FUNCTION {
			GrainMessage(args[0], Grainflow::GfParamName::space, Grainflow::GfParamType::base);
			return{};
	} };
	message<> spaceRandom{ this, "spaceRandom", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::GfParamName::space, Grainflow::GfParamType::random);
	return{};
	} };
	message<> spaceOffset{ this, "spaceOffset", "",
	MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::GfParamName::space, Grainflow::GfParamType::offset);
	return{};
	} };

	//Streams

	message<> streamSet{ this, "streamSet", "",
		MIN_FUNCTION{
			string modestr = args[0];
			_nstreams = args[1];
			if (_nstreams < 1) return{};
			Grainflow::GfStreamSetType mode = Grainflow::GfStreamSetType::automaticStreams;
			if (modestr == "auto") mode = Grainflow::GfStreamSetType::automaticStreams;
			else if (modestr == "per")  mode = Grainflow::GfStreamSetType::perStreams;
			else if (modestr == "random") mode = Grainflow::GfStreamSetType::randomStreams;
			else return{};

			Grainflow::StreamSet(grainInfo, maxGrains, mode, _nstreams);
			return{};
	} };

	message<> streamTarget{ this, "streamTarget", "messages will target grains assigned to this stream",
		MIN_FUNCTION{
			_target = 0;
			_channelTarget = 0;
			_streamTarget = args[0];
			return{};
	} };

	message<> streamMsg{ this, "stream", "",
	MIN_FUNCTION{
			float value = 0;
			int lastTarget = _target;
			int lastStream = _streamTarget;
			int lastChannelTarget = _channelTarget;
			_channelTarget = 0;
			_streamTarget = args[0];
			for (int s = 0; s < _nstreams; s++) {
				value = args[2];
				for (int g = 0; g < maxGrains; g++) {
					if (grainInfo[g].stream != s) continue;
					_target = g;
					this->try_call(args[1], value);
				}
			}
			_target = lastTarget;
			_streamTarget = lastStream;
			_channelTarget = lastChannelTarget;
			return{};
			} };

	message<> streamDeviate{ this, "streamDeviate", "will deviate any parameter based on streams",
		MIN_FUNCTION{
			float value = 0;
			int lastTarget = _target;
			int lastStream = _streamTarget;
			int lastChannelTarget = _channelTarget;
			_channelTarget = 0;
			_streamTarget = 0;
			for (int s = 0; s < _nstreams; s++) {
				value = Grainflow::Deviate(args[1], args[2]);
				for (int g = 0; g < maxGrains; g++) {
					if (grainInfo[g].stream != s) continue;
					_target = g;
					this->try_call((string)args[0], value);
				}
			}
			_target = lastTarget;
			_streamTarget = lastStream;
			_channelTarget = lastChannelTarget;

			return{};
			}
	};

	message<> streamSpread{ this, "streamSpread", "will create evenly spaced values between each number based on streams",
	MIN_FUNCTION{
			float value = 0;
			int lastTarget = _target;
			int lastStream = _streamTarget;
			int lastChannelTarget = _channelTarget;
			_streamTarget = 0;
			_channelTarget = 0;
			for (int s = 0; s < _nstreams; s++) {
				value = Grainflow::Lerp(args[1], args[2], (float)s / _nstreams);
				for (int g = 0; g < maxGrains; g++) {
					if (grainInfo[g].stream != s) continue;
					_target = g;
					this->try_call((string)args[0], value);
				}
			}
			_target = lastTarget;
			_streamTarget = lastStream;
			_channelTarget = lastChannelTarget;
			return{};
			} };

	//Buffer Channels
	message<> bufChans{ this, "bufChans", "",
		MIN_FUNCTION{
			int chans = args[0];
			for (int g = 0; g < maxGrains; g++) {
				grainInfo[g].bchan = g % chans;
			}

			return{};
		} };

	message<> bufChan{ this, "bufChan", "",
		MIN_FUNCTION{
			int g = 0;
			int chan = 0;
			if (args.size() == 1) {
				g = _target - 1;
				chan = args[0];
			}
			else {
				g = (int)args[0] - 1;
				chan = args[1];
			}

			if (g >= maxGrains || g < 0) return{};
			grainInfo[g].bchan = chan - 1;

		return{};
		} };

	message<> gchan{ this, "gchan", "",
		MIN_FUNCTION{
			float value = 0;
			int lastTarget = _target;
			int lastStream = _streamTarget;
			int lastChannelTarget = _channelTarget;
			_channelTarget = args[0];
			_streamTarget = 0;
			_target = 0;
			value = args[2];
				for (int g = 0; g < maxGrains; g++) {
					this->try_call((string)args[1], value);
				}

			_target = lastTarget;
			_streamTarget = lastStream;
			_channelTarget = lastChannelTarget;
			return{};

		return{};
		} };

	//State

	message<> density{ this, "density", "the probability a grain will play",
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

	message<> ngrains{ this,"ngrains", "the number of active grains",
		MIN_FUNCTION {
			_ngrains = (int)(args[0]) <= maxGrains ? (int)(args[0]) : maxGrains;
			return{};
			} };

	//Param Modes
	message<> delayMode{ this, "delayMode", "sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		MIN_FUNCTION{
			GrainMessage(args[0], Grainflow::GfParamName::delay, Grainflow::GfParamType::mode);
			return{};
		} };
	message<> rateMode{ this, "rateMode", "sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		MIN_FUNCTION{
			GrainMessage(args[0], Grainflow::GfParamName::rate, Grainflow::GfParamType::mode);
		return{};
		} };
	message<> windowMode{ this, "windowMode", "sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		MIN_FUNCTION{
			GrainMessage(args[0], Grainflow::GfParamName::window, Grainflow::GfParamType::mode);
		return{};
		} };

	//Envelope
	message<> env{ this, "env","sets the envelope buffer",
		MIN_FUNCTION {
			string bname = (string)args[0];
			BufferRefMessage(bname, Grainflow::GFBuffers::envelope);
			if (args.size() < 2) {
				GrainMessage(1, Grainflow::GfParamName::nEnvelopes, Grainflow::GfParamType::base);
			}
			GrainMessage((int)args[1], Grainflow::GfParamName::nEnvelopes, Grainflow::GfParamType::base);
		return{};
		} };

	message<> envPosition{ this, "envPosition","sets the 2D envelope position",
		MIN_FUNCTION {
		GrainMessage(args[0], Grainflow::GfParamName::envelopePosition, Grainflow::GfParamType::base);
		return{};
		} };

	message<> envPositionOffset{ this, "envPositionOffset","sets the 2D envelope position",
	MIN_FUNCTION {
	GrainMessage(args[0], Grainflow::GfParamName::envelopePosition, Grainflow::GfParamType::offset);
	return{};
	} };

	message<> envPositionRandom{ this, "envPositionRandom","sets the 2D envelope position",
	MIN_FUNCTION {
	GrainMessage(args[0], Grainflow::GfParamName::envelopePosition, Grainflow::GfParamType::random);
	return{};
	} };

	//Buffeers
	message<> buf{ this, "buf","sets the granulation buffer",
		MIN_FUNCTION {
			string bname = (string)args[0];
			BufferRefMessage(bname, Grainflow::GFBuffers::buffer);

			return{};
		} };
	message<> delayBuffer{ this, "delayBuffer", "sets the buffer for delay modes 1 and 2",
		MIN_FUNCTION{
			string bname = (string)args[0];
			BufferRefMessage(bname, Grainflow::GFBuffers::delayBuffer);
			return{};
		} };

	message<> windowBuffer{ this, "windowBuffer", "sets the buffer for window modes 1 and 2",
		MIN_FUNCTION{
			string bname = (string)args[0];
			BufferRefMessage(bname, Grainflow::GFBuffers::windowBuffer);
			return{};
		} };

	message<> rateBuffer{ this, "rateBuffer", "sets the buffer for rate modes 1 and 2",
		MIN_FUNCTION{
			string bname = (string)args[0];
			BufferRefMessage(bname, Grainflow::GFBuffers::rateBuffer);
			return{};
		} };

	message<> done{ this, "done","",
	MIN_FUNCTION {
		return{};
	} };

	message<> voices{ this, "voices","",
		MIN_FUNCTION {
			int grains = args[0];
			if (grains < 1) return{};
			Reinit(grains);
			return{};
		} };

	message<> liveMode{ this, "liveMode","",
		MIN_FUNCTION {
			_livemode = (int)args[0] > 0;
			return{};
		} };

#pragma endregion
#pragma region MAX_ATTR
	//Attributes go here

#pragma endregion
	int GetMaxGrains() { return maxGrains; }
	int input_chans[4] = { 0,0,0,0 };
	int maxGrains = 0;
private:
	Grainflow::GrainInfo* grainInfo = nullptr;
	string bufferArg;
	string envArg;

	int _ngrains = 0;
	float oneOverSamplerate = 1;

	int _target = 0;
	int _streamTarget = 0;
	int _channelTarget = 0;
	int _nstreams = 0;
	bool _livemode = 0;
	std::random_device rd;
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