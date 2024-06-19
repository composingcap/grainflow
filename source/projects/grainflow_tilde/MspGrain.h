#pragma once
#include <algorithm> 
#include "IGrain.h"
#include "c74_min.h"

///Provides an interface to grainflow using Max Min API
using namespace c74::min;
    namespace Grainflow
    {
        template<size_t BLOCKSIZE>
        class MspGrain : public IGrain<buffer_reference, buffer_lock<>, BLOCKSIZE>
        {
        public:
            inline void SampleParamBuffer(GFBuffers bufferType, GfParamName paramName)
            {
                auto buf = this->GetBuffer(bufferType);
                auto param = this->ParamGetHandle(paramName);
                if (param->mode == GfBufferMode::normal || buf == nullptr)
                {
                    this->SampleParam(paramName);
                    return;
                }
                buffer_lock<> paramBuf(*buf);
                if (!paramBuf.valid())
                    return;
                size_t frame = 0;
                if (param->mode == GfBufferMode::buffer_sequence)
                {
                    frame = this->g % paramBuf.frame_count();
                }
                else if (param->mode == GfBufferMode::buffer_random)
                {
                    frame = this->rd() % paramBuf.frame_count();
                }

                param->value = paramBuf.lookup(frame, 0);
            }

            inline void SampleBuffer(buffer_reference* ref, double* __restrict samples, double* positions, const int size)
            {
                buffer_lock<> sampleLock(*ref);
                if (!sampleLock.valid()) return;
                int frames = sampleLock.frame_count();
                int channels = sampleLock.channel_count();
                channels = std::max(channels, 1);
                auto chan = (int)this->channel.value % this->nchannels;
                for (int i = 0; i < size; i++) {
                    if (!sampleLock.valid()) return;
                    auto position = positions[i];
                    auto frame = (size_t)(position);
                    auto tween = position - frame;
                    samples[i] = sampleLock[frame * channels + chan] * (1 - tween) + sampleLock[((frame + 1) * ((frame + 1) < frames) * channels + chan)] * tween;
                   
                }
            }

            inline void UpdateBufferInfo(buffer_reference* ref, gfIoConfig ioConfig) {
              
                buffer_lock<> sampleLock(*ref);

                this->bufferFrames = sampleLock.valid() ? sampleLock.frame_count(): 1;
                this->oneOverBufferFrames = sampleLock.valid() ? 1.0f / this->bufferFrames : 0;
                this->sampleRateAdjustment = sampleLock.valid() && !ioConfig.livemode ? sampleLock.samplerate() / ioConfig.samplerate : 1;
                this->nchannels = sampleLock.valid() ? sampleLock.channel_count() : 1;
            }


            inline void SampleEnvelope(buffer_reference* ref, double* __restrict samples, double* grainClock, const int size)
            {
                if (this->useDefaultEnvelope){
                    for (int i = 0; i < size; i++) {
                        size_t frame = std::fmax(((std::fmin((grainClock[i] * 1024.0),1023.0))),0.0);
                    samples[i] = Grainflow::HanningEnvelope[frame];
                    }
                    return;
                }
                
                buffer_lock<> envelopeLock(*ref);
                if (!envelopeLock.valid()) return;
                auto nEnvelopes = this->nEnvelopes.value;
                int frames = envelopeLock.frame_count();

                if (nEnvelopes <= 1)
                {
                    for (int i = 0; i < size; i++) {
                        if (!envelopeLock.valid()) return;
                        auto frame = (size_t)(grainClock[i] * frames);
                        samples[i] = envelopeLock[frame];
                    }
                    return;
                }
                for (int i = 0; i < size; i++) {
                    if (!envelopeLock.valid()) return;
                    int sizePerEnvelope = frames / nEnvelopes;
                    int env1 = (int)(this->envelope.value * nEnvelopes);
                    int env2 = env1 + 1;
                    float fade = this->envelope.value * nEnvelopes - env1;
                    auto frame = static_cast<size_t>((grainClock[i] * sizePerEnvelope));
                    samples[i] = envelopeLock[(env1 * sizePerEnvelope + frame) % frames] * (1 - fade) + envelopeLock[(env2 * sizePerEnvelope + frame) % frames] * fade;
                }
            };
        };
    }
