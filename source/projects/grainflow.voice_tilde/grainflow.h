#pragma once
#include <numeric>
#include<memory>
#include<vector>


/// <summary>
/// Contains enties and functions that modify said entities. This is the 
/// fastest way to proccess data while also having the ability for it to be organized.
/// </summary>
namespace Grainflow {
    /// <summary>
    /// Avalible parameters using the GfParam struct
    /// </summary>
    enum GfParamName {
        delay = 0,
        rate,
        glisson,
        window,
        amplitude,
        space,
        envelopePosition,
        nEnvelopes,
    };
    /// <summary>
    /// Different paramter types using in the GfParam Struct
    /// </summary>
    enum GfParamType {
        base = 0,
        random,
        offset,
        mode,
    };

    enum GfStreamSetType {
        automaticStreams = 0, 
        perStreams,
        randomStreams,
    };

    enum GfBufferMode {
        normal = 0,
        buffer_sequence = 1,
        buffer_random = 2,
    };

    /// <summary>
    /// Parameter entity. When used with GfParamSet() different fields can be set 
    /// SampleParam() is used to set the value field which is what should be used to read the correct value
    /// </summary>
    struct GfParam {
        float base = 0;
        float random = 0;
        float offset = 0;
        float value = 0;
        GfBufferMode mode = normal;
    };


    enum GFBuffers {
        buffer=0,
        envelope,
        rateBuffer,
        delayBuffer,
        windowBuffer
    };

    class GrainInfo {

    public:
        double sourceSample = 0;
        double playRate = 1;
        int bufferFrames = 441000;      
        bool reset = false;
        float lastGrainClock = -999;
        double sampleRateAdjustment = 1;
        float sourcePositionNorm = 0;
        float oneOverBufferFrames= 1;
        float density = 1;
        bool grainEnabled = true;
        bool bufferDefined = false;

        std::unique_ptr<int> bufferRef = nullptr;
        std::unique_ptr<int> envelopeRef = nullptr;
        std::unique_ptr<int> delayBufRef = nullptr;
        std::unique_ptr<int> rateBufRef = nullptr;
        std::unique_ptr<int> windowBufRef = nullptr;


        GfParam delay;
        GfParam window;
        GfParam space;

        GfParam amplitude; 
        GfParam rate;
        GfParam glisson;
        GfParam envelope;

        int nEnvelopes = 1;

        size_t stream = 0;
        size_t bchan = 0;
        


        GrainInfo() {
            rate.base = 1;
       }

    };

    void GfParamSet(float value, GrainInfo &grain, GfParamName param, GfParamType type) {
        GfParam *selectedParam = nullptr;
        switch (param) {
        case(delay):
            selectedParam = &grain.delay;
            break;
        case(rate):
            selectedParam = &grain.rate;
            break;
        case(window):
            selectedParam = &grain.window;
            break;
        case(amplitude):
            selectedParam = &grain.amplitude;
            break;
        case(glisson):
            selectedParam = &grain.glisson;
            break;
        case(space):
            selectedParam = &grain.space;
            break;
        case(envelopePosition):
            selectedParam = &grain.envelope;
            break;
        case(nEnvelopes):
            grain.nEnvelopes = (int)value;
            return;
        default:
            //throw("param does not exist");
            return;
        }
        switch (type) {
        case(base):
            selectedParam->base = value;
            break;
        case(random):
            selectedParam->random = value;
            break;
        case(offset):
            selectedParam->offset = value;
            break;
        case(mode):
            selectedParam->mode = (GfBufferMode)(int)value;
            break;
        default:
            throw("invalid type");
            return;
        }

    }
  
    float Deviate(float center, float range) {
        return center + ((rand() % 10000) * 0.0001f - 1) * 2 * range;
    }

    float Lerp(float lower, float upper, float position) {
        return lower * (1 - position) + upper * position; 
    }

    void SampleParam(GfParam& param, int index) {
        param.value = abs((rand() % 10000) * 0.0001f) * (param.random)+param.base + param.offset * index;
    }

    void AssignAutoOverlap(GrainInfo* info, int ngrains, int index) {
           
        info->window.offset = 1.0f / ngrains;
        info->window.value = (float)index / ngrains;
        
    }

    void GrainReset(GrainInfo* info, double grainClock, double traversal) {
        if (grainClock > info->lastGrainClock) {
            info->reset = false;
            info->lastGrainClock = grainClock;
            return;
        }
        info->sourceSample = traversal*info->bufferFrames;
        info->playRate = 1; 
        info->lastGrainClock = grainClock;
        info->reset = true;        
    }

    void StreamSet(GrainInfo* grains, int maxGrains, GfStreamSetType mode, int nstreams) {
        for (int g = 0; g < maxGrains; g++) {
            switch (mode) {
            case(automaticStreams):
                grains[g].stream = g % nstreams;
                break;
            case(perStreams):
                for (int g = 0; g < maxGrains; g++) {
                    grains[g].stream = g / nstreams;
                }
                break;
            case(randomStreams):
                for (int g = 0; g < maxGrains; g++) {
                    grains[g].stream = rand() % nstreams;
                }
                break;
            }
        }
    };

    void SetBufferRef(GrainInfo& grain, GFBuffers bufferType, int* handle) {
        switch (bufferType) {
        case(buffer):
            grain.bufferRef.reset(handle);
            break;
        case(envelope):
            grain.envelopeRef.reset(handle);
            break;
        case(rateBuffer):
            grain.rateBufRef.reset(handle);
            break;
        case(delayBuffer):
            grain.delayBufRef.reset(handle);
            break;
        case(windowBuffer):
            grain.windowBufRef.reset(handle);
            break;
        }
    };

    int* GetBuffer(GrainInfo& grain, GFBuffers bufferType) {
        switch (bufferType) {
        case(buffer):
            return grain.bufferRef.get();
        case(envelope):
            return grain.envelopeRef.get();
        case(rateBuffer):
            return grain.rateBufRef.get();
        case(delayBuffer):
            return grain.delayBufRef.get();
        case(windowBuffer):
            return grain.windowBufRef.get();
        }
        return nullptr;
    };


    void SampleDensity(GrainInfo* info) {
        info->grainEnabled = info->density >= (rand() % 10000) * 0.0001f;
    }

    float PitchToRate(float pitch) {
        return pow(2, pitch / 12);
    }

    void SetSampleRateAdjustment(GrainInfo* info, float gloabalSampleRate, float bufferSampleRate) {
        info->sampleRateAdjustment = bufferSampleRate / gloabalSampleRate;
    }

    void Increment(GrainInfo* info, float fm, float grainClock) {

        info->sourceSample = fmod(info->sourceSample + fm * info->sampleRateAdjustment * info->rate.value * ( 1+ info->glisson.value * grainClock), info->bufferFrames);
        info->lastGrainClock = grainClock;
    }


}