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

	float oneOverSamplerate = 1;
	int _target = 0;
	int _streamTarget = 0;
	int _channelTarget = 0;
	int _nstreams = 0;
	std::random_device rd;
	gfIoConfig _ioConfig;
	float emptyBuffer[10] = {};
	int _maxGrains = 0;
	bool hasUpdate;

	atoms m_grainState;
	atoms m_grainProgress;
	atoms m_grainPlayhead;
	atoms m_grainAmp;
	atoms m_grainEnvelope;
	atoms m_grainStreamChannel;
	atoms m_grainBufferChannel;

	atoms GetGrainParams(GfParamName param, GfParamType type);
	atoms SetGrainParams(atoms args, GfParamName param, GfParamType type);
	void TrySetAttributeOrMessage(string name, atoms args);

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
	grainflow_tilde();
	~grainflow_tilde();
	void operator()(audio_bundle input, audio_bundle output);
	void GrainMessage(float value, GfParamName param, GfParamType type);
	void BufferRefMessage(string bname, GFBuffers type);
	void BufferRefresh(GFBuffers type);
	void Init();
	void Cleanup();
	void Reinit(int grains);
	void UseDefaultEnvelope(bool state);
	void ouputGrainInfo(string name, atoms data);

#pragma endregion

#pragma region MAX_ARGS
	argument<symbol> buffer_arg{
		this,
		"buf",
		"Buffer~ from which to read.",
		[this](const c74::min::atom& arg) {
			bufferArg = (string)arg;
		}
	};

	argument<int> grains_arg{
		this,
		"number-of-grains",
		"max number of grains",
		[this](const c74::min::atom& arg) {
			_maxGrains = (int)arg;
			if (_maxGrains < 1) _maxGrains = 2;
			grainInfo = std::unique_ptr<MspGrain<INTERNALBLOCK>[]>(new MspGrain<INTERNALBLOCK>[_maxGrains]);
			ngrains = _maxGrains;
			if (autoOverlap) this->TrySetAttributeOrMessage("windowOffset", atoms{ 1.0f / ngrains });
			m_grainState.resize(_maxGrains);
			m_grainProgress.resize(_maxGrains);
			m_grainPlayhead.resize(_maxGrains);
			m_grainAmp.resize(_maxGrains);
			m_grainEnvelope.resize(_maxGrains);
			m_grainStreamChannel.resize(_maxGrains);
			m_grainBufferChannel.resize(_maxGrains);
		}
	};

	argument<int> envelope_arg{
	this,
	"envelope-buffer",
	"(optional) the initial envelope buffer for all grains",
	[this](const c74::min::atom& arg) {
		this->try_call("env", arg);
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

#pragma region GRAINFLOW_ATTRIBUTES

	attribute<bool> state{
	this, "state", false,
	setter{
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		if (!args[0]) return args;
		if (!grainInfo) return args;
		auto buf = grainInfo[0].GetBuffer(GFBuffers::buffer);
		if (buf == nullptr) return args;
		o_grainInfo.send(atoms{ "buf", grainInfo[0].GetBuffer(GFBuffers::buffer)->name() });
		return args;
		}},
		description{"Determines if grainflow is on or off"}

	};

	// Rate
	attribute<vector<number>> rate{
		this,
		"rate",
		{1},
		//description{"how fast a grain plays in relation to its normal playback rate"},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::rate, GfParamType::base);
		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::rate, GfParamType::base);
			}
		},
		description{"Controls the rate of playback of each grain. This will modify pitch."}
	};
	attribute<vector<number>> rateRandom{
		this,
		"rateRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::rate, GfParamType::random);
		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::rate, GfParamType::random);
			}
		},
		description{"Adds a unipolar random amount to the playback rate on each grains start."}
	};
	attribute<vector<number>> rateOffset{
		this,
		"rateOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::rate, GfParamType::offset);
		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::rate, GfParamType::offset);
			}
		},
		description{"Adds an amount to the playback rate based on the grains index."}
	};

	attribute<vector<number>> transpose{
		this,
		"transpose",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms transposed;
			transposed.resize(args.size());
			for (int i = 0; i < args.size(); i++) { transposed[i] = (atom)(GfUtils::PitchToRate(args[i])); }
			return SetGrainParams(transposed, GfParamName::rate, GfParamType::base);
		}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::rate, GfParamType::base);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateToPitch((float)res[i])); }
				return res;
			}},
			description{"Controls each grains playback rate in terms of the pitch change that will occur"}

	};

	attribute<vector<number>> transposeRandom{
		this,
		"transposeRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms transposed;
			transposed.resize(args.size());
			for (int i = 0; i < args.size(); i++) { transposed[i] = GfUtils::PitchOffsetToRateOffset(args[i]); }
			return SetGrainParams(transposed, GfParamName::rate, GfParamType::random);
		}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::rate, GfParamType::random);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateOffsetToPitchOffset((float)res[i])); }
				return res;
			}},
			description{"Adds a unipolar random amount to each grains transposition when a grain starts"}
	};

	attribute<vector<number>> transposeOffset{
		this,
		"transposeOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms transposed;
			transposed.resize(args.size());
			for (int i = 0; i < args.size(); i++) { transposed[i] = GfUtils::PitchOffsetToRateOffset(args[i]); }
			return SetGrainParams(transposed, GfParamName::rate, GfParamType::offset);
			}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::rate, GfParamType::offset);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateOffsetToPitchOffset((float)res[i])); }
				return res;
			}},
			description{"Adds an amount to each grains transposition based on grain index"}

	};

	attribute<vector<number>> rateQuantizeSemi{
		this,
		"rateQuantizeSemi",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms transposed;
			transposed.resize(args.size());
			for (int i = 0; i < args.size(); i++) { transposed[i] = (atom)(GfUtils::PitchToRate(args[i])); }
			return SetGrainParams(transposed, GfParamName::rateQuantizeSemi, GfParamType::value);
			}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::rateQuantizeSemi, GfParamType::value);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateToPitch(res[i])); }
				return res;
			}},
		description{"Snaps grain playback rates to a semitone grid. 0 provides no snapping. Fractional amounts are allowed."}
	};

	// glisson
	attribute<vector<number>>  glisson{
		this,
		"glisson",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::glisson, GfParamType::base);
		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::glisson, GfParamType::base);
			}},
		description{"How much the playback rate will change over the life of the grain. Creates a glissando effect"}

	};

	attribute<vector<number>> glissonRandom{
		this,
		"glissonRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::glisson, GfParamType::random);
		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::glisson, GfParamType::random);
			}},
		description{"A unipolar random amount added to each grains glisson destination. Determined at the start of each grain."}

	};

	attribute<vector<number>> glissonOffset{
		this,
		"glissonOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::glisson, GfParamType::offset);
		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::glisson, GfParamType::offset);
			}},
		description{"An amount added to each grains glisson destination based on the grain index"}

	};

	attribute<vector<number>> glissonSt{
		this,
		"glissonSt",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms transposed;
			transposed.resize(args.size());
			for (int i = 0; i < args.size(); i++) { transposed[i] = (number)GfUtils::PitchOffsetToRateOffset((float)args[i]); }
			return SetGrainParams(transposed, GfParamName::glisson, GfParamType::base);
		}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::glisson, GfParamType::base);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateOffsetToPitchOffset((float)res[i])); }
				return res;
			}},
		description{"Controls the glisson attribute in terms of the pitch change that will occur"}
	};

	attribute<vector<number>> glissonStRandom{
		this,
		"glissonStRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms transposed;
			transposed.resize(args.size());
			for (int i = 0; i < args.size(); i++) {transposed[i] = GfUtils::PitchOffsetToRateOffset((float)args[i]);}
			return SetGrainParams(transposed, GfParamName::glisson, GfParamType::random);
		}},
		getter{[this]() -> atoms {
			auto res = GetGrainParams(GfParamName::glisson, GfParamType::random);
			for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateOffsetToPitchOffset((float)res[i])); }
			return res;
		}},
		description{"A unipolar random amount added to the glissonSt value. Determined at the start of each grain."}

		};

	attribute<vector<number>> glissonStOffset{
		this,
		"glissonStOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms transposed;
			transposed.resize(args.size());
			for (int i = 0; i < args.size(); i++) { transposed[i] = GfUtils::PitchOffsetToRateOffset(args[i]); }
			return SetGrainParams(transposed, GfParamName::glisson, GfParamType::offset);
		}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::glisson, GfParamType::offset);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateOffsetToPitchOffset((float)res[i])); }
				return res;
			}},
		description{"An amount added to the glissonSt value based on each grain's index"}

	};

	attribute<vector<number>> direction{
		this,
		"direction",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::direction, GfParamType::base);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::direction, GfParamType::base); }},
		description{"The probabilty a grain will play forwards or backwards. 1: always forwards, 0: 50% chance forwards or backwards, -1: always backwards"}
	};

	// amp
	attribute<vector<number>> ampMess{
		this,
		"amp",
		{1},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::amplitude, GfParamType::base);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::amplitude, GfParamType::base); }},
		description{"The amplitude of each grain as a value from 0-1"}
	};

	attribute<vector<number>>  ampRandom{
		this,
		"ampRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms amps;
			amps.resize(args.size());
			for (int i = 0; i < args.size(); i++) {
				amps[i] = std::max( std::min(- (float)args[i],0.0f), -1.0f);
			}
			return SetGrainParams(amps, GfParamName::amplitude, GfParamType::random);
		}},
		getter {[this]() -> atoms {
			auto amps = GetGrainParams(GfParamName::amplitude, GfParamType::random);;
			for (int i = 0; i < amps.size(); i++) {
				amps[i] = std::max(std::min(-(float)amps[i], 1.0f),0.0f);
			}
			return amps;
		}},
		description{"A unipolar random amount subtracted from each grains amplitude. Determined at the start of each grain"}
	};

	attribute<vector<number>>  ampOffseet{
		this,
		"ampOffset",
		{0},
	setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms amps;
			amps.resize(args.size());
			for (int i = 0; i < args.size(); i++) {
				amps[i] = std::max(1.0f - (float)args[i],0.0f);
			}
			return SetGrainParams(amps, GfParamName::amplitude, GfParamType::offset);
		}},
		getter {[this]() -> atoms {
			auto amps = GetGrainParams(GfParamName::amplitude, GfParamType::offset);;
			for (int i = 0; i < amps.size(); i++) {
				amps[i] = std::max(1.0f - (float)amps[i], 0.0f);
			}
			return amps;
		}},
		description{"An amount subtracted from each grains amplitude based on each grains index."}

	};

	// delay
	attribute<vector<number>>  delay{
		this,
		"delay",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms samps;
			samps.resize(args.size());
			for (int i = 0; i < args.size(); i++) { samps[i] = (float)args[i] * 0.001f * samplerate(); }
			return SetGrainParams(samps, GfParamName::delay, GfParamType::base);
		}},
		getter {[this]() -> atoms {
			auto ms = GetGrainParams(GfParamName::delay, GfParamType::base);
			for (int i = 0; i < ms.size(); i++) { GfUtils::round(ms[i] = ((float)ms[i] * oneOverSamplerate) * 1000.0f, 1e-3); }
			return ms;
		}},
		description{"An offset from the traversal phasor in milliseconds"}
	};

	attribute<vector<number>> delayRandom{
		this,
		"delayRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms samps;
			samps.resize(args.size());
			for (int i = 0; i < args.size(); i++) { samps[i] = (float)args[i] * 0.001f * samplerate(); }
			return SetGrainParams(samps, GfParamName::delay, GfParamType::random);
		}},
		getter {[this]() -> atoms {
			auto ms = GetGrainParams(GfParamName::delay, GfParamType::random);
			for (int i = 0; i < ms.size(); i++) { GfUtils::round(ms[i] = ((float)ms[i] * oneOverSamplerate) * 1000.0f, 1e-3); }
			return ms;
		}},
		description{"A unipolar random offset from the traversal phasor in milliseconds. Determined at the start of each grain"}
	};


	attribute<vector<number>> delayOffset{
		this,
		"delayOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			atoms samps;
			samps.resize(args.size());
			for (int i = 0; i < args.size(); i++) { samps[i] = (float)args[i] * 0.001f * samplerate(); }
			return SetGrainParams(samps, GfParamName::delay, GfParamType::offset);
		}},
		getter {[this]() -> atoms {
			auto ms = GetGrainParams(GfParamName::delay, GfParamType::offset);
			for (int i = 0; i < ms.size(); i++) { GfUtils::round(ms[i] = ((float)ms[i] * oneOverSamplerate) * 1000.0f, 1e-3); }
			return ms;
			}},
		description{"An offset from the traversal phasor in milliseconds based on the index of each grain"}

	};
	// Window
	attribute<vector<number>> window{
		this,
		"window",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::window, GfParamType::base);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::window, GfParamType::base); }},
		description{"Sets the position of each grains starting point on the grain clock from 0-1"}
	};

	attribute<vector<number>> windowRandom{
		this,
		"windowRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::window, GfParamType::random);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::window, GfParamType::random); }},
		description{"Adds a unipolar random amount to each grains window"}
	};

	attribute<vector<number>> windowOffset{
		this,
		"windowOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::window, GfParamType::offset);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::window, GfParamType::offset); }},
		description{"Adds an offset to the base grain window position based on each grains index. When autoOverlap is enabled this is set based on the number of grains"}
	};

	attribute<bool> autoOverlap{
		this,
		"autoOverlap",
		true,
		description{"Automatically sets windowOffset based on the number of grains when nGrains is changed"}

	};

	// Space
	attribute<vector<number>> space{
		this,
		"space",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::space, GfParamType::base);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::space, GfParamType::base); }},
		description{"the amound of emty space at the end of each grains as a ratio of the total grain size"},

	};

	attribute<vector<number>> spaceRandom{
		this,
		"spaceRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::space, GfParamType::base);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::space, GfParamType::random); }},
		description{"the amound of emty space at the end of each grains as a ratio of the total grain size"},

	};

	attribute<vector<number>> spaceOffset{
		this,
		"spaceOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::space, GfParamType::offset);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::space, GfParamType::base); }},
		description{"the amound of emty space at the end of each grains as a ratio of the total grain size"},

	};

	attribute<number> density{
	this,
	"density",
	1,
	setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		if (_target > 0) {
			grainInfo[_target - 1].density = args[0];
			return {};
			}
		for (int g = 0; g < _maxGrains; g++)
			{
				grainInfo[g].density = args[0];
			}
			return args;
		}},
		description{"the probability a grain will play"},
		
	};

	attribute<int> ngrains{
		this,
		"ngrains",
		_maxGrains,
		setter {[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		auto val = (int)(args[0]) <= _maxGrains ? (int)(args[0]) : _maxGrains;
		if (autoOverlap) this->TrySetAttributeOrMessage("windowOffset", atoms{ 1.0f / (ngrains > 0 ? ngrains : 1) });
		return { val };
		} },
		description{"the number of active grains"},


	};

	attribute<vector<number>>  startPoint{
		this,
		"startPoint",
		{0},
		setter{ [this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::startPoint, GfParamType::base);
			return args;
			}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::startPoint, GfParamType::base); }},
		description{"the start of the loop from 0-1"},
	};

	attribute<vector<number>> stopPoint{
		this,
		"stopPoint",
		{1},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::stopPoint, GfParamType::base);
			return args;
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::stopPoint, GfParamType::base); }},
		description{"the end of the loop from 0-1"},
	};

	attribute<vector<int>> loopMode{
		this,
		"loopMode",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::loopMode, GfParamType::base);
			return args;
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::loopMode, GfParamType::base); }},
		description{"how the loops is handled by each grain. 0: ignore the loop. 1: wrap 2: fold "},
	};
#pragma endregion

#pragma region GRAINFLOW_MESSAGES

	// Grainflow Messages
	message<> m_int{
		this,
		"int",
		"enables and disables the granulator",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			state = (int)args[0] >= 1;
			//o_grainInfo.send(atoms{ "buf", grainInfo[0].GetBuffer(GFBuffers::buffer)->name() });
			return{};
		}
	};		

	message<> trav{
		this,
		"trav",
		"DEPRICATED the amound grains are delayed in ms",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto value = (float)args[0] * 0.001f * samplerate();
			GrainMessage(value, GfParamName::delay, GfParamType::base);
			return {};
		}
	};


	message<> travRandom{
		this,
		"travRandom",
		"DEPRICATED the amound grains are delayed in ms",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			auto value = (float)args[0] * 0.001f * samplerate();
			GrainMessage(value, GfParamName::delay, GfParamType::random);
			return {};
		}
	};


	message<> travOffset{
	this,
	"travOffset",
	"DEPRICATED message to set the amound grains are delayed in ms",
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

	

	message<> windowOffsetRandom{
		this,
		"windowOffsetRandom",
		"DEPRICATED message for setting the window offset attribute",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::window, GfParamType::offset);
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
		"sets an attribute or message for all grains in a stream",
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
		"sets buffer channels to all grains in an interleved fashion",
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
		"sets the channel of grains with a certain channel. Should be used with the g message",
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
		"If greater than 1, channels are assigned at random",
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
		"sets an attribute of message for all grains assigned to a buffer channel",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			float value = 0;
			int lastTarget = _target;
			int lastStream = _streamTarget;
			int lastChannelTarget = _channelTarget;
			_channelTarget = args[0];
			_streamTarget = 0;
			_target = 0;			

			for (int g = 0; g < _maxGrains; g++)
			{
				this->TrySetAttributeOrMessage((string)args[1], atoms(args.begin() + 1, args.end()));
			}

			_target = lastTarget;
			_streamTarget = lastStream;
			_channelTarget = lastChannelTarget;
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
			if (bname.empty() || bname.compare("0") == 0 || bname.compare("_") == 0 || bname.compare("default") == 0) {
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

	attribute<bool> liveMode{
		this,
		"liveMode",
		false
	};




#pragma endregion
#pragma region GRAINFLOW_OTHER
	timer<timer_options::defer_delivery> grainInfoOutput{
		this,
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if (hasUpdate) {
				hasUpdate = false;
			if (state) {
				ouputGrainInfo("grainState", m_grainState);
				ouputGrainInfo("grainPosition", m_grainPlayhead);
				ouputGrainInfo("grainWindow", m_grainEnvelope);
				ouputGrainInfo("grainAmp", m_grainAmp);
				ouputGrainInfo("grainProgress", m_grainProgress);
				ouputGrainInfo("grainBufferChannel", m_grainBufferChannel);
				ouputGrainInfo("grainStreamChannel", m_grainStreamChannel);
			}
			}
			grainInfoOutput.delay(33);

			return{};
		}
	};
#pragma endregion
};
