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

            float SampleBuffer(buffer_lock<>& buffer)
            {
                size_t chan =(bchan) % buffer.channel_count();
                auto frame = size_t(sourceSample);
                auto tween = sourceSample - frame;
                auto sample = buffer[frame* buffer.channel_count() + chan] * (1 - tween) + buffer[(frame+1) * buffer.channel_count() + chan] * tween;
                return sample;
            }

            float SampleEnvelope(buffer_lock<>& buffer, float grainClock)
            {
                auto nEnvelopes = this->nEnvelopes.value;
                if (nEnvelopes <= 1)
                {
                    auto frame = size_t((grainClock * buffer.frame_count()));
                    auto envelope = buffer[frame];
                    return envelope;
                }
                int sizePerEnvelope = buffer.frame_count() / nEnvelopes;
                int env1 = (int)(envelope.value * nEnvelopes);
                int env2 = env1 + 1;
                float fade = envelope.value * nEnvelopes - env1;
                auto frame = size_t((grainClock * sizePerEnvelope));
                auto envelope = buffer[(env1 * sizePerEnvelope + frame) % buffer.frame_count()] * (1 - fade) + buffer[(env2 * sizePerEnvelope + frame) % buffer.frame_count()] * fade;
                return envelope;
            };
        };
    }