namespace Grainflow{
    template  <typename T>
    class IGfBuffer
    {
    private:
        T bufferRef;
    
    public:
        IGfBuffer(T /* args */);

        float ReadNormalizedLerp(float position, int channel);

        float ReadNormalized(float position, int channel);

        bool Valid();

        int GetSize();

        void SetByName(string name);
    };
     
}