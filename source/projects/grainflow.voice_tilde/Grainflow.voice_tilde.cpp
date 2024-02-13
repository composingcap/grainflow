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
                thisGrain->bufferFames = grainSamples.frame_count();
                thisGrain->oneOverBufferFrames = 1.0f/grainSamples.frame_count();
                //Sample Level Operations
                for (int i = 0; i < output.frame_count(); i++) {
                    auto thisGrainClock = Grainflow::GetGrainClock(thisGrain, grainClock[i]);
                    GrainReset(thisGrain, thisGrainClock, traversalPhasor[i]); //It may be possible to do this in a smarter way
                    Grainflow::GrainUpdate(thisGrain, fm[i]);
                    auto sample = SampleBuffer(grainSamples, thisGrain->sourceSample);
                    auto envelope = SampleBuffer(envelopeSamples, thisGrainClock * envelopeSamples.frame_count());
                    
                    out[g + grainOutput][i] = sample * 0.5f * envelope * (1-am[i]);
                    out[g + grainState][i] = thisGrain->reset ? 1 : 0;
                    out[g + grainProgress][i] = thisGrainClock;
                    out[g + grainPlayhead][i] = thisGrain->sourceSample * thisGrain->oneOverBufferFrames;
                    out[g + grainAmp][i] = (1 - am[i]);
                    out[g + grainEnvelope][i] = envelope;
                    out[g + grainBufferChannel][i] = 0;
                    out[g + grainStreamChannel][i] = 0;
                    
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