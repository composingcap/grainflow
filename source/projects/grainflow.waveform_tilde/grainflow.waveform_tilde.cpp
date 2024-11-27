#include "c74_min.h"
#include <vector>
#include <numeric>
#include <algorithm>

using namespace c74::min;
using namespace c74::min::ui;

class grainflow_spatview : public object<grainflow_spatview>, public ui_operator<300, 100>
{
private:
	buffer_reference m_buffer{this};
	std::vector<float> bufferDisplay;

public:
	enum class waveformMode : int
	{
		scrub,
		selection,
		loop,
		enum_count
	};

	enum_map waveformMode_range = {"scrub", "selection", "loop"};

	MIN_DESCRIPTION{"Visualize Grainflow granulation on a waveform display"};
	MIN_TAGS{"ui"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{"grainflow~, grainflow.live~"};

	inlet<> input{this, "(list) grain information"};
	outlet<> output{this, "(list) grainInfo"};
	outlet<> output2{this, "(list) click info"};

	grainflow_spatview(const atoms& args = {})
		: ui_operator::ui_operator{this, args}
	{
		m_timer.delay(40);
	};

	void ComputeBufferDisplay(int maxSamples)
	{
		if (m_buffer.name().empty()) return;
		buffer_lock<> samples(m_buffer);
		if (!samples.valid())
		{
			bufferDisplay.resize(0);
			return;
		}
		if (samples.frame_count() < 1)
		{
			bufferDisplay.resize(0);
			return;
		}
		int dispSamples = maxSamples;
		float lastSample = 0;
		dispSamples = samples.frame_count() < dispSamples ? samples.frame_count() : dispSamples;
		bufferDisplay.resize(dispSamples);
		int samplesPerFrame = samples.frame_count() / bufferDisplay.size();
		for (int s = 0; s < bufferDisplay.size(); s++)
		{
			auto samp = samples.lookup(samplesPerFrame * s, m_channel);
			auto sign = samp < 0 ? -1 : 1;
			samp = std::abs(samp);
			lastSample = clamp(samp * 0.5 + lastSample * 0.5, 0.0, 1.0);
			bufferDisplay[s] = sign * lastSample;
		}
	}

	void DrawTracker(target t)
	{
		if (recordHead < 0) return;
		if (recordHead > 1) return;
		rect<fill>{
			t,
			color{m_trackerColor},
			size{t.width() * 0.005 * m_trackerWidth, t.height()},
			position{t.width() * recordHead, 0.0},
		};
	}

	void DrawGrains(target t)
	{
		for (int g = 0; g < grainStates.size(); g++)
		{
			if ((float)grainStates[g] < 0.01) continue;
			if (g >= grainWindows.size())continue;
			if (g >= grainPositions.size()) continue;
			if (g >= grainAmps.size()) continue;

			float pos = (float)grainPositions[g];
			float scale = (float)grainWindows[g];
			float amp = (float)grainAmps[g] + ((float)(rand() % 2000) - 1000) * 0.001 * m_dotVJitter;

			scale *= t.height() * 0.05 * m_dotScale;
			if (scale < 0.01) continue;
			float b = (float)g / grainStates.size();
			float a = 1 - b;
			ellipse<fill>{
				t,
				color{
					color{
						m_dotcolor.get().red() * a + m_dotcolor2.get().red() * b,
						m_dotcolor.get().green() * a + m_dotcolor2.get().green() * b,
						m_dotcolor.get().blue() * a + m_dotcolor2.get().blue() * b,
						m_dotcolor.get().alpha() * a + m_dotcolor2.get().alpha() * b,
					}
				},
				position{
					(pos * t.width()) - scale * 0.5f,
					((1 - (std::clamp(abs(amp),
					                  0.0f, 1.0f) * 0.8) - 0.1) * t.height()) - scale * 0.5f
				},
				size{scale, scale},
			};
		}
	}

	void DrawWaveform(target t)
	{
		for (int i = 0; i < bufferDisplay.size(); i++)
		{
			int dispSamples = bufferDisplay.size();
			float val = bufferDisplay.at(i);
			auto sign = val >= 0;
			auto height = std::clamp(std::abs(val), 0.00001f, 1.0f) * t.height() * m_vzoom;
			rect<fill>{
				t,
				color{m_waveformColor},
				size{t.width() / dispSamples * 1.5f, height},
				position{i * t.width() / dispSamples, t.height() * 0.5f - height * (sign ? 1 : 0)},
			};
		}
	}

	void SetBufferByName(string name)
	{
		if (name.empty()) return;
		m_buffer.set(name);
		ComputeBufferDisplay(m_maxSamples);
	};

	void Clear(target t)
	{
		rect<fill>{
			t,
			color{m_bgcolor}
		};
	}

	void DrawSelection(target t)
	{
		if (m_triangles && m_mode == waveformMode::scrub)
		{
			tri<fill>{
				t,
				color{m_triangleColor},
				size{t.width() * 0.025f, t.width() * 0.025f},
				position{trianglePosition[0], t.height() * 0.025},
			};

			tri<fill>{
				t,
				color{m_triangleColor},
				size{t.width() * 0.025f, t.width() * 0.025f},
				position{0.1f, trianglePosition[1]},
				rotation{-0.25f},
			};
		}

		if (m_mode == waveformMode::selection || m_mode == waveformMode::loop)
		{
			auto selX1 = (m_selection[0] - 1);
			auto selX2 = (m_selection[1] - 1);
			auto anchor = std::min(selX1, selX2);
			auto width = abs(selX1 - selX2);
			rect<fill>{
				t,
				color{m_selectColor},
				size{t.width() * width, t.height()},
				position{t.width() * (anchor), 0.0},
			};

			selX1 = (m_selection[0] + 1);
			selX2 = (m_selection[1] + 1);
			anchor = std::min(selX1, selX2);
			width = abs(selX1 - selX2);
			rect<fill>{
				t,
				color{m_selectColor},
				size{t.width() * width, t.height()},
				position{t.width() * (anchor), 0.0},
			};

			selX1 = (m_selection[0]);
			selX2 = (m_selection[1]);
			anchor = std::min(selX1, selX2);
			width = abs(selX1 - selX2);
			rect<fill>{
				t,
				color{m_selectColor},
				size{t.width() * width, t.height()},
				position{t.width() * (anchor), 0.0},
			};
		}
	}

	void PaintInternal(target t)
	{
		Clear(t);
		DrawWaveform(t);
		DrawSelection(t);
		DrawTracker(t);
		DrawGrains(t);
	}

	attribute<number> m_dotScale{this, "dotScale", 1.0};
	attribute<number> m_dotVJitter{this, "dotVJitter", 0.0};
	attribute<int> m_fps{this, "fps", 30};
	attribute<int> m_maxSamples{
		this, "maxBufferDrawSamples", 1000,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if ((int)args[0] <= 0)
				{
					ComputeBufferDisplay(1);
					return {1};
				}
				ComputeBufferDisplay(args[0]);
				return args;
			},
		}
	};

	attribute<int> m_channel{
		this,
		"chan",
		0,
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				ComputeBufferDisplay(m_maxSamples);
				return args;
			}
		},
		description{
			"The channel that the waveform will draw. Grains are also filtered by channel. 0 will draw the first channel and all grains"
		}
	};

	attribute<symbol> m_bufferName{
		this,
		"buffername",
		"name of the buffer to draw",
		setter{
			[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
			{
				if (args.empty()) return args;
				string name = args[0];
				SetBufferByName(name);
				return args;
			}
		},
		getter{
			[this]() -> atoms
			{
				return {m_buffer.name()};
			}
		},
	};


	message<> bufName{
		this,
		"buf",
		[this](const c74::min::atoms& args, const int inlet)-> c74::min::atoms
		{
			auto name = (string)args[0];
			if (name.compare(static_cast<string>(m_buffer.name().c_str())) != 0)
			{
				SetBufferByName(name);
			}
			else ComputeBufferDisplay(m_maxSamples);
			return {};
		}
	};
	// Interaction mode
	attribute<numbers> m_selection{
		this, "selection", {{0.0, 1.0}}, description{"The selected range of the waveform display"}
	};
	attribute<bool> m_triangles{
		this, "showTriangles", false, description{"shows triangles pointing at the selection position"}
	};
	attribute<number> m_trackerWidth{this, "trackerWidth", 2.0, description{"How thick the position tracker is"}};

	attribute<waveformMode> m_mode{
		this, "mode", waveformMode::scrub, waveformMode_range,
		description{
			"The interaction mode for the waveform. Scrub -> click and drag to change selected position. Selection -> click and drag to select a range. Loop -> click and drag to move a selection, hold option/alt to change the selection size"
		}
	};
	attribute<color> m_bgcolor{
		this, "bgColor", {color{0, 0, 0, 0}}, title{"Background Color"}, description{"Changed the backgroun color"}
	};

	attribute<color> m_waveformColor{
		this, "waveformColor", color::predefined::black, title{"Waveform Color"},
		description{"Changes the color of the waveform"}
	};
	attribute<color> m_dotcolor{
		this, "dotColor", {color{1.0, 0.0, 0.0, 0.9}}, title{"Dot Color"},
		description{"changes the primary grain display color"}
	};
	attribute<color> m_dotcolor2{
		this, "dotColorSecondary", {color{0.5, 0, 0, 0.9}}, title{"Dot Color Secondary"},
		description{"changes the secondary grain display color"}
	};
	attribute<color> m_triangleColor{
		this, "triangleColor", {color{1, 1, 1, 1}}, title{"Triangle Color"},
		description{"changes the selection triangles"}
	};
	attribute<color> m_trackerColor{
		this, "trackerColor", {color{0.9, 0.9, 0.9, 0.75}}, title{"Tracker Color"},
		description{"changes color of the position tracker"}
	};
	attribute<color> m_selectColor{
		this, "selectColor", {color{1, 1, 0, 0.5}}, title{"Select Color"},
		description{"changes color of the selection range"}
	};
	attribute<float> m_vzoom{
		this, "vZoom", {1}, title{"Vertical Zoom"}, description{"Increases the Y scale of the waveform"}
	};

	message<> setup{
		this, "setup",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			return {};
		}
	};
	message<> paint{
		this,
		"paint",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			target t{args};
			PaintInternal(t);
			return {};
		}
	};

	message<> mouseup{
		this,
		"mouseup",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			event e{args};
			auto t{e.target()};
			auto x{e.x()};
			auto y{e.y()};
			output2.send(atoms{"clicking", (double)x / e.target().width(), -(double)y / e.target().height(), 0});
			return {};
		},
		"On mouse up the position will stop changing with the mouse"
	};

	message<> mousedown{
		this,
		"mousedown",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			event e{args};
			auto t{e.target()};
			auto x{e.x()};
			auto y{e.y()};
			trianglePosition[0] = x;
			trianglePosition[1] = y;
			output2.send(atoms{
				"clicking", (double)trianglePosition[0] / e.target().width(),
				-(double)trianglePosition[1] / e.target().height(), 1
			});
			switch (m_mode)
			{
			case (waveformMode::scrub):

				break;
			case (waveformMode::selection):
				m_selection[0] = x / e.target().width();
				m_selection[1] = x / e.target().width() + 0.001f;
				output.send(atoms{"selection", (double)m_selection[0], (double)m_selection[1]});
				break;
			case (waveformMode::loop):
				auto width = m_selection[1] - m_selection[0];
				m_selection[0] = (x / e.target().width()) - width * 0.5;
				m_selection[1] = (x / e.target().width()) + width * 0.5;
				output.send(atoms{"selection", (double)m_selection[0], (double)m_selection[1]});
				break;
			}

			return {};
		},
		"On mousedown the waveform will recieve interactions from the mouse"
	};

	message<> mousedragdelta{
		this,
		"mousedragdelta",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			event e{args};
			auto x{e.x()};
			auto y{e.y()};

			trianglePosition[0] += x;
			trianglePosition[1] += y;

			trianglePosition[0] = (number)clamp((double)trianglePosition[0], 0.0, (double)e.target().width());
			trianglePosition[1] = (number)clamp((double)trianglePosition[1], 0.0, (double)e.target().height());

			switch (m_mode)
			{
			case (waveformMode::scrub):
				break;
			case (waveformMode::selection):
				m_selection[1] += x / e.target().width();
				m_selection[1] = fmod(m_selection[1], 2);
				output.send(atoms{"selection", (double)m_selection[0], (double)m_selection[1]});
				break;
			case (waveformMode::loop):
				auto width = m_selection[1] - m_selection[0] - (y / e.target().height());
				auto center = m_selection[0] + width * 0.5 + (x / e.target().width());
				m_selection[0] = fmod(((center - width * 0.5)), 2.0);
				m_selection[1] = fmod(((center + width * 0.5)), 2.0);

				output.send(atoms{"selection", (double)m_selection[0], (double)m_selection[1]});
				break;
			}

			auto dist = std::min(1.0, abs(m_selection[0] - m_selection[1]));
			int sign = m_selection[0] < m_selection[1] ? 1 : -1;
			m_selection[1] = m_selection[0] + dist * sign;

			output2.send(atoms{
				"clicking", (double)trianglePosition[0] / e.target().width(),
				1 - ((trianglePosition[1] - (double)y) / e.target().height()), 1
			});
			return {};
		},
		"Dragging the mouse will interact with the waveform depending on the mode"
	};

	message<> record_head{
		this,
		"recordHead",
		"sets the tracker position",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			recordHead = args[0];
			return {};
		}
	};

	message<> grainpos{
		this,
		"grainPosition",
		"sets the positions of the grain dots",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			grainPositions = args;
			return {};
		}
	};

	message<> grain_win{
		this,
		"grainWindow",
		"sets the size of the grain dots",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			grainWindows = args;
			return {};
		}
	};

	message<> grain_state{
		this,
		"grainState",
		"sets if the grain dots should draw at all",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			grainStates = args;
			return {};
		}
	};

	message<> grain_amp{
		this,
		"grainAmp",
		"sets the vertical position of the grain dots",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			grainAmps = args;
			return {};
		}
	};

	timer<timer_options::defer_delivery> m_timer{
		this,
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			redraw();
			m_timer.delay((1000 / m_fps));
			return {};
		}
	};

	message<> any{
		this,
		"anything",
		"",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			return {};
		}
	};

	message<> b{
		this,
		"bang",
		"redraws the buffer display",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			ComputeBufferDisplay(m_maxSamples);
			return {};
		}
	};

private:
	atoms grainPositions;
	atoms grainWindows;
	atoms grainAmps;
	atoms grainStates;
	numbers trianglePosition{0, 0};
	numbers m_anchor{};
	number m_range_delta{1.0};
	number recordHead = -1;
};

MIN_EXTERNAL(grainflow_spatview);
