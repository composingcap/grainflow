#pragma once
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
                    frame = this->index % paramBuf.frame_count();
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
                for (int i = 0; i < size; i++) {

                    auto chan = this->bchan < channels ? this->bchan : this->bchan % channels;
                    auto position = positions[i];
                    auto frame = (size_t)(position);
                    auto tween = position - frame;
                    samples[i] = sampleLock[frame * channels + chan] * (1 - tween) + sampleLock[((frame + 1) * ((frame + 1) < frames) * channels + chan)] * tween;
                   
                }
            }

            inline void UpdateBufferInfo(buffer_reference* ref, gfIoConfig ioConfig) {
              
                buffer_lock<> sampleLock(*ref);
                if (ioConfig.livemode || !sampleLock.valid()) {
                    this->sampleRateAdjustment = 1;
                    this->bufferFrames = 0;
                    this->oneOverBufferFrames = 1;
                    return;
                }
                this->bufferFrames = sampleLock.frame_count();
                this->oneOverBufferFrames = 1.0f / this->bufferFrames;
                this->sampleRateAdjustment = sampleLock.samplerate() / ioConfig.samplerate;
                this -> chan = (this->bchan) % sampleLock.channel_count();




            }


            inline void SampleEnvelope(buffer_reference* ref, double* __restrict samples, double* grainClock, const int size)
            {
                buffer_lock<> envelopeLock(*ref);
                if (!envelopeLock.valid()) return;
                auto nEnvelopes = this->nEnvelopes.value;
                int frames = envelopeLock.frame_count();

                if (nEnvelopes <= 1)
                {
                    for (int i = 0; i < size; i++) {
                        auto frame = (size_t)(grainClock[i] * frames);
                        samples[i] = envelopeLock[frame];
                    }
                    return;
                }
                for (int i = 0; i < size; i++) {
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
