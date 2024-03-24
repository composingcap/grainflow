#pragma once
#include"grainflow.h"
#include "c74_min.h"

using namespace c74::min;
namespace Grainflow{
    /// @brief Provides an interface for reading buffers in Max MSP 
    class MspGrain : public IGrain<buffer_reference, buffer_lock<>>{
        public:
        void SampleParamBuffer(GFBuffers bufferType, GfParamName paramName) {
            auto buf = GetBuffer(bufferType);
            auto param = ParamGetHandle(paramName);
            if (param->mode == GfBufferMode::normal || buf == nullptr) {
                SampleParam(paramName);
                return;
            }
            buffer_lock<> paramBuf(*buf);
            if (!paramBuf.valid()) return;
            size_t frame = 0;
            if (param->mode == GfBufferMode::buffer_sequence) {
                frame = index % paramBuf.frame_count();
            }
            else if (param->mode == GfBufferMode::buffer_random) {
                frame = rd() % paramBuf.frame_count();
            }

            param->value = paramBuf.lookup(frame, 0);
	}
    float SampleBuffer(buffer_lock<> buffer){

 				size_t chan = buffer.valid() ? (bchan) % buffer.channel_count() : 0;
				auto frame = size_t(sourceSample);
				auto tween = sourceSample - frame;
				auto sample = buffer.valid() ? buffer.lookup(frame, chan) * (1 - tween) + buffer.lookup((frame + 1), chan) * tween : 0;
				return sample;

    }

    float SampleEnvelope(buffer_lock<>  buffer, float grainClock){ 
        //buffer_lock<>	buffer(*(buffer_reference*)(GetBuffer(GFBuffers::envelope)));
        if (!buffer.valid()) return 0;
        auto nEnvelopes = ParamGet(GfParamName::nEnvelopes);
		if (nEnvelopes <= 1) {
			auto frame = size_t((grainClock * buffer.frame_count()));
			auto envelope = buffer.lookup(frame, 0);
			return envelope;
		}
		int sizePerEnvelope = buffer.frame_count() / nEnvelopes;
		int env1 = (int)(ParamGet(GfParamName::envelopePosition) * nEnvelopes);
		int env2 = env1 + 1;
		float fade = ParamGet(GfParamName::envelopePosition) * nEnvelopes - env1;
		auto frame = size_t((grainClock * sizePerEnvelope));
		auto envelope = buffer.lookup((env1 * sizePerEnvelope + frame) % buffer.frame_count(), 0) * (1 - fade) + buffer.lookup((env2 * sizePerEnvelope + frame) % buffer.frame_count(), 0) * fade;
		return envelope;
    };
    };
}