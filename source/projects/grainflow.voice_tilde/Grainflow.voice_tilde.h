#include "MspGrain.h"
#include "c74_min.h"
#include "gfUtils.h"

#define INTERNALBLOCK 32

using namespace c74::min;
using namespace Grainflow;
long simplemc_multichanneloutputs(c74::max::t_object* x, long index, long count);
long simplemc_inputchanged(c74::max::t_object* x, long index, long count);

struct IoConfig
{
	double** in;
	double** out;
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
public:
	MIN_DESCRIPTION{ "the base object for grainflow" };
	MIN_TAGS{ "grainulation, msp, grainflow" };
	MIN_AUTHOR{ "Christopher Poovey" };
	MIN_RELATED{ "" };

private:
	std::unique_ptr<MspGrain[]> grainInfo;
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
	double sampleIdTemp[INTERNALBLOCK];
	float densityTemp[INTERNALBLOCK];
	float ampTemp[INTERNALBLOCK];
	double tempDouble[INTERNALBLOCK];

public:
	int input_chans[4] = { 0, 0, 0, 0 };
	int maxGrains = 0;
#pragma region MAX_IO
	inlet<> grainClock{ this, "(multichannelsignal) phasor input", "multichannelsignal" };
	inlet<> traversalPhasor{ this, "(multichannelsignal) where the grain should be sampled from the buffer", "multichannelsignal" };
	inlet<> fm{ this, "(multichannelsignal) grain playback rate", "multichannelsignal" };
	inlet<> am{ this, "(multichannelsignal) amplitude modulation", "multichannelsignal" };

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

	int GetMaxGrains();
	~grainflow_voice_tilde();
	void operator()(audio_bundle input, audio_bundle output);
	void ProccessGrain(MspGrain* thisGrain, int g, IoConfig ioConfig);
	void GrainMessage(float value, GfParamName param, GfParamType type);
	void BufferRefMessage(string bname, GFBuffers type);
	void BufferRefresh(GFBuffers type);
	void Init();
	void Cleanup();
	void Reinit(int grains);

#pragma endregion






#pragma region MAX_ARGS
	argument<symbol> buffer{
		this,
		"buf",
		"Buffer~ from which to read.",
		[this](const c74::min::atom& arg) {
			bufferArg = (string)arg;
		}
	};

	argument<int> grains{ 
		this, 
		"number-of-grains", 
		"max number of grains",
		[this](const c74::min::atom& arg) {
			maxGrains = (int)arg;
			if (maxGrains < 1) maxGrains = 2;
			grainInfo = std::unique_ptr<MspGrain[]>(new MspGrain[maxGrains]);
			_ngrains = 0;
		}	
	};

	argument<symbol> env_arg{ 
		this,
		"env", 
		"default envelope buffer.",
		[this](const c74::min::atom& arg) {
			envArg = (string)arg;
		}
	};

#pragma endregion
#pragma region MAX_MESSAGES
	// Setup functions

	message<> setup{
		this,
		"setup",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		Init();
		return {};
		}
	};

	message<> maxclass_setup{
		this,
		"maxclass_setup",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			c74::max::t_class* c = args[0];
			c74::max::class_addmethod(c, (c74::max::method)simplemc_multichanneloutputs, "multichanneloutputs", c74::max::A_CANT, 0);
			c74::max::class_addmethod(c, (c74::max::method)simplemc_inputchanged, "inputchanged", c74::max::A_CANT, 0);
			return {};
		}
	};

	message<> dspsetup{
		this,
		"dspsetup",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			oneOverSamplerate = 1 / samplerate();
			BufferRefresh(GFBuffers::buffer); // This is needed so grainflow live can load buffers correctly.
			return {};
		}
	};
#pragma endregion
#pragma region GRAINFLOW_MESSAGES
	// Grainflow Messages

	// Rate
	message<> rate{
		this,
		"rate",
		"how fast a grain plays in relation to its normal playback rate",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::rate, GfParamType::base);
			return {};
		}
	};

	message<> rateRandom{
		this,
		"rateRandom",
		"randomization depth for the rate parameter",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::rate, GfParamType::random);
			return {};
		}
	};

	message<> rateOffset{
		this,
		"rateOffset",
		"the amount rate to apply rate based on grain index",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::rate, GfParamType::offset);
			return {};
		}
	};

	message<> transpose{
		this,
		"transpose",
		"control rate in semitones",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(GfUtils::PitchToRate((float)args[0]), GfParamName::rate, GfParamType::base);
			return {};
		}
	};

	message<> transposeRandom{
		this,
		"transposeRandom",
		"randomization depth for the the transpose parameter",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto transpose = (abs(GfUtils::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
			GrainMessage(transpose, GfParamName::rate, GfParamType::random);
			return {};
		}
	};

	message<> transposeOffset{
		this,
		"transposeOffset",
		"the amount of transposition to apply rate based on grain index",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto transpose = (abs(GfUtils::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
			GrainMessage(transpose, GfParamName::rate, GfParamType::offset);
			return {};
		}
	};

	message<> rateQuantizeSemi{
		this,
		"rateQuantizeSemi",
		"locks transpositions to a set step in semitones",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			
			GrainMessage(GfUtils::PitchToRate((float)args[0]), GfParamName::rateQuantizeSemi, GfParamType::value);
			return {};
		}
	};

	// glisson
	message<> glisson{
		this,
		"glisson",
		"how much the pitch will change over the life of the grain based on rate",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::glisson, GfParamType::base);
			return {};
		}
	};

	message<> glissonRandom{
		this,
		"glissonRandom",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::glisson, GfParamType::random);
			return {};
		}
	};

	message<> glissonOffset{
		this,
		"glissonOffset",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		GrainMessage(args[0], GfParamName::glisson, GfParamType::offset);
		return {};
		}
	};

	message<> glissonSt{
		this,
		"glissonSt",
		"controls glisson in semitones",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(GfUtils::PitchToRate((float)args[0]) - 1, GfParamName::glisson, GfParamType::base);
			return {};
		}
	};

	message<> glissonStRandom{
		this,
		"glissonStRandom",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto transpose = (abs(GfUtils::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
			GrainMessage(transpose, GfParamName::glisson, GfParamType::random);
			return {};
		}
	};

	message<> glissonStOffset{
		this,
		"glissonStOffset",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto transpose = (abs(GfUtils::PitchToRate((float)args[0])) - 1) * (((float)args[0] > 0) * 2 - 1);
			GrainMessage(transpose, GfParamName::glisson, GfParamType::offset);
			return {};
		}
	};

	message<> direction{
		this,
		"direction",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage((float)args[0], GfParamName::direction, GfParamType::base);
			return {};
		}
	};

	// amp
	message<> ampMess{
		this,
		"amp",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::amplitude, GfParamType::base);
			return {};
		}
	};

	message<> ampRandom{
		this,
		"ampRandom",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(-(float)args[0], GfParamName::amplitude, GfParamType::random);
			return {};
		}
	};

	message<> ampOffseet{
		this,
		"ampOffset",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(-(float)args[0], GfParamName::amplitude, GfParamType::offset);
			return {};
		}
	};

	// delay
	message<> delay{
		this,
		"delay",
		"the amound grains are delayed in ms",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto value = (float)args[0] * 0.001f * samplerate();
			GrainMessage(value, GfParamName::delay, GfParamType::base);
			return {};
		}
	};

	message<> trav{
		this,
		"trav",
		"the amound grains are delayed in ms",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto value = (float)args[0] * 0.001f * samplerate();
			GrainMessage(value, GfParamName::delay, GfParamType::base);
			return {};
		}
	};

	message<> delayRandom{
		this,
		"delayRandom",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto value = (float)args[0] * 0.001f * samplerate();
		GrainMessage(value, GfParamName::delay, GfParamType::random);
		return {};
		}
	};

	message<> travRandom{
		this,
		"travRandom",
		"the amound grains are delayed in ms",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto value = (float)args[0] * 0.001f * samplerate();
			GrainMessage(value, GfParamName::delay, GfParamType::random);
			return {};
		}
	};

	message<> delayOffset{
		this,
		"delayOffset",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto value = (float)args[0] * 0.001f * samplerate();
			GrainMessage(value, GfParamName::delay, GfParamType::offset);
			return {};
		}
	};

	message<> travOffset{
	this,
	"travOffset",
	"the amound grains are delayed in ms",
	[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		auto value = (float)args[0] * 0.001f * samplerate();
		GrainMessage(value, GfParamName::delay, GfParamType::offset);
		return {};
	}
	};

	// Targets
	message<> grain{
		this,
		"g",
		"sends a message to a single grain",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			_target = args[0];
			_streamTarget = 0;
			return {};
		}
	};

	message<> target{
		this,
		"target",
		"sends a message to a single grain",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			_target = args[0];
			_streamTarget = 0;
			return {};
		}
	};

	// Window
	message<> window{
		this,
		"window",
		"sets the position of the window",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			 GrainMessage(args[0], GfParamName::window, GfParamType::base);
			return {};
		}
	};

	message<> windowRandom{
		this,
		"windowRandom",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::window, GfParamType::random);
			return {};
		}
	};

	message<> windowOffset{
		this,
		"windowOffset",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::window, GfParamType::offset);
			return {};
		}
	};

	// Space
	message<> space{
		this,
		"space",
		"the amound of emty space at the end of each grains as a ratio of the total grain size",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::space, GfParamType::base);
			return {};
		}
	};

	message<> spaceRandom{
		this,
		"spaceRandom",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::space, GfParamType::random);
			return {};
		}
	};

	message<> spaceOffset{
		this,
		"spaceOffset",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::space, GfParamType::offset);
			return {};
		}
	};

	// Streams

	message<> streamSet{
		this,
		"streamSet",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
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
	};

	message<> streamTarget{
		this,
		"streamTarget",
		"messages will target grains assigned to this stream",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			_target = 0;
			_channelTarget = 0;
			_streamTarget = args[0];
			return {};
		}
	};

	message<> streamMsg{
		this,
		"stream",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
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
	};

	message<> streamDeviate{
		this,
		"streamDeviate",
		"will deviate any parameter based on streams",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
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
	};

	message<> streamSpread{
		this,
		"streamSpread",
		"will create evenly spaced values between each number based on streams",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
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
	};

	// Buffer Channels
	message<> bufChans{
		this,
		"bufChans",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			int chans = args[0];
			for (int g = 0; g < maxGrains; g++)
			{
				grainInfo[g].bchan = g % chans;
			}

			return {};
		}
	};

	message<> bufChan{
		this,
		"bufChan",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
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
	};

	message<> gchan{
		this,
		"gchan",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
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
	};

	// State

	message<> density{
		this,
		"density",
		"the probability a grain will play",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if (_target > 0) {
				grainInfo[_target - 1].density = args[0];
			return {};
			}
			for (int g = 0; g < maxGrains; g++)
			{
				grainInfo[g].density = args[0];
			}
			return {};
			}
	};

	message<> ngrains{
		this,
		"ngrains",
		"the number of active grains",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			_ngrains = (int)(args[0]) <= maxGrains ? (int)(args[0]) : maxGrains;
			return {};
			}
	};

	// Param Modes
	message<> delayMode{
		this,
		"delayMode",
		"sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::delay, GfParamType::mode);
			return {};
		}
	};

	message<> rateMode{
		this,
		"rateMode",
		"sets  the delay mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::rate, GfParamType::mode);
			return {};
		}
	};

	message<> windowMode{
		this,
		"windowMode",
		"sets  the window mode. 0 = normal, 1 = read from buffer based on grain index, 2 = read from buffer randomly",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::window, GfParamType::mode);
			return {};
		}
	};

	// Envelope
	message<> env{
		this,
		"env",
		"sets the envelope buffer",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			string bname = (string)args[0];
			BufferRefMessage(bname, GFBuffers::envelope);
			if (args.size() < 2)
			{
				GrainMessage(1, GfParamName::nEnvelopes, GfParamType::value);
				return {};
			}
			GrainMessage((int)args[1], GfParamName::nEnvelopes, GfParamType::value);
			return {};
		}
	};

	message<> envPosition{
		this,
		"envPosition",
		"sets the 2D envelope position",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::envelopePosition, GfParamType::base);
			return {};
		}
	};

	message<> envPositionOffset{
		this,
		"envPositionOffset",
		"sets the 2D envelope position",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::envelopePosition, GfParamType::offset);
			return {};
		}
	};

	message<> envPositionRandom{
		this,
		"envPositionRandom",
		"sets the 2D envelope position",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::envelopePosition, GfParamType::random);
			return {};
		}
	};

	// Buffeers
	message<> buf{
		this,
		"buf",
		"sets the granulation buffer",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			string bname = (string)args[0];
			BufferRefMessage(bname, GFBuffers::buffer);
			return {};
		}
	};

	message<> delayBuffer{
		this,
		"delayBuffer",
		"sets the buffer for delay modes 1 and 2",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			string bname = (string)args[0];
			BufferRefMessage(bname, GFBuffers::delayBuffer);
			return {};
		}
	};

	message<> windowBuffer{
		this,
		"windowBuffer",
		"sets the buffer for window modes 1 and 2",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			string bname = (string)args[0];
			BufferRefMessage(bname, GFBuffers::windowBuffer);
			return {};
		}
	};

	message<> rateBuffer{
		this,
		"rateBuffer",
		"sets the buffer for rate modes 1 and 2",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			string bname = (string)args[0];
			BufferRefMessage(bname, GFBuffers::rateBuffer);
			return {};
		}
	};

	message<> done{
		this,
		"done",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		return {};
		}
	};

	message<> voices{
		this,
		"voices",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			int grains = args[0];
			if (grains < 1)	return {};
			Reinit(grains);
			return {};
		}
	};

	message<> liveMode{
		this,
		"liveMode",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			
			return {};
		}
	};

	message<> startPoint{
	this,
	"startPoint",
	"",
	[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		GrainMessage(args[0], GfParamName::startPoint, GfParamType::base);
		return {};
	}
	};

	message<> stopPoint{
		this,
		"stopPoint",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::stopPoint, GfParamType::base);
			return {};
		}
	};

	message<> loopMode{
	this,
	"loopMode",
	"",
	[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		GrainMessage(args[0], GfParamName::loopMode, GfParamType::base);
		return {};
	}
	};



#pragma endregion
#pragma region MAX_ATTR
	// Attributes go here

#pragma endregion
};

