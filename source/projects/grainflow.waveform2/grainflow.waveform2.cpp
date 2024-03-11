#include "c74_min.h"
#include <vector>
#include <numeric>

using namespace c74::min;
using namespace c74::min::ui;
class grainflow_waveform2 : public object<grainflow_waveform2>, public ui_operator<300, 100> {
private:
	buffer_reference m_buffer{ this };
	std::vector<float> bufferDisplay;

public:
	enum class waveformMode : int { scrub, selection, loop, enum_count };
	enum_map waveformMode_range = { "scrub", "selection", "loop" };

	MIN_DESCRIPTION{ "Visualize Grainflow granulation" };
	MIN_TAGS{ "ui" };
	MIN_AUTHOR{ "Christopher Poovey" };
	MIN_RELATED{ "" };

	inlet<>  input{ this, "(list) grain information" };
	outlet<> output{ this, "(list) (dummy)" };
	outlet<> output2{ this, "(list) click info" };

	grainflow_waveform2(const atoms& args = {})
		: ui_operator::ui_operator{ this, args } {
		m_timer.delay(40);
	};

	void ComputeBufferDisplay(int maxSamples) {
		buffer_lock<> samples(m_buffer);
		if (!samples.valid()) {
			bufferDisplay.resize(0);
			return;
		}
		if (samples.frame_count() < 1) return;
		int dispSamples = maxSamples;
		float lastSample = 0;
		dispSamples = samples.frame_count() < dispSamples ? samples.frame_count() : dispSamples;
		bufferDisplay.resize(dispSamples);
		int samplesPerFrame = samples.frame_count() / bufferDisplay.size();
		for (int s = 0; s < bufferDisplay.size(); s++) {
			lastSample = abs(samples.lookup(samplesPerFrame * s, m_channel) * 0.5 + lastSample * 0.5);
			bufferDisplay[s] = lastSample * 2;
		}
	}

	attribute<int>     m_channel{ this, "chan",0, setter{MIN_FUNCTION{
	ComputeBufferDisplay(m_maxSamples);
	return args;
	} } };

	attribute<symbol>  m_bufferName{ this, "buf", " ",
		setter{MIN_FUNCTION{
			if (args.empty()) return args;
			string name = args[0];
			if (name.empty()) return args;
			m_buffer.set(name);
			ComputeBufferDisplay(args[0]);
			return args;
		}},
		getter{MIN_GETTER_FUNCTION{
			return { m_buffer.name()};
		}}, };

	attribute<numbers> m_disprange{ this, "displayRange", { {0.0, 1.0}} };
	attribute<number>  m_dotScale{ this, "dotScale", 1.0 };
	attribute<number>  m_dotVJitter{ this, "dotVJitter", 0.0 };
	attribute<int>  m_fps{ this, "fps", 30 };
	attribute<int>  m_maxSamples{ this, "maxBufferDrawSamples", 1000, setter{MIN_FUNCTION{

	ComputeBufferDisplay(args[0]);
	return args;
	} } };
	//Interaction mode
	attribute<numbers> m_selection{ this, "selection", { {0.0, 1.0}} };
	attribute<bool>  m_triangles{ this, "showTriangles", false };
	attribute<number> m_trackerWidth{ this, "trackerWidth", 2.0 };

	attribute<waveformMode> m_mode{ this, "mode", waveformMode::scrub, waveformMode_range,
		description {""}
	};	
	attribute<color>   m_bgcolor{ this, "bgColor", {color{0,0,0,0}}, title {"Background Color"} };

	attribute<color>   m_waveformColor{ this, "waveformColor", color::predefined::black, title {"Waveform Color"} };
	attribute<color>   m_dotcolor{ this, "dotColor", {color{1.0,0.0,0.0,0.9}}, title {"Dot Color"} };
	attribute<color>   m_dotcolor2{ this, "dotColorSecondary", {color{0.5, 0, 0, 0.9}}, title {"Dot Color Secondary"} };
	attribute<color>   m_triangleColor{ this, "triangleColor", {color{1,1,1,1}}, title {"Triangle Color"} };
	attribute<color>   m_trackerColor{ this, "trackerColor", {color{0.9, 0.9, 0.9, 0.75}}, title {"Tracker Color"} };
	attribute<color>   m_triangleOutColor{ this, "triangleOutColor", {color{1,1,1,1}}, title {"Triangle Color"} };

	message<> setup{ this, "setup",
		MIN_FUNCTION {
		return {};
		} };
	message<> paint{ this, "paint",
		MIN_FUNCTION {
			target t {args};

	rect<fill> {// background
		t,
		color {m_bgcolor}
	};

	//Draw Buffer
	//ComputeBufferDisplay();

	if (bufferDisplay.size() == 0) {
		ComputeBufferDisplay(m_maxSamples);
	}
	for (int i = 0; i < bufferDisplay.size(); i++) {
		int dispSamples = bufferDisplay.size();
		float height = bufferDisplay.at(i);
		rect<fill>{
			t,
				color{ m_waveformColor },
				size{ t.width() / dispSamples * 1.5f, height * t.height() },
				position{ i * t.width() / dispSamples, t.height() * 0.5f - t.height() * height * 0.5 },
		};
	}

	//Draw Grains
	for (int g = 0; g < grainStates.size(); g++) {
		if ((float)grainStates[g] < 0.01) continue;
		float pos = g < grainPositions.size() ? grainPositions[g] : 0;
		float scale = g < grainWindows.size() ? grainWindows[g] : 0;
		float amp = g < grainAmps.size() ? (float)grainAmps[g] + ((float)(rand() % 2000) - 1000) * 0.001 * m_dotVJitter : 0;
		scale *= t.height() * 0.05 * m_dotScale;
		float b = (float)g / grainStates.size();
		float a = 1 - b;
		ellipse<fill>{
			t,
				color{ color{m_dotcolor.get().red() * a + m_dotcolor2.get().red() * b,
							m_dotcolor.get().green() * a + m_dotcolor2.get().green() * b,
							m_dotcolor.get().blue() * a + m_dotcolor2.get().blue() * b,
							m_dotcolor.get().alpha() * a + m_dotcolor2.get().alpha() * b,} },
			position{ pos * t.width(), (1 - (std::clamp(abs(amp),0.0f,1.0f) * 0.8) - 0.2) * (t.height()) }, //TODO Something is off here
			size{ scale,scale },
		};
	}
	if (m_triangles) {
		tri<fill>{
			t,
				color{ m_triangleColor },
				size{ t.width() * 0.025f, t.width() * 0.025f },
				position{ trianglePosition[0], t.height() * 0.025 },
		};

		tri<fill>{
			t,
				color{ m_triangleColor },
				size{ t.width() * 0.025f , t.width() * 0.025f },
				position{ 0.1f, trianglePosition[1] },
				rotation{ -0.25f },
		};
	}

	return {};
} };

	message<> mousedown{ this, "mousedown",
		MIN_FUNCTION{
			event   e { args };
			auto    t { e.target() };
			auto    x { e.x() };
			auto    y { e.y() };
			trianglePosition[0] = x;
			trianglePosition[1] = y;
		output2.send(atoms{ "clicking", (double)trianglePosition[0] / e.target().width() ,-(double)trianglePosition[1] / e.target().height()});
			return{};
			}
	};

	message<> mousedragdelta{ this, "mousedragdelta",
		MIN_FUNCTION {
			event   e { args };
			auto    x { e.x() };
			auto    y { e.y() };
			number  factor { e.target().width() - 2.0 };    // how much precision (vs. immediacy) you have when dragging the knob



			trianglePosition[0] += x;
			trianglePosition[1] += y;

			trianglePosition[0] = (number)clamp((double)trianglePosition[0], 0.0, (double)e.target().width());
			trianglePosition[1] = (number)clamp((double)trianglePosition[1], 0.0, (double)e.target().height());


			output2.send(atoms{"clicking", (double)trianglePosition[0]/ e.target().width() ,1-(double)trianglePosition[1] / e.target().height() });
			return {};
		}
	};

	message<> grainpos{ this, "grainPosition", "",
		MIN_FUNCTION{
			grainPositions = args;
			return{};
		} };

	message<> grain_win{ this, "grainWindow", "",
	MIN_FUNCTION{
		grainWindows = args;
		return{};
	} };

	message<> grain_state{ this, "grainState", "",
MIN_FUNCTION{
	grainStates = args;
	return{};
} };

	message<> grain_amp{ this, "grainAmp", "",
	MIN_FUNCTION{
		grainAmps = args;
		return{};
	} };

	timer<timer_options::defer_delivery> m_timer{ this,
		MIN_FUNCTION {
			redraw();
			m_timer.delay((1000 / m_fps));
			return {};
		}
	};

	message<> any{ this, "anything", "",
		MIN_FUNCTION{
			return{};
		} };
	message<> b{ this, "bang", "",
		MIN_FUNCTION{
			ComputeBufferDisplay(m_maxSamples);
			return{};
		} };

private:
	atoms grainPositions;
	atoms grainWindows;
	atoms grainAmps;
	atoms grainStates;
	numbers trianglePosition{ 0,0 };
	numbers  m_anchor{};
	number	m_range_delta{ 1.0 };
};

MIN_EXTERNAL(grainflow_waveform2);