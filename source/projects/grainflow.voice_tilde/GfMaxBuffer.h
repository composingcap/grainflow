#include "c74_min.h"
#include "IGfBuffer.h"
using namespace c74::min;
 
namespace Grainflow{

    class GfMaxBuffer : IGfBuffer<buffer_reference>{
        private:
            buffer_reference bufferRef;
        public:

        void SetByName(string name){
            bufferRef.set(name);
        }

        bool Valid(){
            buffer_lock<> samps(bufferRef); 
            return samps.valid();
        }

        int GetSize(){
            buffer_lock<> samps(bufferRef); 
            return samps.frame_count();
        }

        float ReadNormalized(float position, int channel){
            buffer_lock<> buffer(bufferRef); 
            auto frame = size_t((position * buffer.frame_count()));
			auto sample = buffer.valid() ? buffer.lookup(frame, channel) : 0;
            return sample;
        }

        float ReadNormalizedLerp(float position, int channel){
            buffer_lock<> buffer(bufferRef); 
			auto frame = size_t(position);
			auto tween = position - frame;
            auto sample = buffer.valid() ? buffer.lookup(frame, channel) * (1 - tween) + buffer.lookup((frame + 1), chan) * tween : 0;

        }
    }
}