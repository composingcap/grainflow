#pragma once
#include "IGrain.h"
#include "c74_min.h"

///Provides an interface to grainflow using Max Min API
using namespace c74::min;
    namespace Grainflow
    {
        class MspGrain : public IGrain<buffer_reference, buffer_lock<>>
        {
        public:
            inline void SampleParamBuffer(GFBuffers bufferType, GfParamName paramName)
            {
                auto buf = GetBuffer(bufferType);
                auto param = ParamGetHandle(paramName);
                if (param->mode == GfBufferMode::normal || buf == nullptr)
                {
                    SampleParam(paramName);
                    return;
                }
                buffer_lock<> paramBuf(*buf);
                if (!paramBuf.valid())
                    return;
                size_t frame = 0;
                if (param->mode == GfBufferMode::buffer_sequence)
                {
                    frame = index % paramBuf.frame_count();
                }
                else if (param->mode == GfBufferMode::buffer_random)
                {
                    frame = rd() % paramBuf.frame_count();
                }

                param->value = paramBuf.lookup(frame, 0);
            }

            inline void SampleBuffer(const float* buffer, const int frames, const int channels, double* __restrict samples, double* positions, const int size)
            {
                for (int i = 0; i < size; i++) {

                    auto chan = bchan < channels ? bchan : bchan % channels;
                    auto position = positions[i];
                    auto frame = (size_t)(position);
                    auto tween = position - frame;
                    samples[i] = buffer[frame * channels + chan] * (1 - tween) + buffer[((frame + 1) * ((frame + 1) < frames) * channels + chan)] * tween;
                   
                }
            }


            inline void SampleEnvelope(const float* buffer, const int frames,  double* __restrict samples, double* grainClock, const int size)
            {
                auto nEnvelopes = this->nEnvelopes.value;
                if (nEnvelopes <= 1)
                {
                    for (int i = 0; i < size; i++) {
                        auto frame = (size_t)(grainClock[i] * frames);
                        samples[i] = buffer[frame];
                    }
                    return;
                }
                for (int i = 0; i < size; i++) {
                    int sizePerEnvelope = frames / nEnvelopes;
                    int env1 = (int)(envelope.value * nEnvelopes);
                    int env2 = env1 + 1;
                    float fade = envelope.value * nEnvelopes - env1;
                    auto frame = static_cast<size_t>((grainClock[i] * sizePerEnvelope));
                    samples[i] = buffer[(env1 * sizePerEnvelope + frame) % frames] * (1 - fade) + buffer[(env2 * sizePerEnvelope + frame) % frames] * fade;
                }
            };
        };
    }
