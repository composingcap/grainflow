/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.
/// 

#include "grainflow.h"

using namespace c74::min;


long simplemc_multichanneloutputs(c74::max::t_object* x, long index, long count);
void ProccessGrains(audio_bundle& input, audio_bundle& output, const int subloopSize, const int maxGrains);
void GrainMessage(float value, Grainflow::GfParamName param, Grainflow::GfParamType type);

class grainflow_voice_tilde : public object<grainflow_voice_tilde>, public vector_operator<> {

public:  

    MIN_DESCRIPTION{ "the base object for grainflow" };
    MIN_TAGS{ "grainulation, msp, grainflow" };
    MIN_AUTHOR{ "Christopher Poovey" };
    MIN_RELATED{ "" };

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
    _ngrains = 0;}
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

        const int grainOutput = 0;
        const int grainState = 1 * maxGrains;
        const int grainProgress = 2 * maxGrains;
        const int grainPlayhead = 3 * maxGrains;
        const int grainAmp = 4 * maxGrains;
        const int grainEnvelope = 5 * maxGrains;
        const int grainBufferChannel = 6 * maxGrains;
        const int grainStreamChannel = 7 * maxGrains;


        buffer_lock<>	grainSamples(grainSource);
        buffer_lock<>   envelopeSamples(envelopeBuffer);


        int size = output.frame_count();

        for (int g = 0; g < (maxGrains- _ngrains) * 8; g++) {
            memset(out[g], double(0), sizeof(double) * size);
        }

        if (grainSamples.valid() && envelopeSamples.valid()) {
            //Pre proccess

            for (int g = 0; g < _ngrains; g++) {
                //Vector Level operations
                //                
                Grainflow::GrainInfo* thisGrain = &grainInfo[g];
                thisGrain->bufferFrames = grainSamples.frame_count();
                thisGrain->oneOverBufferFrames = 1.0f / grainSamples.frame_count();
                //Sample Level Operations
                int resetSample = -1;

                for (int i = 0; i < output.frame_count(); i += 16) {
                    for (int j = 0; j < 16; j++) {
                        int v = i + j;
                        float thisGrainClock = fmod(grainClock[v] + thisGrain->window.value, 1);                      
                        auto grainReset = GrainReset(thisGrain, thisGrainClock, traversalPhasor[v], g);
                        thisGrain->lastGrainClock = thisGrainClock;


                        //Sample buffer
                        //auto sourceSample = (rand() % 10000) * 0.00001f * bufferFrames;          
                        auto tween = (float)fmod(thisGrain->sourceSample, 1);
                        auto frame = size_t(thisGrain->sourceSample);
                        auto frame2 = size_t(thisGrainClock * envelopeSamples.frame_count());

                        //TODO how to make this more efficent
                        auto sample = grainSamples.lookup(frame, 0) * (1 - tween) + grainSamples.lookup((frame + 1), 0) * tween;
                        auto envelope = envelopeSamples.lookup(frame2, 0);



                        out[g + grainOutput][v] = sample * 0.5f * envelope * (1 - am[v]);
                        out[g + grainState][v] = grainReset;
                        out[g + grainProgress][v] = thisGrainClock;
                        out[g + grainPlayhead][v] = thisGrain->sourceSample * thisGrain->oneOverBufferFrames;
                        out[g + grainAmp][v] = (1 - am[v]);
                        out[g + grainEnvelope][v] = envelope;
                        out[g + grainBufferChannel][v] = 0;
                        out[g + grainStreamChannel][v] = 0;

                        thisGrain->sourceSample += fm[v] * thisGrain->sampleRateAdjustment * thisGrain->rate.value;
                    }
                }
            }
        }
    }

    void ProccessGrains(audio_bundle &input, audio_bundle &output, const int subloopSize, const int maxGrains) {
       
    }

    float Randomf(float min, float range) {
        return abs((rand()% 1000000) * 0.00001f)*(range)+min;
    }

    bool GrainReset(Grainflow::GrainInfo *thisGrain, float grainClock, float traversal, int g) {
        bool grainReset = thisGrain->lastGrainClock > grainClock;
        if (!grainReset) return grainReset;

        Grainflow::SampleParam(thisGrain->delay, g);
        thisGrain->sourceSample = (fmod((traversal + 10) * thisGrain->bufferFrames-thisGrain->delay.value, thisGrain->bufferFrames));
        Grainflow::SampleParam(thisGrain->rate, g);
        Grainflow::SampleParam(thisGrain->window, g);

        return grainReset;
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

    void GrainMessage(float value, Grainflow::GfParamName param, Grainflow::GfParamType type) {
        if (_target != 0) {
            if (_target >= maxGrains) return;
            Grainflow::GfParamSet(value, grainInfo[_target], param, type);
            return;
        }
        for (int g = 0; g < maxGrains; g++) {
            Grainflow::GfParamSet(value, grainInfo[g], param, type);
        }
    };

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
            oneOverSamplerate = 1 / dspSamplerate;
            buffer_lock<>	grainSamples(grainSource);
            if (grainSamples.valid()) {
                for (int g = 0; g < _ngrains; g++) {
                    Grainflow::AssignAutoOverlap(&grainInfo[g], _ngrains, g); //This  is now handled through window offset
                    Grainflow::SetSampleRateAdjustment(&grainInfo[g], dspSamplerate, grainSamples.samplerate());
            }
        }
            return {};
        }
        };



        //Rate
        message<> rate{ this, "rate", "turns grainflow on and off",
        MIN_FUNCTION {
                GrainMessage(args[0], Grainflow::rate, Grainflow::base);
                return{};
        }};
        message<> rateRandom{ this, "rateRandom", "turns grainflow on and off",
        MIN_FUNCTION {
            GrainMessage(args[0], Grainflow::rate, Grainflow::random);            
        return{};
        }};
        message<> rateOffset{ this, "rateOffset", "turns grainflow on and off",
        MIN_FUNCTION {
            GrainMessage(args[0], Grainflow::rate, Grainflow::offset);
        return{};
        } };

        //delay
        message<> delay{ this, "delay", "turns grainflow on and off",
        MIN_FUNCTION {
            auto value = (float)args[0] * 0.001f * dspSamplerate;
            GrainMessage(value, Grainflow::delay, Grainflow::base);
            return{};
        }};
        message<> delayRandom{ this, "delayRandom", "turns grainflow on and off",
        MIN_FUNCTION {
                auto value = (float)args[0] * 0.001f * dspSamplerate;
                GrainMessage(value, Grainflow::delay, Grainflow::random);

        return{};
        }};
        message<> delayOffset{ this, "delayRandom", "turns grainflow on and off",
        MIN_FUNCTION {
                auto value = (float)args[0] * 0.001f * dspSamplerate;
                GrainMessage(value, Grainflow::delay, Grainflow::offset);

        return{};
        } };

        message<> grain{ this, "g", "sends a message to a single grain",
            MIN_FUNCTION{
                _target = args[0];
        return{};
        } };

        //Window
        message<> window{ this, "wiindow", "sets the position of the window",
        MIN_FUNCTION {
                GrainMessage(args[0], Grainflow::window, Grainflow::base);
                return{};
        } };
        message<> windowRandom{ this, "windowRandom", "",
        MIN_FUNCTION {
            GrainMessage(args[0], Grainflow::window, Grainflow::random);
        return{};
        } };
        message<> windowOffset{ this, "windowOffset", "",
        MIN_FUNCTION {
            GrainMessage(args[0], Grainflow::window, Grainflow::offset);
        return{};
        } };

        //State

        message<> ngrains{ this,"ngrains", "",
            MIN_FUNCTION {
                _ngrains = (int)(args[0]) <= maxGrains ? (int)(args[0]) : maxGrains;
                gainAdjustment = _ngrains > 0 ? 1 / _ngrains : 0;
                return{};
                }};

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

    using vector_operator::operator();
    int GetMaxGrains() {
        return maxGrains;
    }
private:
    int _ngrains = 0;
    float gainAdjustment = 1;
    int dspSamplerate = 441000;
    float oneOverSamplerate = 1;
    int maxGrains = 0;
    int _target = 0;

    };




MIN_EXTERNAL(grainflow_voice_tilde);

long simplemc_multichanneloutputs(c74::max::t_object* x, long index, long count) {
    minwrap<grainflow_voice_tilde>* ob = (minwrap<grainflow_voice_tilde>*)(x);
    return ob->m_min_object.GetMaxGrains();
}