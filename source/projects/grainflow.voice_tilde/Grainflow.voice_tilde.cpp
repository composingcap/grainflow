/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
#include "grainflowMax.h"
#include "c74_min.h"

using namespace c74::min;
using namespace Grainflow;

long simplemc_multichanneloutputs(c74::max::t_object *x, long index, long count);
long simplemc_inputchanged(c74::max::t_object *x, long index, long count);

struct IoConfig
{
	double **in;
	double **out;
	int grainClockCh = 0;
	int traversalPhasorCh;
	int fmCh;
	int amCh;
	int grainOutput = 0;
	int grainState;
	int grainProgress;
	int grainPlayhead;
	int grainAmp;
	int grainEnvelope;
	int grainBufferChannel;
	int grainStreamChannel;

	int grainClock;
	int traversalPhasor;
	int fm;
	int am;

	bool livemode;

	int blockSize;
};

class grainflow_voice_tilde : public object<grainflow_voice_tilde>, public mc_operator<>
{

private:
	MspGrain *grainInfo = nullptr;
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
	IoConfig _ioConfig;

public:
	MIN_DESCRIPTION{"the base object for grainflow"};
	MIN_TAGS{"grainulation, msp, grainflow"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{""};

	int GetMaxGrains() { return maxGrains; }
	int input_chans[4] = {0, 0, 0, 0};
	int maxGrains = 0;

	~grainflow_voice_tilde()
	{
		Cleanup();
	}

#pragma region MAX_IO
	inlet<> grainClock{this, "(multichannelsignal) phasor input", "multichannelsignal"};
	inlet<> traversalPhasor{this, "(multichannelsignal) where the grain should be sampled from the buffer", "multichannelsignal"};
	inlet<> fm{this, "(multichannelsignal) grain playback rate", "multichannelsignal"};
	inlet<> am{this, "(multichannelsignal) amplitude modulation", "multichannelsignal"};

	outlet<> output{this, "(multichannel) grain output", "multichannelsignal"};
	outlet<> grainState{this, "(multichannel) grainState", "multichannelsignal"};
	outlet<> grainProgress{this, "(multichannel) grainProgress", "multichannelsignal"};
	outlet<> grainPlayhead{this, "(multichannel) grainPlayhead", "multichannelsignal"};
	outlet<> grainAmp{this, "(multichannel) grainAmp (abs)", "multichannelsignal"};
	outlet<> envelope{this, "(multichannel) grainEnvelope", "multichannelsignal"};
	outlet<> channel{this, "(multichannel) channel", "multichannelsignal"};
	outlet<> stream{this, "(multichannel) stream", "multichannelsignal"};
#pragma endregion
#pragma region DSP

	void operator()(audio_bundle input, audio_bundle output)
	{

		_ioConfig.livemode = _livemode;
		_ioConfig.in = input.samples();
		_ioConfig.out = output.samples();

		// These varible indicate the starting indices of each mc parameter
		_ioConfig.grainClockCh = 0;
		_ioConfig.traversalPhasorCh = input_chans[0];
		_ioConfig.fmCh = _ioConfig.traversalPhasorCh + input_chans[1];
		_ioConfig.amCh = _ioConfig.fmCh + input_chans[2];

		// Ouputs are constant because they are based on the max grain count
		_ioConfig.grainOutput = 0;
		_ioConfig.grainState = 1 * maxGrains;
		_ioConfig.grainProgress = 2 * maxGrains;
		_ioConfig.grainPlayhead = 3 * maxGrains;
		_ioConfig.grainAmp = 4 * maxGrains;
		_ioConfig.grainEnvelope = 5 * maxGrains;
		_ioConfig.grainBufferChannel = 6 * maxGrains;
		_ioConfig.grainStreamChannel = 7 * maxGrains;

		// Clear unused channels or we will get garbage
		_ioConfig.blockSize = output.frame_count();
		for (int g = 0; g < (maxGrains) * 8; g++)
		{
			memset(_ioConfig.out[g], double(0), sizeof(double) * _ioConfig.blockSize);
		}

		for (int g = 0; g < _ngrains; g++)
		{
			_ioConfig.grainClock = _ioConfig.grainClockCh + (g % input_chans[0]);
			_ioConfig.traversalPhasor = _ioConfig.traversalPhasorCh + (g % input_chans[1]);
			_ioConfig.fm = _ioConfig.fmCh + (g % input_chans[2]);
			_ioConfig.am = _ioConfig.amCh + (g % input_chans[3]);
			ProccessGrain(&grainInfo[g], g, _ioConfig);
		}
	}

	void ProccessGrain(MspGrain *thisGrain, int g, IoConfig ioConfig)
	{
		buffer_lock<> grainSamples(*(thisGrain->GetBuffer(GFBuffers::buffer)));
		buffer_lock<> envelopeSamples(*(thisGrain->GetBuffer(GFBuffers::envelope)));
		thisGrain->SetSampleRateAdjustment(ioConfig.livemode ? 1 : grainSamples.samplerate() / samplerate());
		thisGrain->SetBufferFrames(grainSamples.valid() ? grainSamples.frame_count() : 1);

		// Determine the channel to pull from for each grain.

		size_t chan = grainSamples.valid() ? (thisGrain->bchan) % grainSamples.channel_count() : 0;
		double stream = thisGrain->stream;
		float windowPortion = std::clamp(1 - thisGrain->ParamGet(GfParamName::space), 0.0001f, 1.0f);
		// Check grain clock to make sure it is moving
		if (ioConfig.in[ioConfig.grainClock][0] == ioConfig.in[ioConfig.grainClock][1])
			return;
		// Sample level
		for (int v = 0; v < ioConfig.blockSize; v++)
		{
			double thisGrainClock = ioConfig.in[ioConfig.grainClock][v] + thisGrain->ParamGet(GfParamName::window);
			thisGrainClock -= (int)thisGrainClock;
			thisGrainClock /= windowPortion;
			thisGrainClock *= thisGrainClock <= 1;
			double thisTraversalPhasor = ioConfig.in[ioConfig.traversalPhasor][v];
			double thisFm = ioConfig.in[ioConfig.fm][v];
			double thisAm = ioConfig.in[ioConfig.am][v];
			thisGrain->GrainReset(thisGrainClock, thisTraversalPhasor);

			// Sample buffers
			auto sample = thisGrain->SampleBuffer(grainSamples);
			auto envelope = thisGrain->SampleEnvelope(envelopeSamples, thisGrainClock);
			auto amp = thisGrain->ParamGet(GfParamName::amplitude);
			// Set correct data into each outlet
			ioConfig.out[g + ioConfig.grainOutput][v] = sample * 0.5f * envelope * (1 - thisAm) * amp;
			ioConfig.out[g + ioConfig.grainState][v] = thisGrainClock != 0;
			ioConfig.out[g + ioConfig.grainProgress][v] = thisGrainClock;
			ioConfig.out[g + ioConfig.grainPlayhead][v] = thisGrain->sourceSample * thisGrain->oneOverBufferFrames;
			ioConfig.out[g + ioConfig.grainAmp][v] = (1 - thisAm) * amp;
			ioConfig.out[g + ioConfig.grainEnvelope][v] = envelope;
			ioConfig.out[g + ioConfig.grainBufferChannel][v] = chan + 1;
			ioConfig.out[g + ioConfig.grainStreamChannel][v] = stream + 1;

			// Increment playhead
			thisGrain->Increment(thisFm, thisGrainClock);
		}		
		
	}

#pragma endregion

	/// <summary>
	/// Helper to make targeting grains easier
	/// </summary>
	/// <param name="value"></param>
	/// <param name="param"></param>
	/// <param name="type"></param>
	void GrainMessage(float value, GfParamName param, GfParamType type)
	{
		if (_streamTarget > 0)
		{
			for (int g = 0; g < maxGrains; g++)
			{
				if (grainInfo[g].stream - 1 != _streamTarget)
					continue;
				grainInfo[g].ParamSet(value, param, type);
			}
			return;
		}

		if (_channelTarget > 0)
		{
			for (int g = 0; g < maxGrains; g++)
			{
				if (grainInfo[g].bchan - 1 != _channelTarget)
					continue;
				grainInfo[g].ParamSet(value, param, type);
			}
			return;
		}

		if (_target > 0)
		{
			if (_target >= maxGrains)
				return;
			for (int g = 0; g < maxGrains; g++)
			{
				grainInfo[g].ParamSet(value, param, type);
			}

			return;
		}
		for (int g = 0; g < maxGrains; g++)
		{
			grainInfo[g].ParamSet(value, param, type);
		}
	};

	void BufferRefMessage(string bname, GFBuffers type)
	{
		if (bname.empty())
			return;

		if (_target > 0)
		{
			auto buf = grainInfo[_target - 1].GetBuffer(type);
			buf->set(""); // This forces a refresh even if the name is the same
			buf->set(bname);
			return;
		}
		for (int g = 0; g < maxGrains; g++)
		{
			auto buf = grainInfo[g].GetBuffer(type); // To access ir must be converted to the correct type
			buf->set("");
			buf->set(bname);
		}
	}
	/// <summary>
	/// Forces a refresh of a type of buffer.
	/// </summary>
	void BufferRefresh(GFBuffers type)
	{
		for (int g = 0; g < maxGrains; g++)
		{
			auto buf = grainInfo[g].GetBuffer(type); // To access ir must be converted to the correct type
			auto name = buf->name();
			buf->set("");
			buf->set(name);
		}
	};

	void Init()
	{
		for (int g = 0; g < maxGrains; g++)
		{
			grainInfo[g].SetIndex(g);
			grainInfo[g].SetBuffer(GFBuffers::buffer, (new buffer_reference(this, nullptr, false)));
			grainInfo[g].SetBuffer(GFBuffers::envelope, (new buffer_reference(this, nullptr, false)));
			grainInfo[g].SetBuffer(GFBuffers::delayBuffer, (new buffer_reference(this, nullptr, false)));
			grainInfo[g].SetBuffer(GFBuffers::windowBuffer, (new buffer_reference(this, nullptr, false)));
			grainInfo[g].SetBuffer(GFBuffers::rateBuffer, (new buffer_reference(this, nullptr, false)));

			auto env = grainInfo[g].GetBuffer(GFBuffers::envelope);
			env->set(envArg);
			auto buf = grainInfo[g].GetBuffer(GFBuffers::buffer);
			buf->set(bufferArg);
		}
	}

	void Cleanup()
	{
		delete[] grainInfo;
	}

	void Reinit(int grains)
	{
		Cleanup();
		grainInfo = new MspGrain[grains];
		maxGrains = grains;
		Init();
	}

#pragma region MAX_ARGS
	argument<symbol> buffer{this, "buf", "Buffer~ from which to read.",
							MIN_ARGUMENT_FUNCTION{
								bufferArg = (string)arg;
}
}
;

argument<int> grains{this, "number-of-grains", "max number of grains",
					 MIN_ARGUMENT_FUNCTION{
						 maxGrains = (int)arg;
if (maxGrains < 1)
	maxGrains = 2;
grainInfo = new MspGrain[maxGrains];

_ngrains = 0;
}
}
;

argument<symbol> env_arg{this, "env", "default envelope buffer.",
						 MIN_ARGUMENT_FUNCTION{
							 envArg = (string)arg;
}
}
;

#pragma endregion
#pragma region MAX_MESSAGES
// Setup functions

message<> setup{this, "setup",
				MIN_FUNCTION{
					Init();

return {};
}
}
;
message<> maxclass_setup{this, "maxclass_setup",
						 MIN_FUNCTION{
							 c74::max::t_class *c = args[0];
c74::max::class_addmethod(c, (c74::max::method)simplemc_multichanneloutputs, "multichanneloutputs", c74::max::A_CANT, 0);
c74::max::class_addmethod(c, (c74::max::method)simplemc_inputchanged,
						  "inputchanged", c74::max::A_CANT, 0);
return {};
}
}
;

message<> dspsetup{this, "dspsetup",
				   MIN_FUNCTION{
					   oneOverSamplerate = 1 / samplerate();
BufferRefresh(GFBuffers::buffer); // This is needed so grainflow live can load buffers correctly.

return {};
}
}
;

// Grainflow Messages

// Rate
message<> rate{this, "rate", "how fast a grain plays in relation to its normal playback rate",
			   MIN_FUNCTION{
				   GrainMessage(args[0], GfParamName::rate, GfParamType::base);
return {};
}
}
;
message<> rateRandom{this, "rateRandom", "randomization depth for the rate parameter",
					 MIN_FUNCTION{
						 GrainMessage(args[0], GfParamName::rate, GfParamType::random);
return {};
}
}
;
message<> rateOffset{this, "rateOffset", "the amount rate to apply rate based on grain index",
					 MIN_FUNCTION{
						 GrainMessage(args[0], GfParamName::rate, GfParamType::offset);
return {};
}
}
;

message<> transpose{this, "transpose", "control rate in semitones",
					MIN_FUNCTION{
						GrainMessage(GfUtils::PitchToRate((float)args[0]), GfParamName::rate, GfParamType::base);
return {};
}
}
;
message<> transposeRandom{this, "transposeRandom", "randomization depth for the the transpose parameter",
						  MIN_FUNCTION{
							  auto transpose = (abs(GfUtils::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
GrainMessage(transpose, GfParamName::rate, GfParamType::random);
return {};
}
}
;
message<> transposeOffset{this, "transposeOffset", "the amount of transposition to apply rate based on grain index",
						  MIN_FUNCTION{
							  auto transpose = (abs(GfUtils::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
GrainMessage(transpose, GfParamName::rate, GfParamType::offset);
return {};
}
}
;

// glisson
message<> glisson{this, "glisson", "how much the pitch will change over the life of the grain based on rate",
				  MIN_FUNCTION{
					  GrainMessage(args[0], GfParamName::glisson, GfParamType::base);
return {};
}
}
;
message<> glissonRandom{this, "glissonRandom", "",
						MIN_FUNCTION{
							GrainMessage(args[0], GfParamName::glisson, GfParamType::random);
return {};
}
}
;
message<> glissonOffset{this, "glissonOffset", "",
						MIN_FUNCTION{
							GrainMessage(args[0], GfParamName::glisson, GfParamType::offset);
return {};
}
}
;

message<> glissonSt{this, "glissonSt", "controls glisson in semitones",
					MIN_FUNCTION{
						GrainMessage(GfUtils::PitchToRate((float)args[0]) - 1, GfParamName::glisson, GfParamType::base);
return {};
}
}
;
message<> glissonStRandom{this, "glissonStRandom", "",
						  MIN_FUNCTION{
							  auto transpose = (abs(GfUtils::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
GrainMessage(transpose, GfParamName::glisson, GfParamType::random);
return {};
}
}
;
message<> glissonStOffset{this, "glissonStOffset", "",
						  MIN_FUNCTION{
							  auto transpose = (abs(GfUtils::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
GrainMessage(transpose, GfParamName::glisson, GfParamType::offset);
return {};
}
}
;
message<> direction{this, "direction", "",
					MIN_FUNCTION{
						GrainMessage((float)args[0], GfParamName::direction, GfParamType::base);
return {};
}
}
;

// amp
message<> ampMess{this, "amp", "",
				  MIN_FUNCTION{
					  GrainMessage(args[0], GfParamName::amplitude, GfParamType::base);
return {};
}
}
;
message<> ampRandom{this, "ampRandom", "",
					MIN_FUNCTION{
						GrainMessage(-(float)args[0], GfParamName::amplitude, GfParamType::random);
return {};
}
}
;
message<> ampOffseet{this, "ampOffset", "",
					 MIN_FUNCTION{
						 GrainMessage(-(float)args[0], GfParamName::amplitude, GfParamType::offset);
return {};
}
}
;

// delay
message<> delay{this, "delay", "the amound grains are delayed in ms",
				MIN_FUNCTION{
					auto value = (float)args[0] * 0.001f * samplerate();
GrainMessage(value, GfParamName::delay, GfParamType::base);
return {};
}
}
;
message<> delayRandom{this, "delayRandom", "",
					  MIN_FUNCTION{
						  auto value = (float)args[0] * 0.001f * samplerate();
GrainMessage(value, GfParamName::delay, GfParamType::random);

return {};
}
}
;
message<> delayOffset{this, "delayOffset", "",
					  MIN_FUNCTION{
						  auto value = (float)args[0] * 0.001f * samplerate();
GrainMessage(value, GfParamName::delay, GfParamType::offset);

return {};
}
}
;

// Targets
message<> grain{this, "g", "sends a message to a single grain",
				MIN_FUNCTION{
					_target = args[0];
_streamTarget = 0;
return {};
}
}
;

message<> target{this, "target", "sends a message to a single grain",
				 MIN_FUNCTION{
					 _target = args[0];
_streamTarget = 0;
return {};
}
}
;

// Window
message<> window{this, "window", "sets the position of the window",
				 MIN_FUNCTION{
					 GrainMessage(args[0], GfParamName::window, GfParamType::base);
return {};
}
}
;
message<> windowRandom{this, "windowRandom", "",
					   MIN_FUNCTION{
						   GrainMessage(args[0], GfParamName::window, GfParamType::random);
return {};
}
}
;
message<> windowOffset{this, "windowOffset", "",
					   MIN_FUNCTION{
						   GrainMessage(args[0], GfParamName::window, GfParamType::offset);
return {};
}
}
;

// Space
message<> space{this, "space", "the amound of emty space at the end of each grains as a ratio of the total grain size",
				MIN_FUNCTION{
					GrainMessage(args[0], GfParamName::space, GfParamType::base);
return {};
}
}
;
message<> spaceRandom{this, "spaceRandom", "",
					  MIN_FUNCTION{
						  GrainMessage(args[0], GfParamName::space, GfParamType::random);
return {};
}
}
;
message<> spaceOffset{this, "spaceOffset", "",
					  MIN_FUNCTION{
						  GrainMessage(args[0], GfParamName::space, GfParamType::offset);
return {};
}
}
;

// Streams

message<> streamSet{this, "streamSet", "",
					MIN_FUNCTION{
						string modestr = args[0];
_nstreams = args[1];
if (_nstreams < 1)
	return {};
GfStreamSetType mode = GfStreamSetType::automaticStreams;
if (modestr == "auto")
	mode = GfStreamSetType::automaticStreams;
else if (modestr == "per")
	mode = GfStreamSetType::perStreams;
else if (modestr == "random")
	mode = GfStreamSetType::randomStreams;
else
	return {};
for (int g = 0; g < maxGrains; g++)
{
	grainInfo[g].StreamSet(maxGrains, mode, _nstreams);
}
return {};
}
}
;

message<> streamTarget{this, "streamTarget", "messages will target grains assigned to this stream",
					   MIN_FUNCTION{
						   _target = 0;
_channelTarget = 0;
_streamTarget = args[0];
return {};
}
}
;

message<> streamMsg{this, "stream", "",
					MIN_FUNCTION{
						float value = 0;
int lastTarget = _target;
int lastStream = _streamTarget;
int lastChannelTarget = _channelTarget;
_channelTarget = 0;
_streamTarget = args[0];
for (int s = 0; s < _nstreams; s++)
{
	value = args[2];
	for (int g = 0; g < maxGrains; g++)
	{
		if (grainInfo[g].stream != s)
			continue;
		_target = g;
		this->try_call(args[1], value);
	}
}
_target = lastTarget;
_streamTarget = lastStream;
_channelTarget = lastChannelTarget;
return {};
}
}
;

message<> streamDeviate{this, "streamDeviate", "will deviate any parameter based on streams",
						MIN_FUNCTION{
							float value = 0;
int lastTarget = _target;
int lastStream = _streamTarget;
int lastChannelTarget = _channelTarget;
_channelTarget = 0;
_streamTarget = 0;
for (int s = 0; s < _nstreams; s++)
{
	value = GfUtils::Deviate(args[1], args[2]);
	for (int g = 0; g < maxGrains; g++)
	{
		if (grainInfo[g].stream != s)
			continue;
		_target = g;
		this->try_call((string)args[0], value);
	}
}
_target = lastTarget;
_streamTarget = lastStream;
_channelTarget = lastChannelTarget;

return {};
}
}
;

message<> streamSpread{this, "streamSpread", "will create evenly spaced values between each number based on streams",
					   MIN_FUNCTION{
						   float value = 0;
int lastTarget = _target;
int lastStream = _streamTarget;
int lastChannelTarget = _channelTarget;
_streamTarget = 0;
_channelTarget = 0;
for (int s = 0; s < _nstreams; s++)
{
	value = GfUtils::Lerp(args[1], args[2], (float)s / _nstreams);
	for (int g = 0; g < maxGrains; g++)
	{
		if (grainInfo[g].stream != s)
			continue;
		_target = g;
		this->try_call((string)args[0], value);
	}
}
_target = lastTarget;
_streamTarget = lastStream;
_channelTarget = lastChannelTarget;
return {};
}
}
;

// Buffer Channels
message<> bufChans{this, "bufChans", "",
				   MIN_FUNCTION{
					   int chans = args[0];
for (int g = 0; g < maxGrains; g++)
{
	grainInfo[g].bchan = g % chans;
}

return {};
}
}
;

message<> bufChan{this, "bufChan", "",
				  MIN_FUNCTION{
					  int g = 0;
int chan = 0;
if (args.size() == 1)
{
	g = _target - 1;
	chan = args[0];
}
else
{
	g = (int)args[0] - 1;
	chan = args[1];
}

if (g >= maxGrains || g < 0)
	return {};
grainInfo[g].bchan = chan - 1;

return {};
}
}
;

message<> gchan{this, "gchan", "",
				MIN_FUNCTION{
					float value = 0;
int lastTarget = _target;
int lastStream = _streamTarget;
int lastChannelTarget = _channelTarget;
_channelTarget = args[0];
_streamTarget = 0;
_target = 0;
value = args[2];
for (int g = 0; g < maxGrains; g++)
{
	this->try_call((string)args[1], value);
}

_target = lastTarget;
_streamTarget = lastStream;
_channelTarget = lastChannelTarget;
return {};

return {};
}
}
;

// State

message<> density{this, "density", "the probability a grain will play",
				  MIN_FUNCTION{
					  if (_target > 0){
						  grainInfo[_target - 1].density = args[0];
return {};
}
for (int g = 0; g < maxGrains; g++)
{
	grainInfo[g].density = args[0];
}
return {};
}
}
;

message<> ngrains{this, "ngrains", "the number of active grains",
				  MIN_FUNCTION{
					  _ngrains = (int)(args[0]) <= maxGrains ? (int)(args[0]) : maxGrains;
return {};
}
}
;

// Param Modes
message<> delayMode{this, "delayMode", "sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
					MIN_FUNCTION{
						GrainMessage(args[0], GfParamName::delay, GfParamType::mode);
return {};
}
}
;
message<> rateMode{this, "rateMode", "sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
				   MIN_FUNCTION{
					   GrainMessage(args[0], GfParamName::rate, GfParamType::mode);
return {};
}
}
;
message<> windowMode{this, "windowMode", "sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
					 MIN_FUNCTION{
						 GrainMessage(args[0], GfParamName::window, GfParamType::mode);
return {};
}
}
;

// Envelope
message<> env{this, "env", "sets the envelope buffer",
			  MIN_FUNCTION{
				  string bname = (string)args[0];
BufferRefMessage(bname, GFBuffers::envelope);
if (args.size() < 2)
{
	GrainMessage(1, GfParamName::nEnvelopes, GfParamType::value);
}
GrainMessage((int)args[1], GfParamName::nEnvelopes, GfParamType::value);
return {};
}
}
;

message<> envPosition{this, "envPosition", "sets the 2D envelope position",
					  MIN_FUNCTION{
						  GrainMessage(args[0], GfParamName::envelopePosition, GfParamType::base);
return {};
}
}
;

message<> envPositionOffset{this, "envPositionOffset", "sets the 2D envelope position",
							MIN_FUNCTION{
								GrainMessage(args[0], GfParamName::envelopePosition, GfParamType::offset);
return {};
}
}
;

message<> envPositionRandom{this, "envPositionRandom", "sets the 2D envelope position",
							MIN_FUNCTION{
								GrainMessage(args[0], GfParamName::envelopePosition, GfParamType::random);
return {};
}
}
;

// Buffeers
message<> buf{this, "buf", "sets the granulation buffer",
			  MIN_FUNCTION{
				  string bname = (string)args[0];
BufferRefMessage(bname, GFBuffers::buffer);

return {};
}
}
;
message<> delayBuffer{this, "delayBuffer", "sets the buffer for delay modes 1 and 2",
					  MIN_FUNCTION{
						  string bname = (string)args[0];
BufferRefMessage(bname, GFBuffers::delayBuffer);
return {};
}
}
;

message<> windowBuffer{this, "windowBuffer", "sets the buffer for window modes 1 and 2",
					   MIN_FUNCTION{
						   string bname = (string)args[0];
BufferRefMessage(bname, GFBuffers::windowBuffer);
return {};
}
}
;

message<> rateBuffer{this, "rateBuffer", "sets the buffer for rate modes 1 and 2",
					 MIN_FUNCTION{
						 string bname = (string)args[0];
BufferRefMessage(bname, GFBuffers::rateBuffer);
return {};
}
}
;

message<> done{this, "done", "",
			   MIN_FUNCTION{
				   return {};
}
}
;

message<> voices{this, "voices", "",
				 MIN_FUNCTION{
					 int grains = args[0];
if (grains < 1)
	return {};
Reinit(grains);
return {};
}
}
;

message<> liveMode{this, "liveMode", "",
				   MIN_FUNCTION{
					   _livemode = (int)args[0] > 0;
return {};
}
}
;

#pragma endregion
#pragma region MAX_ATTR
// Attributes go here

#pragma endregion
}
;

MIN_EXTERNAL(grainflow_voice_tilde);

#pragma region MAX_API_EX
/// <summary>
/// Allows for the use of mc outlets. Must be added as an event at the objects startup
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long simplemc_multichanneloutputs(c74::max::t_object *x, long index, long count)
{
	minwrap<grainflow_voice_tilde> *ob = (minwrap<grainflow_voice_tilde> *)(x);
	return ob->m_min_object.GetMaxGrains();
}
/// <summary>
/// Allows for the use of mc inputs. Must be added as an event at the objects startup. Also requires an input channels regester
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long simplemc_inputchanged(c74::max::t_object *x, long index, long count)
{
	minwrap<grainflow_voice_tilde> *ob = (minwrap<grainflow_voice_tilde> *)(x);
	// auto chan_number = ob->m_min_object.GetMaxGrains(); //We should check for bonus channels and handle it
	ob->m_min_object.input_chans[index] = count > 0 ? count : 1; // Tells us how many channels are in each inlet
	return false;
}
#pragma endregion