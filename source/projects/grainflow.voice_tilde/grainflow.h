#pragma once
#include <memory>
#include <random>

/// <summary>
/// Contains enties and functions that modify said entities. This is the
/// fastest way to proccess data while also having the ability for it to be organized.
/// </summary>
namespace Grainflow
{
	/// <summary>
	/// Avalible parameters using the GfParam struct
	/// </summary>
	enum class GfParamName
	{
		delay = 0,
		rate,
		glisson,
		window,
		amplitude,
		space,
		envelopePosition,
		nEnvelopes,
		direction,
	};
	/// <summary>
	/// Different paramter types using in the GfParam Struct
	/// </summary>
	enum class GfParamType
	{
		base = 0,
		random,
		offset,
		mode,
		value,
	};

	enum class GfStreamSetType
	{
		automaticStreams = 0,
		perStreams,
		randomStreams,
	};

	enum class GfBufferMode
	{
		normal = 0,
		buffer_sequence = 1,
		buffer_random = 2,
	};

	/// <summary>
	/// Parameter entity. When used with GfParamSet() different fields can be set
	/// SampleParam() is used to set the value field which is what should be used to read the correct value
	/// </summary>
	struct GfParam
	{
		float base = 0;
		float random = 0;
		float offset = 0;
		float value = 0;
		GfBufferMode mode = GfBufferMode::normal;
	};

	enum class GFBuffers
	{
		buffer = 0,
		envelope,
		rateBuffer,
		delayBuffer,
		windowBuffer
	};

	class GrainInfo
	{
	private:
		double playRate = 1;
		bool reset = false;
		float lastGrainClock = -999;
		double sampleRateAdjustment = 1;
		float sourcePositionNorm = 0;
		bool grainEnabled = true;
		bool bufferDefined = false;
		int index = 0;

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
		GfParam direction;

		GfParam nEnvelopes;


public:
		int bufferFrames = 441000;
		float oneOverBufferFrames = 1;
		double sourceSample = 0;
		size_t stream = 0;
		size_t bchan = 0;
		float density = 1;



		GrainInfo()
		{
			rate.base = 1;
			amplitude.base = 1;
			direction.base = 1;
		}

		float GetLastClock() {return lastGrainClock;}

		void SetIndex(int index){this->index = index;}

		void SetBufferFrames(int frames){
			bufferFrames = frames;
			oneOverBufferFrames = 1/frames;
		}

		void SetSampleRateAdjustment(float ratio){
			sampleRateAdjustment = ratio;
		}

		GfParam *ParamGetHandle(GfParamName param)
		{
			switch (param)
			{
			case (GfParamName::delay):
				return &delay;
			case (GfParamName::rate):
				return &rate;
			case (GfParamName::window):
				return &window;
			case (GfParamName::amplitude):
				return &amplitude;
			case (GfParamName::glisson):
				return &glisson;
			case (GfParamName::space):
				return &space;
			case (GfParamName::envelopePosition):
				return &envelope;
			case (GfParamName::nEnvelopes):
				return &nEnvelopes;
			}
			
			return nullptr;
		}

		float ParamGet(GfParamName param){
			return ParamGetHandle(param)->value;
		}
		void ParamSet(float value, GfParamName param, GfParamType type)
		{
			GfParam *selectedParam = ParamGetHandle(param);

			switch (type)
			{
			case (GfParamType::base):
				selectedParam->base = value;
				break;
			case (GfParamType::random):
				selectedParam->random = value;
				break;
			case (GfParamType::offset):
				selectedParam->offset = value;
				break;
			case (GfParamType::mode):
				selectedParam->mode = (GfBufferMode)(int)value;
				break;
			case (GfParamType::value):
				selectedParam->value = value;
				break;
			default:
				throw("invalid type");
				return;
			}
		}

		void SampleParam(GfParamName paramName)
		{
			auto param = ParamGetHandle(paramName);
			std::random_device rd;
			param->value = abs((rd() % 10000) * 0.0001f) * (param->random) + param->base + param->offset * index;
		}
		void GrainReset(double grainClock, double traversal)
		{
			if (grainClock > lastGrainClock)
			{
				reset = false;
				lastGrainClock = grainClock;
				return;
			}
			sourceSample = traversal * bufferFrames;
			playRate = 1;
			lastGrainClock = grainClock;
			reset = true;
		}

		void SetBufferRef(GFBuffers bufferType, int *handle)
		{
			switch (bufferType)
			{
			case (GFBuffers::buffer):
				bufferRef.reset(handle);
				break;
			case (GFBuffers::envelope):
				envelopeRef.reset(handle);
				break;
			case (GFBuffers::rateBuffer):
				rateBufRef.reset(handle);
				break;
			case (GFBuffers::delayBuffer):
				delayBufRef.reset(handle);
				break;
			case (GFBuffers::windowBuffer):
				windowBufRef.reset(handle);
				break;
			};
		};

		int* GetBufferRef(GFBuffers bufferType){
			
			switch(bufferType){
			case (GFBuffers::buffer):
				return bufferRef.get();
			case (GFBuffers::envelope):
				return envelopeRef.get();
			case (GFBuffers::rateBuffer):
				return rateBufRef.get();
			case (GFBuffers::delayBuffer):
				return delayBufRef.get();
			case (GFBuffers::windowBuffer):
				return windowBufRef.get();
			};
		}

		void SetSampleRateAdjustment(float gloabalSampleRate, float bufferSampleRate)
		{
			sampleRateAdjustment = bufferSampleRate / gloabalSampleRate;
		}

		int *GetBuffer(GFBuffers bufferType)
		{
			switch (bufferType)
			{
			case (GFBuffers::buffer):
				return bufferRef.get();
			case (GFBuffers::envelope):
				return envelopeRef.get();
			case (GFBuffers::rateBuffer):
				return rateBufRef.get();
			case (GFBuffers::delayBuffer):
				return delayBufRef.get();
			case (GFBuffers::windowBuffer):
				return windowBufRef.get();
			}
			return nullptr;
		}

		void SampleDensity()
		{
			std::random_device rd;
			grainEnabled = density >= (rd() % 10000) * 0.0001f;
		}

		void Increment(float fm, float grainClock)
		{
			sourceSample = ((size_t)((sourceSample + fm * sampleRateAdjustment * rate.value * (1 + glisson.value * grainClock) * direction.value + bufferFrames) * 100) % (bufferFrames * 100)) * 0.01;

			lastGrainClock = grainClock;
		}

		void StreamSet(int maxGrains, GfStreamSetType mode, int nstreams)
		{
			switch (mode)
			{
			case (GfStreamSetType::automaticStreams):
				stream = index % nstreams;
				break;
			case (GfStreamSetType::perStreams):
				stream = index / nstreams;
				break;
			case (GfStreamSetType::randomStreams):
				std::random_device rd;
				stream = rd() % nstreams;
				break;
			}
		};
		void SampleDirection()
		{
			if (direction.base >= 1)
				direction.value = 1;
			else if (direction.base <= -1)
				direction.value = -1;
			else
			{
				float randomDirection = (rand() % 1000) * 0.001f;
				if (randomDirection > direction.base)
				{
					direction.value = -1;
				}
				else
				{
					direction.value = 1;
				}
			}
		}
	};



	float Deviate(float center, float range)
	{
		std::random_device rd;
		return center + ((rd() % 10000) * 0.0001f - 1) * 2 * range;
	}

	float Lerp(float lower, float upper, float position)
	{
		return lower * (1 - position) + upper * position;
	}

	float PitchToRate(float pitch)
	{
		return pow(2, pitch / 12);
	}
	

}