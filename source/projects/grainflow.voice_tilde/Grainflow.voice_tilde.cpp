/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.


#include "grainflow.h"

using namespace c74::min;


long simplemc_multichanneloutputs(c74::max::t_object* x, long index, long count);
void InitializeGrainData();

class grainflow_voice_tilde : public object<grainflow_voice_tilde>, public vector_operator<> {

public:  

    MIN_DESCRIPTION{ "the base object for grainflow" };
    MIN_TAGS{ "grainulation, msp, grainflow" };
    MIN_AUTHOR{ "Christopher Poovey" };
    MIN_RELATED{ "print, jit.print, dict.print" };

    inlet<>  grainClock{ this,  "(signal) phasor input", "signal" };
    inlet<>  traversalPhasor{ this,  "(signal) where the grain should be sampled from the buffer", "signal" };
    inlet<>  fm{ this,  "(signal) grain playback rate", "signal" };
    inlet<>  am{ this,  "(signal) amplitude modulation", "signal" };

    outlet<> output{ this, "(multichannel) grain output", "multichannelsignal" };

    outlet<> grainState{ this, "(multichannel) grainState", "multichannelsignal" };
    outlet<> grainProgress{ this, "(multichannel) grainProgress", "multichannelsignal" };
    outlet<> grainPlayhead{ this, "(multichannel) grainPlayhead", "multichannelsignal" };
    outlet<> grainAmp{ this, "(multichannel) grainAmp (abs)", "multichannelsignal" };
    outlet<> envelope{ this, "(multichannel) grainEnvelope", "multichannelsignal" };
    outlet<> channel{ this, "(multichannel) channel", "multichannelsignal" };
    outlet<> stream{ this, "(multichannel) stream", "multichannelsignal" };



    buffer_reference grainSource{ this };
    buffer_reference envelopeBuffer{ this };
    Grainflow::GrainInfo* grainInfo = nullptr;




    argument<symbol> buffer{ this, "buf", "Buffer~ from which to read.",
    MIN_ARGUMENT_FUNCTION {
    grainSource.set(arg);


}
    };

    argument<symbol> grains{ this, "number-of-grains", "max number of grins",
MIN_ARGUMENT_FUNCTION {
    grainInfo = new Grainflow::GrainInfo[arg];
    maxGrains = arg;
    ngrains = maxGrains;


}
    };


    ~grainflow_voice_tilde() {
        delete grainInfo;
    }

    void operator()(audio_bundle input, audio_bundle output) {
        auto grainClock = input.samples(0);
        auto traversalPhasor = input.samples(1);
        auto fm = input.samples(2);
        auto am = input.samples(3);
        auto out = output.samples();

        int grainOutput = 0;
        int grainState = 1 * maxGrains;
        int grainProgress = 2 * maxGrains;
        int grainPlayhead = 3 * maxGrains;
        int grainAmp = 4 * maxGrains;
        int grainEnvelope = 5 * maxGrains;
        int grainBufferChannel = 6 * maxGrains;
        int grainStreamChannel = 7 * maxGrains;


        buffer_lock<>	grainSamples(grainSource);
        buffer_lock<>   envelopeSamples(envelopeBuffer);

        if (grainSamples.valid() && envelopeSamples.valid()) {
            //Pre proccess

            for (int g = 0; g < ngrains; g++) {
                //Vector Level operations
                //                
                Grainflow::GrainInfo* thisGrain = &grainInfo[g];
                thisGrain->bufferFrames = grainSamples.frame_count();
                thisGrain->oneOverBufferFrames = 1.0f/grainSamples.frame_count();
                //Sample Level Operations
                int resetSample = -1;
                
                for (int v = 0; v < output.frame_count(); v++) {

                        float thisGrainClock = fmod(grainClock[v] + thisGrain->windowOffset,1);                        
                        bool grainReset = thisGrain->lastGrainClock > thisGrainClock;
                        thisGrain->lastGrainClock = thisGrainClock;

                        /// Grain Reset
                        
                        thisGrain->sourceSample = thisGrain->sourceSample * !grainReset + fmod(traversalPhasor[v] + 10, 1) * grainSamples.frame_count() * grainReset;
                        auto sourceSample = thisGrain->sourceSample;
                        thisGrain->sourceSample += fm[v] * thisGrain->sampleRateAdjustment;
                        //Sample buffer
                        //* fm[i]));
                        auto tween = fmod(sourceSample, 1);
                        auto frame = size_t(sourceSample);
                        auto sample = grainSamples.lookup(frame, 0) * (1-tween) + grainSamples.lookup((frame + 1), 0)*tween;
                        
                        /*
                        auto z1 = grainSamples.lookup(frame, 0);
                        auto z2 = grainSamples.lookup(frame + 1 % thisGrain->bufferFames, 0);
                        auto mu = (1 - cos(fmod(thisGrain->sourceSample,1) * PI)) / 2;
                        auto sample = (z1 * (1 - mu) + z2 * mu);
                        */

                        //Sample envelope
                        auto frame2 = size_t(thisGrainClock * envelopeSamples.frame_count());
                        auto envelope = envelopeSamples.lookup(frame2, 0);
                        /*
                        auto frame2 = size_t(thisGrainClock * envelopeSamples.frame_count());
                        auto e1 = envelopeSamples.lookup(frame2, 0);
                        auto e2 = envelopeSamples.lookup((frame2 +1 % envelopeSamples.frame_count()), 0);
                        auto mu2 = (1 - cos(fmod(thisGrainClock * envelopeSamples.frame_count(), 1) * PI)) / 2;
                        auto envelope = (e1 * (1 - mu2) + e2 * mu2);
                        */


                        out[g + grainOutput][v] = sample * 0.5f * envelope * (1 - am[v]);
                        out[g + grainState][v] = grainReset;
                        out[g + grainProgress][v] = thisGrainClock;
                        out[g + grainPlayhead][v] = thisGrain->sourceSample * thisGrain->oneOverBufferFrames;
                        out[g + grainAmp][v] = (1 - am[v]);
                        out[g + grainEnvelope][v] = envelope;
                        out[g + grainBufferChannel][v] = 0;
                        out[g + grainStreamChannel][v] = 0;
                    

                   
                }
            }
        }


    }

    float SampleBuffer(buffer_lock<> buffer, float samplePosition) {
        auto frame = size_t(samplePosition);
        auto sample = buffer.lookup(frame, 0);
        auto nextSample = buffer.lookup((frame + 1) % buffer.frame_count(), 0);
        float tween = fmod(samplePosition, 1);
        //TODO: Interpolate      
        return CosineInterp(sample, nextSample, tween);

    }
    /// <summary>
    /// Two point cosine interpolation
    /// https://paulbourke.net/miscellaneous/interpolation/ 
    /// </summary>
    float CosineInterp(float y1, float y2, float mu) {
        float mu2 = (1 - cos(mu * PI)) / 2;
        return(y1 * (1 - mu2) + y2 * mu2);
    }


    message<> maxclass_setup{ this, "maxclass_setup",
    MIN_FUNCTION {
        c74::max::t_class * c = args[0];
        c74::max::class_addmethod(c, (c74::max::method)simplemc_multichanneloutputs, "multichanneloutputs", c74::max::A_CANT, 0);
        return {};
        }
    };

    message<> dspsetup{ this, "dspsetup",
    MIN_FUNCTION {
        dspSamplerate = args[0];
        InitializeGrainData();
        return {};
    }
    };

    attribute<symbol> env{ this, "env","",
         setter { MIN_FUNCTION {
            envelopeBuffer.set(args[0]);
            return args;
    }},
        getter { MIN_GETTER_FUNCTION{
            return {envelopeBuffer.name()};
    }}
    };

    attribute<symbol> buf{ this, "buf","",
     setter { MIN_FUNCTION {
        grainSource.set(args[0]);
        return args;
    }},
    getter  { MIN_GETTER_FUNCTION{
        return {grainSource.name()};
    }}
    };



    void InitializeGrainData() {
        buffer_lock<>	grainSamples(grainSource);
        if (grainSamples.valid()) {

            gainAdjustment = 1 / ngrains;
            for (int g = 0; g < ngrains; g++) {
                Grainflow::AssignAutoOverlap(&grainInfo[g], ngrains, g);
                Grainflow::SetSampleRateAdjustment(&grainInfo[g], dspSamplerate, grainSamples.samplerate());
            }
        }
    }

    int GetMaxGrains() {
        return maxGrains;
    }

    using vector_operator::operator();

private:
    int ngrains = 0;
    float gainAdjustment = 1;
    int dspSamplerate = 441000;
    int maxGrains = 0;
};


MIN_EXTERNAL(grainflow_voice_tilde);

long simplemc_multichanneloutputs(c74::max::t_object* x, long index, long count) {
    minwrap<grainflow_voice_tilde>* ob = (minwrap<grainflow_voice_tilde>*)(x);
    return ob->m_min_object.GetMaxGrains();
}