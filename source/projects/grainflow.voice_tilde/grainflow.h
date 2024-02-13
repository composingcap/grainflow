#pragma once
//#include <random>
//#include <functional>

#include <numeric> 
#include "c74_min.h"

namespace Grainflow {

    struct GrainInfo {
    public:
        float windowOffset = 0;
        float sourceSample = 0;
        float playRate = 1;
        int bufferFames = 0;      
        bool reset = false;
        float lastGrainClock = -999;
        float sampleRateAdjustment = 1;
        float sourcePositionNorm = 0;
        float oneOverBufferFrames;
    };

    void AssignAutoOverlap(GrainInfo* info, int ngrains, int index) {
             
        info->windowOffset = (float)index / ngrains;
        
    }

    void GrainReset(GrainInfo* info, double grainClock, double traversal) {
        if (grainClock > info->lastGrainClock) {
            info->reset = false;
            info->lastGrainClock = grainClock;
            return;
        }
        info->sourceSample = traversal*info->bufferFames;
        info->playRate = 1; 
        info->lastGrainClock = grainClock;
        info->reset = true;

        
    }


    void GrainUpdate(GrainInfo* info, double fm) {

        info->sourceSample = fmod(info->sourceSample + info->playRate*info->sampleRateAdjustment + info->bufferFames * 10, info->bufferFames); //This is hacky but should be okay...
    }

    float GetGrainClock(GrainInfo* info, float grainClock) {
        return fmod(grainClock + info->windowOffset,1);
    }

    void SetSampleRateAdjustment(GrainInfo* info, float gloabalSampleRate, float bufferSampleRate) {
        info->sampleRateAdjustment = bufferSampleRate / gloabalSampleRate;
    }


}