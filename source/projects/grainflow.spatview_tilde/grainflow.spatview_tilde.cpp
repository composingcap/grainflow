#include "c74_min.h"
#include <vector>
#include <numeric>
#include <algorithm>
#include <map>

using namespace c74::min;
using namespace c74::min::ui;

struct VisualGrain
{
public:
	float x;
	float y;
	float z;
	float size;
};

class grainflow_spatview_tilde : public object<grainflow_spatview_tilde>, public ui_operator<300, 120, true>
{
private:
	dict speakerDict;
	dict vizDict;
	color m_bgcolor;
	float m_fps = 30;
	atoms speakerPositions_;
	std::map<int, VisualGrain> grains;
	std::vector<int> grainIndices;
	atoms m_speakerAmps;
	color m_speakerOffColor = color::predefined::black;
	float aspect[2] = {2.5, 1};
	float clickPosition[2] = {0, 0};
	float centerPosition[3] = {0, 0, 0};
	int region = 0;
	float m_falloffDistance = 1;

public:
	MIN_DESCRIPTION{"Visualize Grainflow spatialization"};
	MIN_TAGS{"ui"};
	MIN_AUTHOR{"Christopher Poovey"};
	MIN_RELATED{""};

	inlet<> input{this, "(list) visualisation dictionary"};
	outlet<> output{this, "(list) info"};

	grainflow_spatview_tilde(const atoms& args = {})
		: ui_operator::ui_operator{this, args}
	{
		m_timer.delay(33);
	};

	void transformPoint(target* t, float& x, float& y, float xoffset, float yoffset, float pad)
	{
		x = ((x + 1) * 0.5 + pad) * t->height() * (1 - pad) + xoffset * t->height();
		y = (1 - (y + 1) * 0.5 + pad) * t->height() * (1 - pad) + yoffset * t->height();
	}

	void DrawGrains(target* t, float offset1, float offset2)
	{
		float pad = 0.5;
		if (grains.empty()) return;

		for (int i = 0; i < grainIndices.size(); i++)
		{
			auto res = grains.find(grainIndices[i]);
			if (res->second.size <= 0.01) continue;
			float scale = t->height() * 0.05f * res->second.size * m_grainscale;
			if (scale < 0.0001) return;

			auto x = res->second.x;
			auto y = res->second.y;
			float a = (float)i / grainIndices.size();
			float b = 1 - a;


			color gColor = color(
				m_grainColor.get().red() * a + m_grainColor2.get().red() * b,
				m_grainColor.get().green() * a + m_grainColor2.get().green() * b,
				m_grainColor.get().blue() * a + m_grainColor2.get().blue() * b,
				1
			);
			transformPoint(t, x, y, offset1, 0, pad);
			ellipse<fill>{
				*t,
				color{gColor},
				size{scale, scale},
				position{x - scale * 0.5f, y - scale * 0.5f}
			};
			x = res->second.x;
			y = res->second.z;
			transformPoint(t, x, y, offset2, 0, pad);
			ellipse<fill>{
				*t,
				color{gColor},
				size{scale, scale},
				position{x - scale * 0.5f, y - scale * 0.5f}
			};
		}
	};

	void DrawSpeakers(target* t, int axis1, int axis2, float offset, float scale, color c)
	{
		auto s = m_speakerPositions.get_atoms();
		float pad = 0.5;
		scale *= t->height() * (1 - pad);

		for (int i = 0; i < s.size() / 3; i++)
		{
			float x = (float)s[i * 3 + axis1];
			float y = (float)s[i * 3 + +axis2];
			transformPoint(t, x, y, offset, 0, pad);
			ellipse<fill>{
				*t,
				color{c},
				size{scale, scale},
				position{x - scale * 0.5f, y - scale * 0.5f}
			};
			color dotColor = m_speakerOffColor;
			if (i < m_speakerAmps.size())
			{
				float a = (float)m_speakerAmps[i];
				dotColor = color(
					m_speakerOnColor.get().red() * a,
					m_speakerOnColor.get().green() * a,
					m_speakerOnColor.get().blue() * a,
					1
				);
			}

			ellipse<fill>{
				*t,
				color{dotColor},
				size{0.05f * scale, 0.05f * scale},
				position{x - scale * 0.5f * 0.05f, y - scale * 0.5f * 0.05f}
			};
		}
	};

	void ParseGrainAmps(const atoms& amps)
	{
		if (amps.empty()) return;
		for (int i = 0; i < amps.size(); i++)
		{
			if (auto search = grains.find(i); search != grains.end())
			{
				search->second.size = static_cast<float>(amps[i]);
			}
		}
		return;
	}

	void setGrainPosition(const int idx, const atoms& xyz)
	{
		if (xyz.size() < 3) return;
		if (grains.find(idx) == grains.end())
		{
			grainIndices.push_back(idx);
			VisualGrain g;
			g.x = static_cast<float>(xyz[0]);
			g.y = static_cast<float>(xyz[1]);
			g.z = static_cast<float>(xyz[2]);
			g.size = 0;
			grains[idx] = g;
			return;
		}
		grains[idx].x = static_cast<float>(xyz[0]);
		grains[idx].y = static_cast<float>(xyz[1]);
		grains[idx].z = static_cast<float>(xyz[2]);
	}

	void ParseVizInfo(string dictName)
	{
		vizDict.register_as(dictName);
		auto keys = vizDict.getKeys();
		for (int i = 0; i < vizDict.keyCount(); i++)
		{
			auto name = keys[i];

			if (strcmp(name->s_name, "grainPositions") == 0)
			{
				dict grainPos = static_cast<atom>(vizDict[name]);
				auto subkeys = grainPos.getKeys();
				for (int j = 0; j < grainPos.keyCount(); j++)
				{
					int idx = std::stoi(subkeys[j]->s_name);
					if (idx > grainPos.keyCount() || idx < 0) continue;
					atoms xyz = grainPos[subkeys[j]];
					if (xyz.size() < 3) continue;
					setGrainPosition(idx, xyz);
				}
			}
			if (strcmp(name->s_name, "grainAmps") == 0)
			{
				ParseGrainAmps(vizDict[name]);
			}

			if (strcmp(name->s_name, "speakerAmps") == 0)
			{
				m_speakerAmps = vizDict[name];
			}
			if (strcmp(name->s_name, "speakerPositions") == 0)
			{
				dict speakerPos = static_cast<atom>(vizDict[name]);
				auto subkeys = speakerPos.getKeys();
				speakerPositions_.resize(speakerPos.keyCount() * 3);
				for (int j = 0; j < speakerPos.keyCount(); j++)
				{
					int idx = std::stoi(subkeys[j]->s_name);
					if (idx > speakerPos.keyCount() || idx < 0) continue;
					atoms xyz = speakerPos[subkeys[j]];
					if (xyz.size() < 3) continue;
					setSpeakerPosition(idx, xyz);
				}
				m_speakerPositions = speakerPositions_;
			}
			if (strcmp(name->s_name, "distanceThreshold") == 0)
			{
				m_falloffDistance = static_cast<atom>(vizDict[name]);
			}
		};
	}

	void setSpeakerPosition(int idx, atoms xyz)
	{
		speakerPositions_[idx * 3] = static_cast<float>(xyz[0]);
		speakerPositions_[idx * 3 + 1] = static_cast<float>(xyz[1]);
		speakerPositions_[idx * 3 + 2] = static_cast<float>(xyz[2]);
	}


	void DrawUi(target* t, float offset)
	{
		rect<fill>{
			*t,
			color{color::predefined::black},
			size{t->height() * 0.02, t->height()},
			position{t->height() * (offset - 0.01), 0.0},
		};
		text{
			*t,
			content{"x | y"},
			color{color::predefined::black},
			fontsize{8},
			position{t->height() * 0.05, t->height() * 0.975},
		};

		text{
			*t,
			content{"x | z"},
			color{color::predefined::black},
			fontsize{8},
			position{t->height() * 2.35, t->height() * 0.975},
		};
	};

	void Clear(target* t)
	{
		rect<fill>{
			*t,
			color{m_backgroundColor}
		};
	}

	void DrawCenter(target* t, float offset1, float offset2)
	{
		if (!m_showCenter) return;
		float scale = t->height() * 0.05f;
		float pad = 0.5f;
		float x = centerPosition[0];
		float y = centerPosition[1];
		transformPoint(t, x, y, offset1, 0, pad);
		ellipse<fill>{
			*t,
			color{m_centerColor},
			size{scale, scale},
			position{x - scale * 0.5f, y - scale * 0.5f}
		};

		x = centerPosition[0];
		y = centerPosition[2];
		transformPoint(t, x, y, offset2, 0, pad);
		ellipse<fill>{
			*t,
			color{m_centerColor},
			size{scale, scale},
			position{x - scale * 0.5f, y - scale * 0.5f}
		};
	}


	void PaintInternal(target* t)
	{
		Clear(t);
		DrawSpeakers(t, 0, 1, 0.1, m_falloffDistance, m_speakerZoneColor);
		DrawSpeakers(t, 0, 2, 1.375, m_falloffDistance, m_speakerZoneColor);
		DrawCenter(t, 0.1, 1.375);
		DrawGrains(t, 0.1, 1.375);
		DrawUi(t, 1.25f);
	}

	void clickToCenter(target t)
	{
		float h = 1 / t.height();
		if (region == 0)
		{
			centerPosition[0] = clamp((clickPosition[0] * h - 0.5f) * 4, -2.0f, 2.0f);
			centerPosition[1] = clamp((1 - (clickPosition[1]) * h - 0.5f) * 4, -2.0f, 2.0f);
		}
		else
		{
			centerPosition[0] = clamp(((clickPosition[0]) * h - 1.8f) * 4, -2.0f, 2.0f);
			centerPosition[2] = clamp((1 - (clickPosition[1]) * h - 0.5f) * 4, -2.0f, 2.0f);
		}
	}

	message<> paint{
		this,
		"paint",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			target t{args};
			PaintInternal(&t);
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

	message<> mousedown{
		this,
		"mousedown",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			event e{args};
			auto t{e.target()};
			auto x{e.x()};
			auto y{e.y()};
			clickPosition[0] = x;
			clickPosition[1] = y;
			region = (x < t.height() * 1.2) ? 0 : 1;
			clickToCenter(e.target());

			output.send(
				atoms{"center", (double)centerPosition[0], (double)centerPosition[1], (double)centerPosition[2]});

			return {};
		}
	};

	message<> mousedragdelta{
		this,
		"mousedragdelta",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			event e{args};
			auto x{e.x()};
			auto y{e.y()};

			clickPosition[0] += x;
			clickPosition[1] += y;


			clickToCenter(e.target());

			output.send(
				atoms{"center", (double)centerPosition[0], (double)centerPosition[1], (double)centerPosition[2]});
			return {};
		}
	};


	attribute<vector<double>> m_speakerPositions{
		this,
		"speakerPositions",
		{-1, 1, 0, 1, 1, 0},
		title{"Speaker Positions"},
		description{"Speaker positions in a list of XYZ coordinates"}
	};


	attribute<bool> m_showCenter{
		this,
		"drawCenter",
		false,
		title{"draw center"},
		description{"Enables/Disables the center handle"}
	};


	attribute<color> m_speakerZoneColor{
		this,
		"zoneColor",
		color(1, 1, 1, 0.05),
		title{"zone color"},
		description{"the color of the speaker zone"}
	};

	attribute<color> m_backgroundColor{
		this,
		"backgroundColor",
		color(0.5, 0.5, 0.5, 1),
		title{"background color"},
		description{"the color of the background"}
	};

	attribute<color> m_grainColor{
		this,
		"grainColor",
		color(1, 1, 0, 1),
		title{"grain color"},
		description{"The primary grain color"}
	};

	attribute<color> m_grainColor2{
		this,
		"grainColor2",
		color(0.8, 0.7, 0, 1),
		title{"grain color 2"},
		description{"The secondary grain color"}
	};

	attribute<color> m_centerColor{
		this,
		"centerColor",
		color(0, 0, 0, 1),
		title{"center color"},
		description{"Color of the center handle"}
	};


	attribute<color> m_speakerOnColor{
		this,
		"speakerOnColor",
		color(0, 1, 0, 1),
		title{"speaker on color"},
		description{"speaker on color when sounding"}
	};


	attribute<number> m_grainscale{
		this,
		"grainScale",
		1,
		title{"grain scale"},
		description{"Size of the grains"}
	};

	message<> vizInfo{
		this,
		"anything",
		"Dictionary of grain visualization information generated by grainflow.spat.pan~",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms
		{
			if (args.size() < 2) return args;
			if (static_cast<string>(args[0]) != ("dictionary")) return args;
			ParseVizInfo(args[1]);
			return args;
		}
	};


	//private:
};

MIN_EXTERNAL(grainflow_spatview_tilde);
