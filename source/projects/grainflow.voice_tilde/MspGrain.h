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
                if (!buffer.valid()) return 0;
                auto channels = buffer.channel_count();
                auto frames = buffer.frame_count();
                auto chan = GfUtils::mod(bchan,channels);
                auto frame = static_cast<size_t>((sourceSample));
                auto tween = sourceSample - frame;

                //frame %= frames;
                auto sample = buffer[frame* channels + chan] * (1 - tween) + buffer[(GfUtils::mod(frame+1,frames) * channels + chan)] * tween;
                return sample;
            }

            float SampleEnvelope(buffer_lock<>& buffer, float grainClock)
            {
                if (!buffer.valid()) return 0;
                auto nEnvelopes = this->nEnvelopes.value;
                if (nEnvelopes <= 1)
                {
                    auto frame = static_cast<size_t>((grainClock * buffer.frame_count()));
                    auto envelope = buffer[frame];
                    return envelope;
                }
                int sizePerEnvelope = buffer.frame_count() / nEnvelopes;
                int env1 = (int)(envelope.value * nEnvelopes);
                int env2 = env1 + 1;
                float fade = envelope.value * nEnvelopes - env1;
                auto frame = static_cast<size_t>((grainClock * sizePerEnvelope));
                auto envelope = buffer[(env1 * sizePerEnvelope + frame) % buffer.frame_count()] * (1 - fade) + buffer[(env2 * sizePerEnvelope + frame) % buffer.frame_count()] * fade;
                return envelope;
            };
        };
    }