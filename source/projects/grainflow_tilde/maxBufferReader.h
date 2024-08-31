#pragma once
#include <algorithm> 
#include "gfGrain.h"
#include "c74_min.h"
#include "gfIBufferReader.h"

///Provides an interface to grainflow using Max Min API
using namespace c74::min;
    namespace Grainflow
    {
       class MaxBufferReader{
       public:
           static void UpdateBufferInfo(buffer_reference* buffer, gfIoConfig ioConfig, GfBufferInfo* bufferInfo) {
                buffer_lock<> sampleLock(*buffer);
                if (!sampleLock.valid()) return;
                bufferInfo->bufferFrames = sampleLock.frame_count();
                bufferInfo->oneOverBufferFrames = 1.0f / bufferInfo->bufferFrames;
                bufferInfo->sampleRateAdjustment = !ioConfig.livemode ? sampleLock.samplerate() / ioConfig.samplerate : 1;
                bufferInfo->nchannels = sampleLock.channel_count();
            }
           static bool SampleParamBuffer(buffer_reference* buffer, GfParam *param, int grainId) {
                if (param->mode == GfBufferMode::normal || buffer == nullptr)
                {
                    return false;
                }
                buffer_lock<> paramBuf(*buffer);
                if (!paramBuf.valid())
                    return false;
                size_t frame = 0;
                if (param->mode == GfBufferMode::buffer_sequence)
                {
                    frame = grainId % paramBuf.frame_count();
                }
                else if (param->mode == GfBufferMode::buffer_random)
                {
                    frame = grainId % paramBuf.frame_count();
                }
                param->value = paramBuf.lookup(frame, 0);
                return true;
            }
           static void SampleBuffer(buffer_reference* buffer, int channel, double* __restrict samples, double* positions, const int size) {
                buffer_lock<> sampleLock(*buffer);
                if (!sampleLock.valid()) return;
                int frames = sampleLock.frame_count();
                int channels = sampleLock.channel_count();
                channels = std::max(channels, 1);
                auto chan = channel % channels;
                for (int i = 0; i < size; i++) {
                    auto position = positions[i];
                    auto frame = (size_t)(position);
                    auto tween = position - frame;
                    samples[i] = sampleLock[frame * channels + chan] * (1 - tween) + sampleLock[((frame + 1) * ((frame + 1) < frames) * channels + chan)] * tween;
                }
            };
           static void SampleEnvelope(buffer_reference* buffer, const bool useDefault, const int nEnvelopes, const float env2dPos, double* __restrict samples, double* grainClock, const int size) {
                    if (useDefault) {
                        for (int i = 0; i < size; i++) {
                            size_t frame = std::fmax(((std::fmin((grainClock[i] * 1024.0), 1023.0))), 0.0);
                            samples[i] = Grainflow::HanningEnvelope[frame];
                        }
                        return;
                    }

                    buffer_lock<> envelopeLock(*buffer);
                    if (!envelopeLock.valid()) return;
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
                        int env1 = (int)(env2dPos * nEnvelopes);
                        int env2 = env1 + 1;
                        float fade = env2dPos * nEnvelopes - env1;
                        auto frame = static_cast<size_t>((grainClock[i] * sizePerEnvelope));
                        samples[i] = envelopeLock[(env1 * sizePerEnvelope + frame) % frames] * (1 - fade) + envelopeLock[(env2 * sizePerEnvelope + frame) % frames] * fade;
                    }
                };    
           static GfIBufferReader<buffer_reference> GetMaxBufferReader() {
               GfIBufferReader<buffer_reference> _bufferReader;
               _bufferReader.SampleBuffer = MaxBufferReader::SampleBuffer;
               _bufferReader.SampleEnvelope = MaxBufferReader::SampleEnvelope;
               _bufferReader.UpdateBufferInfo = MaxBufferReader::UpdateBufferInfo; 
               _bufferReader.SampleParamBuffer = MaxBufferReader::SampleParamBuffer;
               return _bufferReader;
           }
        };

    }
