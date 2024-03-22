#pragma once
#include "c74_min.h"
#include "IGfBuffer.h"
using namespace c74::min;
 
namespace Grainflow{
    class GfMaxBuffer : public IGfBuffer<buffer_reference>{
        private:
            buffer_reference* bufferRef;
            buffer_lock<>* samps;
        public:

        void Prepare(){
            buffer_lock<> samps(*bufferRef); 
            this->samps = &samps;
        }

        void SetBufferRef(buffer_reference* buffer){
            bufferRef = buffer;
        }

        void SetByName(string name){
            bufferRef->set(name);
        }

        string GetName(){
            return bufferRef->name();
        }

        bool Valid(){
            return samps->valid();
        }

        int GetSize(){
            return samps->frame_count();
        }

        int GetSamplerate(){
            return samps->samplerate();
        }

        int GetChannels(){
            return samps->channel_count();
        }

        float ReadNormalized(float position, int channel){
            auto frame = size_t((position * samps->frame_count()));
			auto sample = samps->valid() ? samps->lookup(frame, channel) : 0;
            return sample;
        }

        float ReadNormalizedLerp(float position, int channel){
			auto frame = size_t(position);
			auto tween = position - frame;
            auto sample = samps->valid() ? samps->lookup(frame, channel) * (1 - tween) + samps->lookup((frame + 1), channel) * tween : 0;
            return sample;
        }

        float ReadSample(int frame, int channel){
            auto frame_t = size_t(frame);
			auto sample = samps->valid() ? samps->lookup(frame_t, channel) : 0;
            return sample;
        }
    };
}