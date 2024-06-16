#include "MspGrain.h"
#include "c74_min.h"
#include "gfUtils.h"
#include <mutex>
#include <atomic>


constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;
long simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count);
long simplemc_inputchanged(c74::max::t_object* x, long g, long count);

class grainflow_tilde : public object<grainflow_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{ "the base object for grainflow" };
	MIN_TAGS{ "grainulation, msp, grainflow" };
	MIN_AUTHOR{ "Christopher Poovey" };
	MIN_RELATED{ "" };

private:
	std::unique_ptr<MspGrain<INTERNALBLOCK>[]> grainInfo;
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
	gfIoConfig _ioConfig;
	float emptyBuffer[10] = {};
	int _maxGrains = 0;
	bool _state = false;
	bool _autoOverlap = true;

atoms GetGrainParams(GfParamName param, GfParamType type) {
		atoms values;
		values.clear();
		values.resize(_maxGrains);
		for (int g = 0; g < _maxGrains; g++) {
			auto p = grainInfo[g].ParamGetHandle(param);
			switch (type) {
			case GfParamType::base:
				values[g] = ((atom)p->base);
				break;
			case GfParamType::random:
				values[g] = ((atom)p->random);
				break;
			case GfParamType::offset:
				values[g] = ((atom)p->offset);
				break;
			case GfParamType::value:
				values[g] = ((atom)p->value);
				break;
			}
		}
		return values;
	}

	void SetPararamList(atoms args, GfParamName param, GfParamType type) {
		for (int i = 0; i < _maxGrains; i++) {
			grainInfo[i].ParamSet((float)args[i%args.size()], param, type);
		}
	}

	void TrySetAttributeOrMessage(string name, atoms args) {
		if (auto get = this->attributes().find(name); get != this->attributes().end()) {
			get->second->set(args);
			return;
		}
		this->try_call(name, args);
		return;
	}
	

public:
	int input_chans[4] = { 0, 0, 0, 0 };
	int maxGrainsThisFrame = 0;
	std::mutex lock;

#pragma region MAX_IO
	inlet<> grainClock{ this, "(multichannelsignal) phasor input", "multichannelsignal" };
	inlet<> traversalPhasor{ this, "(multichannelsignal) where the grain should be sampled from the buffer", "multichannelsignal" };
	inlet<> fm{ this, "(multichannelsignal) grain playback rate", "multichannelsignal" };
	inlet<> am{ this, "(multichannelsignal) amplitude modulation", "multichannelsignal" };

	outlet<> output{ this, "(multichannel) grain output", "multichannelsignal" };

	outlet<> o_grainInfo{ this, "(list) grain info", "list" };


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
	~grainflow_tilde();
	void operator()(audio_bundle input, audio_bundle output);
	void GrainMessage(float value, GfParamName param, GfParamType type);
	void BufferRefMessage(string bname, GFBuffers type);
	void BufferRefresh(GFBuffers type);
	void Init();
	void Cleanup();
	void Reinit(int grains);
	void UseDefaultEnvelope(bool state);

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
			_maxGrains =(int)arg;
			if (_maxGrains < 1) _maxGrains = 2;

			grainInfo = std::unique_ptr<MspGrain<INTERNALBLOCK>[]>(new MspGrain<INTERNALBLOCK>[_maxGrains]);
			_ngrains = _maxGrains;
			if(_autoOverlap) this->try_call("windowOffset", "auto");
		}	
	};


#pragma endregion
#pragma region MAX_MESSAGES
	// Setup functionsf

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
			this->lock.lock();
			oneOverSamplerate = 1 / samplerate();
			BufferRefresh(GFBuffers::buffer); // This is needed so grainflow live can load buffers correctly.
			this->lock.unlock();
			return {};
		}
	};
#pragma endregion
#pragma region GRAINFLOW_MESSAGES
	// Grainflow Messages
	message<> m_int{
		this,
		"int",
		"enables and disables the granulator",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			_state = (int)args[0] >= 1;
			return{};
		}
	};


	// Rate
	attribute<vector<number>> rate{
		this,
		"rate",
		{1},
		//description{"how fast a grain plays in relation to its normal playback rate"},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if (args.size() <= 1) {
			GrainMessage(args[0], GfParamName::rate, GfParamType::base);
			return args;
			}
			SetPararamList(args, GfParamName::rate, GfParamType::base);
			return args;
		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::rate, GfParamType::base);
			}
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
			_channelTarget = 0;
			if (args.size() <= 1) return {};
			auto newArgs = atoms(args.begin() + 2, args.end());
			TrySetAttributeOrMessage((string)args[1], newArgs);
			
			_target = 0;
			return {};
		}
	};

	message<> target{
		this,
		"target",
		"sends a message to a single grain",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			_target = args[0];
			_channelTarget = 0;
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
			if (args[0].type() == message_type::symbol_argument){
				GrainMessage(_ngrains >= 1 ? 1.0f/(float)_ngrains : 0, GfParamName::window, GfParamType::offset);
				return{};
			}
			GrainMessage((float)args[0], GfParamName::window, GfParamType::offset);
			return {};
		}
	};

	message<> windowOffsetRandom{
		this,
		"windowOffsetRandom",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::window, GfParamType::random);
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
			for (int g = 0; g < _maxGrains; g++)
			{
				grainInfo[g].StreamSet(_maxGrains, mode, _nstreams);
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
				for (int g = 0; g < _maxGrains; g++)
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
				for (int g = 0; g < _maxGrains; g++)
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
				for (int g = 0; g < _maxGrains; g++)
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
			for (int g = 0; g < _maxGrains; g++)
			{
				grainInfo[g].channel.base = g % chans;
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

			if (g >= _maxGrains || g < 0)
				return {};
			grainInfo[g].channel.base = chan - 1;

			return {};
		}
	};

	message<> chanMode{
		this,
		"chanMode",
		"",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			int mode = (float)args[0] >= 0.999f ? 1 : 0;
			for (int g = 0; g < _maxGrains; g++)
			{
				grainInfo[g].channel.random = mode;
			}
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
			for (int g = 0; g < _maxGrains; g++)
			{
				this->try_call((string)args[1], value);
			}

			_target = lastTarget;
			_streamTarget = lastStream;
			_channelTarget = lastChannelTarget;
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
			for (int g = 0; g < _maxGrains; g++)
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
			_ngrains = (int)(args[0]) <= _maxGrains ? (int)(args[0]) : _maxGrains;
			if(_autoOverlap) this->try_call("windowOffset", "auto");
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
		"sets the envelope buffer with a second argument defining the number of envelopes in the buffer",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if (args.size() < 1) return{};
			string bname = (string)args[0];
			if(bname.empty() || bname.compare("0") == 0 || bname.compare("_") == 0 || bname.compare("default") == 0){
				UseDefaultEnvelope(true);
				return {};
			}
			BufferRefMessage(bname, GFBuffers::envelope);
			UseDefaultEnvelope(false);
			if (args.size() < 2)
			{
				GrainMessage(1, GfParamName::nEnvelopes, GfParamType::value);
				return {};
			}
			GrainMessage((int)args[1], GfParamName::nEnvelopes, GfParamType::value);
			

			return {};
		}
	};

	message<> env2D{
		this,
		"env2D",
		"sets the envelope buffer with a second argument defining the number of envelopes in the buffer",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			this->try_call("env", args);
			return{};
		}
	};

	message<> nEnvelopes{
		this,
		"nEnvelopes",
		"sets the number of envelopes in the 2d envelope buffer",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			
			GrainMessage((int)args[0], GfParamName::nEnvelopes, GfParamType::value);
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

	message<> env2DPosition{
		this,
		"env2DPosition",
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

