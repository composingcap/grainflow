/// @file
///	@ingroup 	grainflow
///	@copyright	Copyright 2024 Christopher Poovey
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
///
///
///

#include "grainflow_tilde.h"

using namespace c74::min;
using namespace Grainflow;

long simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count);
long simplemc_inputchanged(c74::max::t_object* x, long g, long count);



int grainflow_tilde::GetMaxGrains() { return _maxGrains; }

grainflow_tilde::~grainflow_tilde()
{
	grainInfo.release();
}
#pragma region DSP

void grainflow_tilde::operator()(audio_bundle input, audio_bundle output)
{
	auto lockAvalible = lock.try_lock();
	if (!lockAvalible) return;
	//This is a hack to get around some wierd ordering issues when playing the first frame when the number of voices has changed
	maxGrainsThisFrame = std::min((int)(output.channel_count() / 8), _maxGrains); 
	auto ngrains= clamp(_ngrains, 0, maxGrainsThisFrame);
	_ioConfig.livemode = liveMode;
	_ioConfig.in = input.samples();
	_ioConfig.out = output.samples();

	// These varible indicate the starting indices of each mc parameter
	_ioConfig.grainClockCh = 0;
	_ioConfig.traversalPhasorCh = input_chans[0];
	_ioConfig.fmCh = _ioConfig.traversalPhasorCh + input_chans[1];
	_ioConfig.amCh = _ioConfig.fmCh + input_chans[2];

	// Ouputs are constant because they are based on the max grain count
	_ioConfig.grainOutput = 0;
	_ioConfig.grainState = 1 * maxGrainsThisFrame;
	_ioConfig.grainProgress = 2 * maxGrainsThisFrame;
	_ioConfig.grainPlayhead = 3 * maxGrainsThisFrame;
	_ioConfig.grainAmp = 4 * maxGrainsThisFrame;
	_ioConfig.grainEnvelope = 5 * maxGrainsThisFrame;
	_ioConfig.grainStreamChannel = 6 * maxGrainsThisFrame;
	_ioConfig.grainBufferChannel = 7 * maxGrainsThisFrame;


	// Clear unused channels or we will get garbage
	_ioConfig.blockSize = output.frame_count();
	_ioConfig.samplerate = samplerate();
	for (int g = 0; g < output.channel_count(); g++)
	{
		memset(_ioConfig.out[g], double(0), sizeof(double) * _ioConfig.blockSize);
	}


	if (!_state) 
	{
		lock.unlock();
		return;
	}

	for (int g = 0; g < ngrains; g++)
	{
		_ioConfig.grainClock = _ioConfig.grainClockCh + (g % input_chans[0]);
		_ioConfig.traversalPhasor = _ioConfig.traversalPhasorCh + (g % input_chans[1]);
		_ioConfig.fm = _ioConfig.fmCh + (g % input_chans[2]);
		_ioConfig.am = _ioConfig.amCh + (g % input_chans[3]);

		grainInfo[g].Proccess(_ioConfig);		
	}
	lock.unlock();
}

#pragma endregion

atoms grainflow_tilde::GetGrainParams(GfParamName param, GfParamType type) {
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
atoms grainflow_tilde::SetGrainParams(atoms args, GfParamName param, GfParamType type) {
	if (args.size() <= 1) {
		GrainMessage(args[0], param, type);
		return args;
	}
	for (int i = 0; i < _maxGrains; i++) {
		grainInfo[i].ParamSet((float)args[i % args.size()], param, type);
	}
	return args;
}


void grainflow_tilde::TrySetAttributeOrMessage(string name, atoms args) {
	if (auto get = this->attributes().find(name); get != this->attributes().end()) {
		get->second->set(args);
		return;
	}
	this->try_call(name, args);
	return;
}

/// <summary>
/// Helper to make targeting grains easier
/// </summary>
/// <param name="value"></param>
/// <param name="param"></param>
/// <param name="type"></param>
void grainflow_tilde::GrainMessage(float value, GfParamName param, GfParamType type)
{
	if (_streamTarget > 0)
	{
		for (int g = 0; g < _maxGrains; g++)
		{
			if (grainInfo[g].stream + 1 != _streamTarget)
				continue;
			grainInfo[g].ParamSet(value, param, type);
		}
		return;
	}

	if (_channelTarget > 0)
	{
		for (int g = 0; g < _maxGrains; g++)
		{
			if ((int)grainInfo[g].channel.value + 1 != _channelTarget)
				continue;
			grainInfo[g].ParamSet(value, param, type);
		}
		return;
	}

	if (_target > 0)
	{
		if (_target > _maxGrains)
			return;

		grainInfo[_target - 1].ParamSet(value, param, type);
		return;
	}

		for (int g = 0; g < _maxGrains; g++)
		{
			grainInfo[g].ParamSet(value, param, type);
		}

		return;
	

};

void grainflow_tilde::BufferRefMessage(string bname, GFBuffers type)
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
	for (int g = 0; g < _maxGrains; g++)
	{
		auto buf = grainInfo[g].GetBuffer(type); // To access ir must be converted to the correct type
		buf->set("");
		buf->set(bname);
	}
}

void grainflow_tilde::UseDefaultEnvelope(bool state){

	if (_target > 0)
	{
		grainInfo[_target - 1].useDefaultEnvelope = state;
		return;
	}
	for (int g = 0; g < _maxGrains; g++)
	{
		grainInfo[g].useDefaultEnvelope = state;// To access ir must be converted to the correct type

	}
}
/// <summary>
/// Forces a refresh of a type of buffer.
/// </summary>
void grainflow_tilde::BufferRefresh(GFBuffers type)
{
	for (int g = 0; g < _maxGrains; g++)
	{
		auto buf = grainInfo[g].GetBuffer(type); // To access ir must be converted to the correct type
		auto name = buf->name();
		buf->set("");
		buf->set(name);
	}
};

void grainflow_tilde::Init()
{
	for (int g = 0; g < _maxGrains; g++)
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


void grainflow_tilde::Reinit(int grains)
{
 	lock.lock();
	grainInfo.reset((new MspGrain<INTERNALBLOCK>[grains]));
	_maxGrains = grains;
	Init();
	lock.unlock();
}

#pragma region MAX_API_EX
/// <summary>
/// Allows for the use of mc outlets. Must be added as an event at the objects startup
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long simplemc_multichanneloutputs(c74::max::t_object* x, long g, long count)
{
	minwrap<grainflow_tilde>* ob = (minwrap<grainflow_tilde> *)(x);
	return ob->m_min_object.GetMaxGrains();
}
/// <summary>
/// Allows for the use of mc inputs. Must be added as an event at the objects startup. Also requires an input channels regester
/// </summary>
/// <param name="x"></param>
/// <param name="index"></param>
/// <param name="count"></param>
/// <returns></returns>
long simplemc_inputchanged(c74::max::t_object* x, long g, long count)
{
	minwrap<grainflow_tilde>* ob = (minwrap<grainflow_tilde> *)(x);
	// auto chan_number = ob->m_min_object.GetMaxGrains(); //We should check for bonus channels and handle it
	ob->m_min_object.input_chans[g] = count > 0 ? count : 1; // Tells us how many channels are in each inlet
	return false;
}
#pragma endregion

MIN_EXTERNAL(grainflow_tilde);