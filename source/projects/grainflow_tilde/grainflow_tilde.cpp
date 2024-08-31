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



int grainflow_tilde::GetMaxGrains() { return grainCollection!= nullptr ? grainCollection->Grains() : 0; }

grainflow_tilde::grainflow_tilde() {
	internalUpdate.delay(33);
}

grainflow_tilde::~grainflow_tilde()
{
	grainCollection.release();
}
#pragma region DSP

void grainflow_tilde::operator()(audio_bundle input, audio_bundle output)
{
	auto lockAvalible = lock.try_lock();
	if (!lockAvalible) return;
	//This is a hack to get around some wierd ordering issues when playing the first frame when the number of voices has changed
	maxGrainsThisFrame = std::min((int)(output.channel_count() / 8), grainCollection->Grains()); 
	auto currentNgrains= clamp((int)ngrains, 0, maxGrainsThisFrame);
	_ioConfig.livemode = liveMode;
	SetupInputs(_ioConfig, input_chans, input.samples());
	SetupOutputs(_ioConfig, output.samples());


	// Clear unused channels or we will get garbage
	_ioConfig.blockSize = output.frame_count();
	_ioConfig.samplerate = samplerate();
	for (int g = 0; g < output.channel_count(); g++)
	{
		memset(output.samples()[g], double(0), sizeof(double) * _ioConfig.blockSize);
	}


	if (!state) 
	{
		lock.unlock();
		return;
	}

	grainCollection->Proccess(_ioConfig);

	if (!hasUpdate) {
		for (int g = 0; g < currentNgrains; g++) {
			m_grainState[g] = _ioConfig.grainState[g][0];
			m_grainProgress[g] = _ioConfig.grainProgress[g][0];
			m_grainPlayhead[g] = _ioConfig.grainPlayhead[g][0];
			m_grainAmp[g] = _ioConfig.grainAmp[g][0];
			m_grainEnvelope[g] = _ioConfig.grainEnvelope[g][0];
			m_grainStreamChannel[g] = _ioConfig.grainStreamChannel[g][0];
			m_grainBufferChannel[g] = _ioConfig.grainBufferChannel[g][0];
		}
		hasUpdate = true;
	}

	lock.unlock();
}

#pragma endregion

atoms grainflow_tilde::GetGrainParams(GfParamName param, GfParamType type) {
	if (grainCollection == nullptr) return{};
	atoms values = {};
	values.resize(grainCollection->Grains());
	for (int i = 0; i < grainCollection->Grains(); i++){
			values[i] = grainCollection->ParamGet(i+1,param, type);
	}
	return values;
}

atoms grainflow_tilde::SetGrainParams(atoms args, GfParamName param, GfParamType type) {
    if (grainCollection == nullptr) return args;
	grainCollection->ParamSet(_target, param, type, (float)args[0]);
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

void grainflow_tilde::ouputGrainInfo(string name, atoms data) {
	auto mess = atoms({ name });
	for (int g = 0; g < std::min((int)data.size(), (int)ngrains); g++) {
		mess.push_back(data[g]);
	}
	o_grainInfo.send(mess);
}

void grainflow_tilde::SetupOutputs(gfIoConfig& ioConfig, double** outputs) {

	// Ouputs are constant because they are based on the max grain count
	ioConfig.grainOutput = &outputs[0 * maxGrainsThisFrame];
	ioConfig.grainState = &outputs[1 * maxGrainsThisFrame];
	ioConfig.grainProgress = &outputs[2 * maxGrainsThisFrame];
	ioConfig.grainPlayhead = &outputs[3 * maxGrainsThisFrame];
	ioConfig.grainAmp = &outputs[4 * maxGrainsThisFrame];
	ioConfig.grainEnvelope = &outputs[5 * maxGrainsThisFrame];
	ioConfig.grainStreamChannel = &outputs[6 * maxGrainsThisFrame];
	ioConfig.grainBufferChannel = &outputs[7 * maxGrainsThisFrame];
}

void grainflow_tilde::SetupInputs(gfIoConfig& ioConfig, int* inputChannels, double** inputs) {

	ioConfig.grainClockChans = inputChannels[0];
	ioConfig.traversalPhasorChans = inputChannels[1];
	ioConfig.fmChans = inputChannels[2];
	ioConfig.amChans = inputChannels[3];

	// These varible indicate the starting indices of each mc parameter
	auto grainClockCh = 0;
	auto traversalPhasorCh = ioConfig.grainClockChans;
	auto fmCh = traversalPhasorCh + ioConfig.traversalPhasorChans;
	auto amCh = fmCh + ioConfig.fmChans;

	ioConfig.grainClock = &inputs[grainClockCh];
	ioConfig.traversalPhasor = &inputs[traversalPhasorCh];
	ioConfig.fm = &inputs[fmCh];
	ioConfig.am = &inputs[amCh];

}

void grainflow_tilde::GrainInfoReset() {
	ouputGrainInfo("grainState", { 0 });
	ouputGrainInfo("grainPosition", { 0 });
	ouputGrainInfo("grainWindow", { 0 });
	ouputGrainInfo("grainAmp", { 0 });
	ouputGrainInfo("grainProgress", { 0 });
	ouputGrainInfo("grainBufferChannel", { 0 });
	ouputGrainInfo("grainStreamChannel", { 0 });
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
		grainCollection->StreamParamSet(_streamTarget, param, type, value);
	}

	if (_channelTarget > 0)
	{
		grainCollection->ChannelParamSet(_channelTarget, param, type, value);
	}

	grainCollection->ParamSet(_target, param, type, value);	

}

void grainflow_tilde::BufferRefMessage(string bname, GFBuffers type)
{
	if (bname.empty())
		return;

	if (_target > 0)
	{
		auto buf = grainCollection->GetGrain(_target - 1)->GetBuffer(type);
		buf->set(""); // This forces a refresh even if the name is the same
		buf->set(bname);
		return;
	}
	for (int g = 0; g < grainCollection->Grains(); g++)
	{
		auto buf = grainCollection->GetGrain(g)->GetBuffer(type); // To access ir must be converted to the correct type
		buf->set("");
		buf->set(bname);
	}
}

void grainflow_tilde::UseDefaultEnvelope(bool state){

	if (_target > 0)
	{
		grainCollection->GetGrain(_target - 1)->useDefaultEnvelope = state;
		return;
	}
	for (int g = 0; g < grainCollection->Grains(); g++)
	{
		grainCollection->GetGrain(g)->useDefaultEnvelope = state;// To access ir must be converted to the correct type

	}
}
/// <summary>
/// Forces a refresh of a type of buffer.
/// </summary>
void grainflow_tilde::BufferRefresh(GFBuffers type)
{
	if (grainCollection == nullptr) return;
	for (int g = 0; g < grainCollection->Grains(); g++)
	{
		auto buf = grainCollection->GetGrain(g)->GetBuffer(type); // To access ir must be converted to the correct type
		auto name = buf->name();
		buf->set("");
		buf->set(name);
	}
};

void grainflow_tilde::Init()
{
	for (int g = 0; g < grainCollection->Grains(); g++)
	{
		grainCollection->GetGrain(g)->SetIndex(g);
		grainCollection->GetGrain(g)->SetBuffer(GFBuffers::buffer, (new buffer_reference(this, nullptr, false)));
		grainCollection->GetGrain(g)->SetBuffer(GFBuffers::envelope, (new buffer_reference(this, nullptr, false)));
		grainCollection->GetGrain(g)->SetBuffer(GFBuffers::delayBuffer, (new buffer_reference(this, nullptr, false)));
		grainCollection->GetGrain(g)->SetBuffer(GFBuffers::windowBuffer, (new buffer_reference(this, nullptr, false)));
		grainCollection->GetGrain(g)->SetBuffer(GFBuffers::rateBuffer, (new buffer_reference(this, nullptr, false)));

		auto env = grainCollection->GetGrain(g)->GetBuffer(GFBuffers::envelope);
		env->set(envArg);
		auto buf = grainCollection->GetGrain(g)->GetBuffer(GFBuffers::buffer);
		buf->set(bufferArg);
	}
	grainCollection->samplerate = samplerate();

}


void grainflow_tilde::Reinit(int grains)
{
 	lock.lock();
	grainCollection.reset(new GfGrainCollection<buffer_reference,INTERNALBLOCK>(bufferReader, grains));
	auto maxGrains = grains;
	if (ngrains > maxGrains) ngrains = maxGrains;
	if(autoOverlap) this->TrySetAttributeOrMessage("windowOffset", atoms{ 1.0f / ngrains });
	m_grainState.resize(maxGrains);
	m_grainProgress.resize(maxGrains);
	m_grainPlayhead.resize(maxGrains);
	m_grainAmp.resize(maxGrains);
	m_grainEnvelope.resize(maxGrains);
	m_grainStreamChannel.resize(maxGrains);
	m_grainBufferChannel.resize(maxGrains);
	Init();
	lock.unlock();
}

void grainflow_tilde::RefreshAllAttributes() {
	auto a = this->attributes();
	for (auto i = a.begin(); i != a.end(); i++) {
		i->second->touch();
	}
}

void grainflow_tilde::RefreshNamedAttributes(std::string name) {
	this->attributes().find(name)->second->touch();
}

void grainflow_tilde::OuputAllGrainInfo() {
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
}

	void grainflow_tilde::RefreshLinkedAttribute() {
		//This is needed to reflect interanl changes- running touch in the setter causes a crash unfortunatly
		if (!_linkedParamsDirty)return;
		transpose.touch();
		transposeRandom.touch();
		transposeOffset.touch();

		rate.touch();
		rateRandom.touch();
		rateOffset.touch();

		glisson.touch();
		glissonRandom.touch();
		glissonOffset.touch();

		glissonSt.touch();
		glissonStRandom.touch();
		glissonStOffset.touch();
		_linkedParamsDirty = false;
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
