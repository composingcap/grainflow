#pragma once
#include <string>
namespace Grainflow
{

    template <typename T>
    class IGfBuffer
    {
    private:
        T *bufferRef;

    public:
        virtual void SetBufferRef(T *buffer) = 0;

        virtual float ReadNormalizedLerp(float position, int channel) = 0;

        virtual float ReadNormalized(float position, int channel)=0;

        virtual float ReadSample(int frame, int channel)=0;

        virtual int GetChannels()=0;

        virtual bool Valid()= 0;

        virtual int GetSize() = 0;

        virtual int GetSamplerate() = 0;

        virtual void SetByName(std::string name) = 0;

        virtual void Prepare() = 0;

        virtual std::string GetName() = 0;
    };

}