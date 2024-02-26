#pragma once
#include <numeric>

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
    };
    /// <summary>
    /// Different paramter types using in the GfParam Struct
    /// </summary>
    enum GfParamType {
        base = 0,
        random,
        offset,
    };

    enum GfStreamSetType {
        automaticStreams = 0, 
        perStreams,
        randomStreams,
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
    };

    class GrainInfo {

    public:
        double sourceSample = 0;
        double playRate = 1;
        int bufferFrames = 0;      
        bool reset = false;
        float lastGrainClock = -999;
        double sampleRateAdjustment = 1;
        float sourcePositionNorm = 0;
        float oneOverBufferFrames= 1;
        float density = 1;
        bool grainEnabled = true;



        GfParam delay;
        GfParam window;
        GfParam space;

        GfParam amplitude; 
        GfParam rate;
        GfParam glisson;

        int* bufferRef = nullptr;
        int* envelopeRef = nullptr;
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
        default:
            throw("param does not exist");
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
        default:
            throw("invalid type");
            return;
        }

    }
  

    void SampleParam(GfParam& param, int index) {
        param.value = abs((rand() % 10000) * 0.0001f) * (param.random)+param.base + param.offset * index;
    }

    void AssignAutoOverlap(GrainInfo* info, int ngrains, int index) {
           
        info->window.offset = 1 / ngrains;
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


    void SampleDensity(GrainInfo* info) {
        info->grainEnabled = info->density >= (rand() % 10000) * 0.0001f;
    }


    void SetSampleRateAdjustment(GrainInfo* info, float gloabalSampleRate, float bufferSampleRate) {
        info->sampleRateAdjustment = bufferSampleRate / gloabalSampleRate;
    }

    void Increment(GrainInfo* info, float fm, float grainClock) {

        info->sourceSample = fmod(info->sourceSample + fm * info->sampleRateAdjustment * info->rate.value * ( 1+ info->glisson.value * grainClock), info->bufferFrames);
        info->lastGrainClock = grainClock;
    }





}