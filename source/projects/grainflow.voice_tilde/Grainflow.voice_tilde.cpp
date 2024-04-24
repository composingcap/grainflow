/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
///
///

#include "Grainflow.voice_tilde.h"

using namespace c74::min;
using namespace Grainflow;

long simplemc_multichanneloutputs(c74::max::t_object* x, long index, long count);
long simplemc_inputchanged(c74::max::t_object* x, long index, long count);



int grainflow_voice_tilde::GetMaxGrains() { return maxGrains; }

grainflow_voice_tilde::~grainflow_voice_tilde()
{
	Cleanup();
}
#pragma region DSP

void grainflow_voice_tilde::operator()(audio_bundle input, audio_bundle output)
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

void grainflow_voice_tilde::ProccessGrain(MspGrain* thisGrain, int g, IoConfig ioConfig)
{
	if (ioConfig.blockSize < INTERNALBLOCK) return;
	float emptyBuffer[1] = { 0 };
	buffer_lock<> grainSamples(*(thisGrain->GetBuffer(GFBuffers::buffer)));
	buffer_lock<> envelopeSamples(*(thisGrain->GetBuffer(GFBuffers::envelope)));

	float* envelopeBuffer = emptyBuffer;
	int envelopeFrames = 1;
	if (envelopeSamples.valid()) {
		envelopeBuffer = &envelopeSamples[0];
		envelopeFrames = envelopeSamples.frame_count();
	}

	float* grainBuffer = emptyBuffer;
	int grainFrames = 1;
	int grainNChannels = 1;
	if (envelopeSamples.valid()) {
		grainBuffer = &grainSamples[0];
		grainFrames = grainSamples.frame_count();
		grainNChannels = grainSamples.channel_count();
	}

	thisGrain->SetSampleRateAdjustment(ioConfig.livemode ? 1 : grainSamples.samplerate() / samplerate());
	thisGrain->SetBufferFrames(grainSamples.valid() ? grainSamples.frame_count() : 1);



	// Determine the channel to pull from for each grain.

	size_t chan = grainSamples.valid() ? (thisGrain->bchan) % grainSamples.channel_count() : 0;
	double stream = thisGrain->stream;
	float windowPortion = 1/std::clamp(1 - thisGrain->space.value, 0.0001f, 1.0f);
	// Check grain clock to make sure it is moving
	if (ioConfig.in[ioConfig.grainClock][0] == ioConfig.in[ioConfig.grainClock][1])
		return;

	//memset(ioConfig.out[g + ioConfig.grainBufferChannel], chan + 1, sizeof(double) * _ioConfig.blockSize);
	//memset(ioConfig.out[g + ioConfig.grainStreamChannel], stream + 1, sizeof(double) * _ioConfig.blockSize);
	float windowVal = thisGrain->window.value;


	for (int i = 0; i < ioConfig.blockSize / INTERNALBLOCK; i++)
	{
		int block = i * INTERNALBLOCK;
		auto amp = thisGrain->amplitude.value;
		double* grainClock = &ioConfig.in[ioConfig.grainClock][block];
		double* inputAmp = &ioConfig.in[ioConfig.am][block];
		double* fm = &ioConfig.in[ioConfig.fm][block];
		double* traversalPhasor = &ioConfig.in[ioConfig.traversalPhasor][block];
		
		double* grainProgress = &ioConfig.out[g + ioConfig.grainProgress][block];
		double* grainState = &ioConfig.out[g + ioConfig.grainState][block];
		double* grainPlayhead = &ioConfig.out[g + ioConfig.grainPlayhead][block];
		double* grainAmp = &ioConfig.out[g + ioConfig.grainAmp][block];
		double* grainEnvelope = &ioConfig.out[g + ioConfig.grainEnvelope][block];
		double* grainOutput = &ioConfig.out[g + ioConfig.grainOutput][block];
		double* grainChannels = &ioConfig.out[g + ioConfig.grainBufferChannel][block];
		double* grainStreams = &ioConfig.out[g + ioConfig.grainStreamChannel][block];

		thisGrain->ProccessGrainClock(grainClock, grainProgress, windowVal, windowPortion, INTERNALBLOCK);
		auto valueFrames = thisGrain->GrainReset(grainProgress, traversalPhasor, grainState, INTERNALBLOCK);
		thisGrain->Increment(fm, grainProgress, sampleIdTemp, tempDouble, INTERNALBLOCK);
		thisGrain->SampleEnvelope(envelopeBuffer, envelopeFrames, grainEnvelope, grainProgress, INTERNALBLOCK);
		thisGrain->SampleBuffer(grainBuffer, grainFrames, grainNChannels, grainOutput, sampleIdTemp, INTERNALBLOCK);
		thisGrain->ExpandValueTable(valueFrames, grainState, ampTemp, densityTemp, INTERNALBLOCK);
		thisGrain->OuputBlock(sampleIdTemp, ampTemp, densityTemp, thisGrain->oneOverBufferFrames, stream, chan, inputAmp, grainPlayhead, grainAmp, grainEnvelope, grainOutput, grainChannels, grainStreams, INTERNALBLOCK);
	}


	
}

#pragma endregion



/// <summary>
/// Helper to make targeting grains easier
/// </summary>
/// <param name="value"></param>
/// <param name="param"></param>
/// <param name="type"></param>
void grainflow_voice_tilde::GrainMessage(float value, GfParamName param, GfParamType type)
{
	if (_streamTarget > 0)
	{
		for (int g = 0; g < maxGrains; g++)
		{
			if (grainInfo[g].stream + 1 != _streamTarget)
				continue;
			grainInfo[g].ParamSet(value, param, type);
		}
		return;
	}

	if (_channelTarget > 0)
	{
		for (int g = 0; g < maxGrains; g++)
		{
			if (grainInfo[g].bchan + 1 != _channelTarget)
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

void grainflow_voice_tilde::BufferRefMessage(string bname, GFBuffers type)
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
void grainflow_voice_tilde::BufferRefresh(GFBuffers type)
{
	for (int g = 0; g < maxGrains; g++)
	{
		auto buf = grainInfo[g].GetBuffer(type); // To access ir must be converted to the correct type
		auto name = buf->name();
		buf->set("");
		buf->set(name);
	}
};

void grainflow_voice_tilde::Init()
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

void grainflow_voice_tilde::Cleanup()
{
	grainInfo.reset();
}

void grainflow_voice_tilde::Reinit(int grains)
{
	Cleanup();
	grainInfo = std::unique_ptr<MspGrain[]>(new MspGrain[grains]);
	maxGrains = grains;
	Init();
}

#pragma region MAX_API_EX
/// <summary>
/// Allows for the use of mc outlets. Must be added as an event at the objects startup
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long simplemc_multichanneloutputs(c74::max::t_object* x, long index, long count)
{
	minwrap<grainflow_voice_tilde>* ob = (minwrap<grainflow_voice_tilde> *)(x);
	return ob->m_min_object.GetMaxGrains();
}
/// <summary>
/// Allows for the use of mc inputs. Must be added as an event at the objects startup. Also requires an input channels regester
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long simplemc_inputchanged(c74::max::t_object* x, long index, long count)
{
	minwrap<grainflow_voice_tilde>* ob = (minwrap<grainflow_voice_tilde> *)(x);
	// auto chan_number = ob->m_min_object.GetMaxGrains(); //We should check for bonus channels and handle it
	ob->m_min_object.input_chans[index] = count > 0 ? count : 1; // Tells us how many channels are in each inlet
	return false;
}
#pragma endregion

MIN_EXTERNAL(grainflow_voice_tilde);