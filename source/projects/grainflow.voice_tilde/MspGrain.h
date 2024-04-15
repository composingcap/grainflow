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
            void SampleParamBuffer(GFBuffers bufferType, GfParamName paramName)
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

            void SampleBuffer(buffer_lock<>& buffer, double* samples, double* positions, const int size)
            {
                if (!buffer.valid()) return;
                for (int i = 0; i < size; i++) {
                    auto channels = buffer.channel_count();
                    auto frames = buffer.frame_count();
                    auto chan = bchan < channels ? bchan : bchan % channels;
                    auto position = positions[i];
                    auto frame = static_cast<size_t>((position));
                    auto tween = position - frame;
                    //frame %= frames;
                    samples[i] = buffer[frame * channels + chan] * (1 - tween) + buffer[((frame + 1) * ((frame + 1) < frames) * channels + chan)] * tween;
            ;
                    
                }
            }

            void SampleEnvelope(buffer_lock<>& buffer, double* samples, double* grainClock, const int size)
            {
                if (!buffer.valid()) return;
                auto nEnvelopes = this->nEnvelopes.value;
                if (nEnvelopes <= 1)
                {
                    for (int i = 0; i < size; i++) {
                        auto frame = static_cast<size_t>((grainClock[i] * buffer.frame_count()));
                        samples[i] = buffer[frame];
                    }
                    return;
                }
                for (int i = 0; i < size; i++) {
                    int sizePerEnvelope = buffer.frame_count() / nEnvelopes;
                    int env1 = (int)(envelope.value * nEnvelopes);
                    int env2 = env1 + 1;
                    float fade = envelope.value * nEnvelopes - env1;
                    auto frame = static_cast<size_t>((grainClock[i] * sizePerEnvelope));
                    samples[i] = buffer[(env1 * sizePerEnvelope + frame) % buffer.frame_count()] * (1 - fade) + buffer[(env2 * sizePerEnvelope + frame) % buffer.frame_count()] * fade;
                }
            };
        };
    }