#pragma once 
#include "c74_min.h"
#include "gfUtils.h"
#include "gfGrainCollection.h"
#include "maxBufferReader.h"
#include <mutex>
#include <map>
constexpr size_t INTERNALBLOCK = 16;

using namespace c74::min;
using namespace Grainflow;
long simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count);
long simplemc_inputchanged(c74::max::t_object* x, long g, long count);

class grainflow_tilde : public object<grainflow_tilde>, public mc_operator<>
{
public:
	MIN_DESCRIPTION{ "the base object for grainflow" };
	MIN_TAGS{ "granulation, msp, grainflow" };
	MIN_AUTHOR{ "Christopher Poovey" };
	MIN_RELATED{ "" };

private:

	std::unique_ptr<GfGrainCollection<buffer_reference,INTERNALBLOCK>> grainCollection;
	string bufferArg;
	string envArg;

	float oneOverSamplerate = 1/48000;
	int _target = 0;
	int _streamTarget = 0;
	int _channelTarget = 0;
	int _nstreams = 0;
	int _maxGrains;
	std::random_device rd;
	gfIoConfig _ioConfig;
	float emptyBuffer[10] = {};
	bool hasUpdate;
	bool _linkedParamsDirty = false;


	atoms m_grainState;
	atoms m_grainProgress;
	atoms m_grainPlayhead;
	atoms m_grainEnvelope;
	atoms m_grainAmp;
	atoms m_grainStreamChannel;
	atoms m_grainBufferChannel;

	GfIBufferReader<buffer_reference> bufferReader;

	atoms GetGrainParams(GfParamName param, GfParamType type);
	atoms SetGrainParams(atoms args, GfParamName param, GfParamType type);
	void TrySetAttributeOrMessage(string name, atoms args);
	void GrainInfoReset();
	void RefreshNamedAttributes(std::string name);
	void RefreshAllAttributes();
	void OuputAllGrainInfo();

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
	void Reinit(int grains);
	void UseDefaultEnvelope(bool state, int target = 0);
	void ouputGrainInfo(string name, atoms data);
	void SetupOutputs(gfIoConfig& ioConfig, double** outputs);
	void SetupInputs(gfIoConfig& ioConfig, int* inputChannels, double** inputs);
	void RefreshLinkedAttribute();
	


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
			bufferReader.SampleBuffer = MaxBufferReader::SampleBuffer;
			bufferReader.SampleEnvelope = MaxBufferReader::SampleEnvelope;
			bufferReader.UpdateBufferInfo = MaxBufferReader::UpdateBufferInfo;
			bufferReader.SampleParamBuffer = MaxBufferReader::SampleParamBuffer;
			grainCollection.reset(new GfGrainCollection<buffer_reference,INTERNALBLOCK>(bufferReader, _maxGrains));
			if (autoOverlap) this->TrySetAttributeOrMessage("windowOffset", atoms{ 1.0f / _maxGrains });
			m_grainState.resize(_maxGrains);
			m_grainProgress.resize(_maxGrains);
			m_grainPlayhead.resize(_maxGrains);
			m_grainAmp.resize(_maxGrains);
			m_grainEnvelope.resize(_maxGrains);
			m_grainStreamChannel.resize(_maxGrains);
			m_grainBufferChannel.resize(_maxGrains);
			ngrains = _maxGrains;
			oneOverSamplerate = 1 / samplerate();

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
			grainCollection->samplerate = samplerate();
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
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::rate, GfParamType::base);
			//if(transpose.writable())transpose.touch();
			_linkedParamsDirty = true;
			return args;

		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::rate, GfParamType::base);
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
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::rate, GfParamType::random);
			_linkedParamsDirty = true;
			//if(transposeRandom.writable())transposeRandom.touch();
			return args;


		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::rate, GfParamType::random);
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
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::rate, GfParamType::offset);
			_linkedParamsDirty = true;
			//if(transposeOffset.writable())transposeOffset.touch();
			return args;
		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::rate, GfParamType::offset);
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
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::transpose, GfParamType::base);
			//if(rate.writable())rate.touch();
			_linkedParamsDirty = true;
			return args;

		}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::rate, GfParamType::base);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateToPitch((float)res[i])); }
				return res;
			}},
			description{"Controls each grains playback rate in terms of the pitch change that will occur"},
			category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> transposeRandom{
		this,
		"transposeRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::transpose, GfParamType::random);
			//if (rateRandom.writable())rateRandom.touch();
			_linkedParamsDirty = true;
			return args;
		}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::rate, GfParamType::random);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateOffsetToPitchOffset((float)res[i])); }
				return res;
			}},
			description{"Adds a unipolar random amount to each grains transposition when a grain starts"},
			category{"Pitch | Rate"},
		order{3},
	};

	attribute<vector<number>> transposeOffset{
		this,
		"transposeOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::transpose, GfParamType::offset);
			//if(rateOffset.writable())rateOffset.touch();
			_linkedParamsDirty = true;
			return args;
			}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::rate, GfParamType::offset);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateOffsetToPitchOffset((float)res[i])); }
				return res;
			}},
			description{"Adds an amount to each grains transposition based on grain index"},
			category{"Pitch | Rate"},
		order{3},

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
		description{"Snaps grain playback rates to a semitone grid. 0 provides no snapping. Fractional amounts are allowed."},
		category{"Pitch | Rate"},
		order{3},
	};

	// glisson
	attribute<vector<number>>  glisson{
		this,
		"glisson",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::glisson, GfParamType::base);
			// if (glissonSt.writable())glissonSt.touch();
			_linkedParamsDirty = true;
			return args;

		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::glisson, GfParamType::base);
			}},
		description{"How much the playback rate will change over the life of the grain. Creates a glissando effect"},
		category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> glissonRandom{
		this,
		"glissonRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::glisson, GfParamType::random);
			//if (glissonStRandom.writable())glissonStRandom.touch();
			_linkedParamsDirty = true;
			return args;

		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::glisson, GfParamType::random);

			}},
		description{"A unipolar random amount added to each grains glisson destination. Determined at the start of each grain."},
		category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> glissonOffset{
		this,
		"glissonOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::glisson, GfParamType::offset);
			//if (glissonStOffset.writable())glissonStOffset.touch();
			_linkedParamsDirty = true;
			return args;

		}},
		getter{
			[this]() -> atoms {
				return GetGrainParams(GfParamName::glisson, GfParamType::offset);
			}},
		description{"An amount added to each grains glisson destination based on the grain index"},
		category{"Pitch | Rate"},
		order{3},

	};

	attribute<vector<number>> glissonSt{
		this,
		"glissonSt",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::glissonSt, GfParamType::base);
			//if (glisson.writable())glisson.touch();
			_linkedParamsDirty = true;
			return args;


		}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::glisson, GfParamType::base);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateOffsetToPitchOffset((float)res[i])); }
				return res;
			}},
		description{"Controls the glisson attribute in terms of the pitch change that will occur"},
		category{"Pitch | Rate"},
		order{3},
	};

	attribute<vector<number>> glissonStRandom{
		this,
		"glissonStRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::glissonSt, GfParamType::random);
			_linkedParamsDirty = true;
			//if (glissonRandom.writable())glissonRandom.touch();
			return args;
		}},
		getter{[this]() -> atoms {
			auto res = GetGrainParams(GfParamName::glisson, GfParamType::random);
			for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateOffsetToPitchOffset((float)res[i])); }
			return res;
		}},
		description{"A unipolar random amount added to the glissonSt value. Determined at the start of each grain."},
		category{"Pitch | Rate"},
		order{3},

		};

	attribute<vector<number>> glissonStOffset{
		this,
		"glissonStOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			SetGrainParams(args, GfParamName::glissonSt, GfParamType::offset);
			_linkedParamsDirty = true;
			//if (glissonOffset.writable())glissonOffset.touch();
			return args;

		}},
		getter{
			[this]() -> atoms {
				auto res = GetGrainParams(GfParamName::glisson, GfParamType::offset);
				for (int i = 0; i < res.size(); i++) { res[i] = (atom)(GfUtils::RateOffsetToPitchOffset((float)res[i])); }
				return res;
			}},
		description{"An amount added to the glissonSt value based on each grain's index"},
		category{"Pitch | Rate"},
		order{3},

	};
#pragma endregion
#pragma region ATTRIBUTES_TIME_AND_SPACE
	attribute<vector<number>> direction{
		this,
		"direction",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::direction, GfParamType::base);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::direction, GfParamType::base); }},
		description{"The probabilty a grain will play forwards or backwards. 1: always forwards, 0: 50% chance forwards or backwards, -1: always backwards"},
		category{"Time | Volume"},
		order{4},
	};

	// delay
	attribute<vector<number>> delay{
		this,
		"delay",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::delay, GfParamType::base);
		}},
		getter {[this]() -> atoms {
			auto ms = GetGrainParams(GfParamName::delay, GfParamType::base);
			for (int i = 0; i < ms.size(); i++) { GfUtils::round(ms[i] = ((float)ms[i] * oneOverSamplerate) * 1000.0f, 1e-3); }
			return ms;
		}},
		description{"An offset from the traversal phasor in milliseconds"},
		category{"Time | Volume"},
		order{4},
	};

	attribute<vector<number>> delayRandom{
		this,
		"delayRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::delay, GfParamType::random);
		}},
		getter {[this]() -> atoms {
			auto ms = GetGrainParams(GfParamName::delay, GfParamType::random);
			for (int i = 0; i < ms.size(); i++) { GfUtils::round(ms[i] = ((float)ms[i] * oneOverSamplerate) * 1000.0f, 1e-3); }
			return ms;
		}},
		description{"A unipolar random offset from the traversal phasor in milliseconds. Determined at the start of each grain"},
		category{"Time | Volume"},
		order{4},
	};


	attribute<vector<number>> delayOffset{
		this,
		"delayOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::delay, GfParamType::offset);
		}},
		getter {[this]() -> atoms {
			auto ms = GetGrainParams(GfParamName::delay, GfParamType::offset);
			for (int i = 0; i < ms.size(); i++) { GfUtils::round(ms[i] = ((float)ms[i] * oneOverSamplerate) * 1000.0f, 1e-3); }
			return ms;
			}},
		description{"An offset from the traversal phasor in milliseconds based on the index of each grain"},
		category{"Time | Volume"},
		order{4},

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
		description{"Sets the position of each grains starting point on the grain clock from 0-1"},
		category{"Envelope"},
		order{4},
	};

	attribute<vector<number>> windowRandom{
		this,
		"windowRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::window, GfParamType::random);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::window, GfParamType::random); }},
		description{"Adds a unipolar random amount to each grains window"},
		category{"Envelope"},
		order{4},
	};

	attribute<vector<number>> windowOffset{
		this,
		"windowOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::window, GfParamType::offset);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::window, GfParamType::offset); }},
		description{"Adds an offset to the base grain window position based on each grains index. When autoOverlap is enabled this is set based on the number of grains"},
		category{"Envelope"},
		order{4},
	};


	// Space
	attribute<vector<number>> space{
		this,
		"space",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if((float)args[0] >= 1) {
				return SetGrainParams({0.999}, GfParamName::space, GfParamType::base);
			}
			return SetGrainParams(args, GfParamName::space, GfParamType::base);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::space, GfParamType::base); }},
		description{"the amound of emty space at the end of each grains as a ratio of the total grain size"},
		category{"Envelope"},
		order{4},

	};

	attribute<vector<number>> spaceRandom{
		this,
		"spaceRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::space, GfParamType::random);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::space, GfParamType::random); }},
		description{"the amound of emty space at the end of each grains as a ratio of the total grain size"},
		category{"Envelope"},
		order{4},

	};

	attribute<vector<number>> spaceOffset{
		this,
		"spaceOffset",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::space, GfParamType::offset);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::space, GfParamType::offset); }},
		description{"the amound of emty space at the end of each grains as a ratio of the total grain size"},
		category{"Envelope"},
		order{4},

	};

	attribute<number> density{
	this,
	"density",
	1,
	setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
        if(grainCollection == nullptr)return args;
		grainCollection->SetDensity(_target, args[0]);
		return args;
	}},
		description{"the probability a grain will play"},
		category{"Time | Volume"},
		order{4},

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
	category{"Time | Volume"},
		order{4},
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
		category{"Time | Volume"},
		order{4},
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
		category{"Time | Volume"},
		order{4},
	};

#pragma endregion
#pragma region AMPLITUDE
	// amp
	attribute<vector<number>> ampMess{
		this,
		"amp",
		{1},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::amplitude, GfParamType::base);
		}},
		getter {[this]() -> atoms {return GetGrainParams(GfParamName::amplitude, GfParamType::base); }},
		description{"The amplitude of each grain as a value from 0-1"},
		category{"Time | Volume"},
		order{5},
	};

	attribute<vector<number>>  ampRandom{
		this,
		"ampRandom",
		{0},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::amplitude, GfParamType::random);
		}},
		getter {[this]() -> atoms {
			auto amps = GetGrainParams(GfParamName::amplitude, GfParamType::random);;
			for (int i = 0; i < amps.size(); i++) {
				amps[i] = std::max(std::min(-(float)amps[i], 1.0f),0.0f);
			}
			return amps;
		}},
		description{"A unipolar random amount subtracted from each grains amplitude. Determined at the start of each grain"},
		category{"Time | Volume"},
		order{5},
	};

	attribute<vector<number>>  ampOffseet{
		this,
		"ampOffset",
		{0},
	setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			
			return SetGrainParams(args, GfParamName::amplitude, GfParamType::offset);
		}},
		getter {[this]() -> atoms {
			auto amps = GetGrainParams(GfParamName::amplitude, GfParamType::offset);;
			for (int i = 0; i < amps.size(); i++) {
				amps[i] = std::max(1.0f - (float)amps[i], 0.0f);
			}
			return amps;
		}},
		description{"An amount subtracted from each grains amplitude based on each grains index."},
		category{"Time | Volume"},
		order{5},
	};

#pragma endregion
#pragma region ATTRIBUTES_SETTINGS

	attribute<bool> autoOverlap{
		this,
		"autoOverlap",
		true,
		description{"Automatically sets windowOffset based on the number of grains when nGrains is changed"},
		category{"Grainflow Settings"},
		order{2},

	};
	
	attribute<int> ngrains{
		this,
		"ngrains",
		0,
		setter {[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if(grainCollection == nullptr) return{0};
			grainCollection->SetActiveGrains((int)args[0]);
			return {grainCollection->ActiveGrains()};
		} },
		description{"the number of active grains"},
		category{"Grainflow Settings"},
		order{2},


	};

	attribute<bool> state{
	this, "state", false,
	setter{
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {

		if (!args[0]) {
			if (state)GrainInfoReset();
			return args;
		}
		if (grainCollection == nullptr) return args;
		if (grainCollection->Grains() <= 0) return args;

		auto buf = grainCollection->GetBuffer(GFBuffers::buffer);
		if (buf == nullptr) return args;
		o_grainInfo.send(atoms{ "buf", buf->name() });
		return args;
		}},
		description{"Determines if grainflow is on or off"},
		category{"Grainflow Settings"},
		order{2},

	};


	// Buffer Channels
	attribute<int> bufChans{
		this,
		"bufChans",
		1,
		description{"channels of the buffer associated to each grain"},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if(grainCollection == nullptr)return args;
			int chans = args[0];
			grainCollection->ChannelsSetInterleaved(chans);
			return args;
			}
		},
		category{"Grainflow Settings"},
		order{2},
	};


	attribute<int> chanMode{
	this,
	"chanMode",
	0,
	description{"If greater than 1, channels are assigned at random"},
	setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
		if(grainCollection == nullptr)return args;
		int mode = (float)args[0] >= 0.999f ? 1 : 0;
		
		grainCollection->ChannelModeSet(mode);
	
		return { mode };
		},
	},
		category{"Grainflow Settings"},
	};

	attribute<int> voices{
		this,
		"voices",
		2,
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if (args.size() < 1) return{};
			if (grainCollection == nullptr) return args;

			if (args[0] == grainCollection->Grains()) return {};
			int grains = args[0];
			if (grains < 1)	return { grainCollection->Grains() };
			Reinit(grains);
			return args;
		}},
		getter {[this]() -> atoms {return {grainCollection->Grains()}; } },
		category{"Grainflow Settings"},
		description{"the maximum number of voices/grains. You will need to restart audio after setting this."},
		order{2},
	};


	attribute<bool> liveMode{
		this,
		"liveMode",
		false,
		category{"Grainflow Settings"},
		order{2},
		description{"removes samplerate correction from a buffers samplerate. This is useful with live granulation if a buffer is created them Max's samplerate changes."},

	};

	attribute<vector<number>> nEnvelopes{
		this,
		"nEnvelopes",
		{1},
		description{"sets the number of envelopes in the 2d envelope buffer"},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::nEnvelopes, GfParamType::value);
		}},
		getter{
			[this]() -> atoms {
			 return GetGrainParams(GfParamName::nEnvelopes, GfParamType::value);;
		}},
		category{"Envelope"},
	};

	attribute<vector<number>> envPosition{
		this,
		"envPosition",
		{0},
		description{"sets the 2D envelope position"},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::envelopePosition, GfParamType::base);
		}},
		getter{
			[this]() -> atoms {
			 return GetGrainParams(GfParamName::envelopePosition, GfParamType::base);;
		}},
		category{"Envelope"},
	};

	attribute<vector<number>> envPositionOffset{
		this,
		"envPositionOffset",
		{0},
		description{"sets the 2D envelope position"},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::envelopePosition, GfParamType::offset);
		}},
		getter{
			[this]() -> atoms {
			 return GetGrainParams(GfParamName::envelopePosition, GfParamType::offset);;
		}},
		category{"Envelope"},
	};

	attribute<vector<number>> envPositionRandom{
		this,
		"envPositionRandom",
		{0},
		description{"sets the 2D envelope position"},
		setter{[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			return SetGrainParams(args, GfParamName::envelopePosition, GfParamType::random);
		}},
		getter{
			[this]() -> atoms {
			 return GetGrainParams(GfParamName::envelopePosition, GfParamType::random);;
		}},
		category{"Envelope"},
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
			if (args.size() <= 1) return {};
			if (grainCollection == nullptr) return {}; 
			if (args[2].a_type == 3) { //is symbol
				auto lastTarget = _target;
				_target = (int)args[0];
				this->try_call((std::string)args[1], atoms(args.begin() + 2, args.end()));
				_target = lastTarget;
				return{};
			}
			auto res = grainCollection->ParamSet((int)args[0], (std::string)args[1], (float)args[2]);	
			RefreshNamedAttributes((std::string)args[1]);
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
		},
	};


	// Streams

	message<> streamSet{
		this,
		"streamSet",
		"Sets the number of stream and asigns each grain to a stream depending on the mode. auto: rotate grains around max grains. per: grains are assigned to streams in chunks. random: grains are assigned to random streams.",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if(grainCollection == nullptr)return args;
			string modestr = args[0];
			int nstreams = args[1];
			if (nstreams < 1)
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
			grainCollection->StreamSet(mode, nstreams);
			_nstreams = nstreams;
			return {};
			}
	};

	message<> numberOfStreams{
		this,
		"nstreams",
		"Sets the number of streams",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if (args.size() <= 0) return{};
			int nstreams = args[0];

			if (nstreams < 1)
				return {};
			_nstreams = nstreams;
			grainCollection->StreamSet(GfStreamSetType::manualStreams, _nstreams);
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
			if(grainCollection == nullptr)return args;
			int lastTarget = _target;
			int lastStream = _streamTarget;
			int lastChannelTarget = _channelTarget;
			_channelTarget = 0;
			int streamTarget = args[0];
			float value = args[2];
			auto reflectionString = (string)args[1];
			auto returnCode = grainCollection->StreamParamSet(reflectionString, streamTarget, value);
		
			switch (returnCode){
				case GF_RETURN_CODE::GF_PARAM_NOT_FOUND:
					cout << stderr<< "Parameter " <<  reflectionString << " not found";
					break;
				case GF_RETURN_CODE::GF_ERR:
					cout << stderr << "Stream not found";
					break;
			}
			RefreshNamedAttributes(reflectionString);
			return {};
		}
	};

	message<> streamDeviate{
		this,
		"streamDeviate",
		"will deviate any parameter based on streams",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if(grainCollection == nullptr)return args;
			float value = 0;
			auto reflectionString = args[0];
			grainCollection->StreamParamFunc(reflectionString, &GfUtils::Deviate,(float)args[2], (float)args[1]);
			RefreshNamedAttributes(reflectionString);
			return {};
		}
	};

	message<> deviate{
		this,
		"deviate",
		"deviate a parameter {1} from a center value {2} in the amount of a bipolar depth {3}",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			std::string reflectionString = args[0];		
			float dev = args[1];
			float center = args[2];
			auto res = grainCollection->GrainParamFunc(reflectionString, &GfUtils::Deviate, center, dev);
			if (res != GF_RETURN_CODE::GF_SUCCESS) cout << stderr << "Parameter " << reflectionString << " not found" << "\n";
			RefreshNamedAttributes(reflectionString);
			return args;
		}
	};

	message<> streamRandomRange{
		this,
		"streamRandomrange",
		"will deviate any parameter based on streams",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if(grainCollection == nullptr)return args;
			float value = 0;
			auto reflectionString = args[0];
			grainCollection->StreamParamFunc(reflectionString, &GfUtils::RandomRange ,(float)args[1], (float)args[2]);
			RefreshNamedAttributes(reflectionString);
			return {};
			}
	};

	message<> randomRange{
		this,
		"randomrange",
		"picks a randomvalue between two points for each parameter",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			std::string reflectionString = args[0];
			GfParamName paramName;
			GfParamType paramType;
			float low = args[1];
			float high = args[2];
			auto res = grainCollection->GrainParamFunc(reflectionString, &GfUtils::RandomRange, low, high);
			if (res != GF_RETURN_CODE::GF_SUCCESS) cout << stderr << "Parameter " << reflectionString << " not found" << "\n";
			RefreshNamedAttributes(reflectionString);
			return args;
		}
	};

	message<> streamSpread{
		this,
		"streamSpread",
		"will create evenly spaced values between each number based on streams",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if(grainCollection == nullptr)return {};
			float value = 0;
			auto reflectionString = args[0];
			grainCollection->StreamParamFunc(reflectionString, &GfUtils::Lerp,(float)args[1], (float)args[2]);
			RefreshNamedAttributes(reflectionString);
			return {};
		}
	};

	message<> spread{
		this,
		"spread",
		"spread a parameter {1} by between values {2} and {3}",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			std::string reflectionString = args[0];
			GfParamName paramName;
			GfParamType paramType;
			float low = args[1];
			float high = args[2];
			auto res = grainCollection->GrainParamFunc(reflectionString, &GfUtils::Lerp, low, high);
			if (res != GF_RETURN_CODE::GF_SUCCESS) cout << stderr << "Parameter " << reflectionString << " not found" << "\n";
			RefreshNamedAttributes(reflectionString);
			return args;
		}
	};



	message<> bufChan{
		this,
		"bufChan",
		"sets the channel of grains with a certain channel. Should be used with the g message",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			int g = 0;
			int chan = 0;
			if (grainCollection == nullptr) return args;

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

			if (g >= grainCollection->Grains() || g < 0)
				return {};
			if(grainCollection == nullptr)return {};
			grainCollection->ChannelSet(g, chan);
			bufChans.touch();
			return {};
		}
	};

	message<> gchan{
		this,
		"gchan",
		"sets an attribute of message for all grains assigned to a buffer channel",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if (grainCollection == nullptr) return args;
			int chan = args[0];
			std::string reflectionString = args[1];
			float value = args[2];
			auto res = grainCollection->ChannelParamSet(chan, reflectionString, value);
			if (res != GF_RETURN_CODE::GF_SUCCESS) cout << stderr << "Parameter " << reflectionString << " not found" << "\n";
			RefreshNamedAttributes(reflectionString);
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
				UseDefaultEnvelope(true, _target);
				return {};
			}
			BufferRefMessage(bname, GFBuffers::envelope);
			UseDefaultEnvelope(false, _target);
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

	message<> env2DPosition{
		this,
		"env2DPosition",
		"sets the 2D envelope position",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			GrainMessage(args[0], GfParamName::envelopePosition, GfParamType::base);
			return {};
		}
	};

	// Buffeers
	message<> buf{
		this,
		"buf",
		"sets the granulation buffer",
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			if(grainCollection == nullptr)return args;
			string bname = (string)args[0];
			BufferRefMessage(bname, GFBuffers::buffer);
			auto b = grainCollection->GetBuffer(GFBuffers::buffer);
			if (b != nullptr) { o_grainInfo.send({ "buf", b->name() }); };
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






#pragma endregion
#pragma region GRAINFLOW_OTHER
	timer<timer_options::defer_delivery> internalUpdate{
		this,
		[this](const c74::min::atoms& args, const int inlet)->c74::min::atoms {
			OuputAllGrainInfo();
			RefreshLinkedAttribute();
			internalUpdate.delay(33);
			return{};
		}
	};	
#pragma endregion
};
