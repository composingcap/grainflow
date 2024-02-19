#pragma once
//#include <random>
//#include <functional>

#include <numeric> 
#include "c74_min.h"

namespace Grainflow {

    enum GfParamName {
        delay = 0,
        rate,
        glisson,
        window,
        amplitude, 
        space
    };
    enum GfParamType {
        base = 0,
        random,
        offset,
    };

    struct GfParam {
        float base = 0;
        float random = 0;
        float offset = 0;
        float value = 0;
    };

    class GrainInfo {

    public:
        float sourceSample = 0;
        float playRate = 1;
        int bufferFrames = 0;      
        bool reset = false;
        float lastGrainClock = -999;
        float sampleRateAdjustment = 1;
        float sourcePositionNorm = 0;
        float oneOverBufferFrames= 1;

        GfParam delay;
        GfParam window;
        GfParam space;

        GfParam amplitude; 
        GfParam rate;
        GfParam glisson;
        


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
        param. value = abs((rand() % 1000000) * 0.00001f) * (param.random)+param.base + param.offset * index;
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


    void GrainUpdate(GrainInfo* info, double fm) {

        info->sourceSample = fmod(info->sourceSample + info->playRate*info->sampleRateAdjustment + info->bufferFrames * 10, info->bufferFrames); //This is hacky but should be okay...
    }

    float GetGrainClock(GrainInfo* info, float grainClock) {
        return fmod(grainClock + info->window.value,1);
    }

    void SetSampleRateAdjustment(GrainInfo* info, float gloabalSampleRate, float bufferSampleRate) {
        info->sampleRateAdjustment = bufferSampleRate / gloabalSampleRate;
    }



}