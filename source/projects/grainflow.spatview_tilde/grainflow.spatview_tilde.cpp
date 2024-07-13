#include "c74_min.h"
#include <vector>
#include <numeric>
#include <algorithm>
#include <map>

using namespace c74::min;
using namespace c74::min::ui;

struct VisualGrain {
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
	float aspect[2] = { 2.5,1 };
	float clickPosition[2] = { 0,0 };
	float centerPosition[3] = { 0,0,0 };
	int region = 0;


public:


	MIN_DESCRIPTION{ "Visualize Grainflow spatialization" };
	MIN_TAGS{ "ui" };
	MIN_AUTHOR{ "Christopher Poovey" };
	MIN_RELATED{ "" };

	inlet<> input{ this, "(list) input messages" };
	outlet<> output{ this, "(list) info" };;

	grainflow_spatview_tilde(const atoms& args = {})
		: ui_operator::ui_operator{ this, args }
	{
		m_timer.delay(33);
	};

	void transformPoint(target* t, float& x, float& y, float xoffset, float yoffset, float pad) {
		x = ((x+1)*0.5 + pad) * t->height() * (1 - pad) + xoffset * t->height();
		y = (1-(y+1)*0.5 + pad) * t->height() * (1 - pad) + yoffset * t->height();
	}

	void DrawGrains(target* t, float offset1, float offset2) {
		float pad = 0.5;
		if (grains.empty()) return;
		
		for (int i = 0; i < grainIndices.size(); i++) {
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
					color{ gColor },
					size{ scale, scale },
					position{ x - scale * 0.5f, y - scale * 0.5f }
			};
			x = res->second.x;
			y = res->second.z;
			transformPoint(t, x, y, offset2, 0, pad);
			ellipse<fill>{
				*t,
					color{ gColor },
					size{ scale, scale },
					position{ x - scale * 0.5f, y - scale * 0.5f }
			};
		}


	};

	void DrawSpeakers(target* t, int axis1, int axis2, float offset, float scale, color c) {
		auto s = m_speakerPositions.get_atoms();
		float pad = 0.5;
		scale *= t->height() * (1-pad);
		
		for (int i = 0; i < s.size() / 3; i++) {
			float x = (float)s[i * 3 + axis1];
			float y = (float)s[i * 3 + +axis2];
			transformPoint(t, x, y, offset, 0, pad);
			ellipse<fill>{
				*t,
				color{ c },
				size{ scale, scale },
				position{ x - scale * 0.5f, y - scale * 0.5f}
			};
			color dotColor = m_speakerOffColor;
			if (i < m_speakerAmps.size()) {
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
				color{ dotColor },
				size{ 0.05f * scale, 0.05f * scale },
				position{ x - scale * 0.5f * 0.05f, y - scale * 0.5f * 0.05f }
			};
		}
	};

	void ParseGrainAmps(atoms amps) {
		if (amps.size() < 1) return;
		for (int i = 0; i < amps.size(); i++) {
			if (auto search = grains.find(i); search != grains.end()) {
				search->second.size = amps[i];
			}
		}
		return;
	}

	void parsePosition(atoms args) {
		if (args.size() < 4) return;
		int idx = (int)args[0];
		if (grains.find(idx) == grains.end()) {
			grainIndices.push_back(idx);
		}
		VisualGrain g;
		g.x = (float)args[1];
		g.y = (float)args[2];
		g.z = (float)args[3];
		grains[idx] = g;
		return;
	}

	void ParseVizInfo(string dictName) {
		vizDict.register_as(dictName);
		auto keys = vizDict.getKeys();
		for (int i = 0; i < vizDict.keyCount(); i++) {
			auto name = keys[i];

			if (strcmp(name->s_name, "xyz") == 0) {
				dict grainPos = (atom)vizDict[name];
				auto subkeys = grainPos.getKeys();
				for (int j = 0; j < grainPos.keyCount(); j++) {
					int idx = std::stoi(subkeys[j]->s_name) - 1;
					if (idx > grainPos.keyCount() || idx < 0) continue;
					atoms xyz = grainPos[subkeys[j]];
					if (xyz.size() < 3) continue;
					parsePosition(atoms{ idx, xyz[0], xyz[1], xyz[2] });
				}
			}
			if (strcmp(name->s_name, "grainAmp") == 0) {
				ParseGrainAmps(vizDict[name]);
			}

			if (strcmp(name->s_name, "setSpeakerAmps") == 0) {
				m_speakerAmps = vizDict[name];
			}


			};

	}


	void DrawUi(target* t, float offset) {
		rect<fill>{
			*t,
				color{ color::predefined::black },
				size{ t->height() * 0.02, t->height() },
				position{ t->height()*(offset-0.01), 0.0 },
		};
		text{
			*t,
			content{"x | y"},
			color{color::predefined::black},
			fontsize{8},
			position{ t->height()*0.05, t->height() * 0.975 },
		};

		text{
			*t,
			content{"x | z"},
			color{color::predefined::black},
			fontsize{8},
			position{ t->height() * 2.35, t->height() * 0.975 },
		};
	};

	void Clear(target* t) {
		rect<fill>{
			*t,
			color{ m_backgroundColor }
		};
	}
	void DrawCenter(target* t, float offset1, float offset2) {
		if (!m_showCenter) return;
		float scale = t->height() * 0.05f;
		float pad = 0.5f;
		float x = centerPosition[0];
		float y = centerPosition[1];
		transformPoint(t, x, y, offset1, 0, pad);
		ellipse<fill>{
			*t,
				color{ m_centerColor},
				size{ scale, scale },
				position{ x - scale * 0.5f, y - scale * 0.5f }
		};
		
		x = centerPosition[0];
		y = centerPosition[2];
		transformPoint(t, x, y, offset2, 0, pad);
		ellipse<fill>{
			*t,
				color{ m_centerColor },
				size{ scale, scale },
				position{ x - scale * 0.5f, y - scale * 0.5f }
		};

	}


	void PaintInternal(target* t) {
		Clear(t);
		DrawSpeakers(t, 0, 1, 0.1, m_falloffDistance, m_speakerZoneColor);
		DrawSpeakers(t, 0, 2, 1.375, m_falloffDistance, m_speakerZoneColor);
		DrawCenter(t, 0.1, 1.375);

		DrawGrains(t, 0.1, 1.375);
		DrawUi(t, 1.25f);
	}





	message<> paint{
	this,
	"paint",
	[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
		target t{ args };
		PaintInternal(&t);
		return {};
	}
	};

	timer<timer_options::defer_delivery> m_timer{
		this,
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			redraw();
			m_timer.delay((1000 / m_fps));
			return {};
		}
	};

	message<> mousedown{
	this,
	"mousedown",
	[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
		event e {args};
		auto t{e.target()};
		auto x{e.x()};
		auto y{e.y()};
		clickPosition[0] = x;
		clickPosition[1] = y;
		region = (x < t.height() * 1.2) ? 0 : 1;
		clickToCenter(e.target());

		output.send(atoms{"center", (double)centerPosition[0], (double)centerPosition[1], (double)centerPosition[2] });

		return {};
	}
	};

	message<> mousedragdelta{
		this,
		"mousedragdelta",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			event e {args};
			auto x{e.x()};
			auto y{e.y()};

			clickPosition[0] += x;
			clickPosition[1] += y;


			clickToCenter(e.target());

			output.send(atoms{"center", (double)centerPosition[0], (double)centerPosition[1], (double)centerPosition[2]});
			return {};
		}
	};

	void clickToCenter(target t) {
		float h = 1/t.height();
		if (region == 0) {
			centerPosition[0] = clamp((clickPosition[0]*h - 0.5f)*4, -2.0f, 2.0f);
			centerPosition[1] = clamp((1-(clickPosition[1])*h-0.5f)*4, -2.0f, 2.0f);
		}
		else {
			centerPosition[0] = clamp(((clickPosition[0]) * h - 1.8f) * 4, -2.0f, 2.0f);
			centerPosition[2] = clamp((1 - (clickPosition[1]) * h - 0.5f) * 4, -2.0f, 2.0f);
		}
	}

	attribute<vector<double>> m_speakerPositions{
		this,
		"speakerPositions",
		{-1, 1, 0, 1, 1, 0},
		title{"Speaker Positions"}
	};

	attribute<vector<double>> m_dimmask{
	this,
	"dimmask",
	{1,1,0},
	title{"dim mask"}
	};

	attribute<number> m_falloffCurve{
		this,
		"falloffCurve",
		-1,
		title{"falloff curve"}
	};

	attribute<bool> m_showCenter{
	this,
	"drawCenter",
	false,
	title{"draw center"}
	};

	attribute<number> m_falloffDistance{
		this,
		"falloffDistance",
		1.5,
		title{"falloff distance"}
	};

	attribute<color> m_speakerZoneColor{
	this,
	"zoneColor",
	color(1,1,1,0.05),
	title{"zone color"}
	};

	attribute<color> m_backgroundColor{
		this,
		"backgroundColor",
		color(0.5,0.5,0.5,1),
		title{"background color"}
	};

	attribute<color> m_grainColor{
	this,
	"grainColor",
	color(1,1,0,1),
	title{"grain color"}
	};

	attribute<color> m_grainColor2{
	this,
	"grainColor2",
	color(0.8,0.7,0,1),
	title{"grain color 2"}
	};

	attribute<color> m_centerColor{
	this,
	"centerColor",
	color(0,0,0,1),
	title{"center color"}
	};



	attribute<color> m_speakerOnColor{
		this,
		"speakerOnColor",
		color(0,1,0,1),
		title{"speaker on color"}
	};


	attribute<number> m_grainscale{
		this,
		"grainScale",
		1,
		title{"grain scale"}
	};
	
	message<> vizInfo{
		this,
		"vizInfo",
		"Dictionary of grain visualization information generated by grainflow.spat.pan~",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			if (args.size() < 2) return {};
			if (((string)args[0]).compare("dictionary") > 0) return {};
			ParseVizInfo((string)args[1]);				
			return {};
			}
	};


	message<> pos{
		this,
		"pos",
		"grain positions",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			parsePosition(args);
			return {};
			}
	};

	message<> xyz{
	this,
	"xyz",
	"grain positions",
	[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
		parsePosition(args);
		return {};
		}
	};

	message<> grainAmps{
		this,
		"grainAmp",
		"set grain amplitudes",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
				ParseGrainAmps(args);
				return{};
		}
	};




	

	message<> speakers{
	this,
	"speakers",
	"",
	[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
		if (args.size() <= 0) return {};
		if (args[0].type() == message_type::symbol_argument) {
			if (strcmp(((string)args[0]).c_str(), "dictionary") != 0) return {};
			speakerDict.register_as((string)args[1]);
			auto keys = speakerDict.getKeys();
			for (int i = 0; i < speakerDict.keyCount(); i++) {
				auto name = keys[i];

				if (strcmp(name->s_name, "speakers") == 0) {
					dict speakers = (atom)speakerDict[name];
					if (!speakers.valid()) continue;
					auto subkeys = speakers.getKeys();
					speakerPositions_.resize(speakers.keyCount() * 3);
					for (int j = 0; j < speakers.keyCount(); j++) {
						atoms e = speakers[subkeys[j]];
						int idx = std::stoi(subkeys[j]->s_name)-1;
						if (idx > speakers.keyCount() || idx < 0) continue;
						speakerPositions_[idx * 3] = e[0];
						speakerPositions_[idx * 3+1] = e.size() > 1 ? (float)e[1] : 0;
						speakerPositions_[idx * 3+2] = e.size() > 2 ? (float)e[2] : 0;
					}
					m_speakerPositions.set(speakerPositions_);
					continue;
				};
				if (strcmp(name->s_name, "dimmask") == 0) {
					m_dimmask.set(speakerDict[name]);
					continue;
				}
				if (strcmp(name->s_name, "falloffDistance") == 0) {
					m_falloffDistance = speakerDict[name];
				}
				if (strcmp(name->s_name, "falloffCurve") == 0) {
					m_falloffCurve = speakerDict[name];
				}

				
			}
			
		}
	else if (args[0].type() == message_type::float_argument || args[0].type() == message_type::int_argument) {
			m_speakerPositions = args;
			}
		
		return {};
	}


	};


	message<> speakerAmp{
	this,
	"setSpeakerAmps",
	"set speaker amplitudes",
	[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
		if (args.size() < 1) return {};
			m_speakerAmps = args;		
			return{};
	}
	};

	message<> any{
	this,
	"anything",
	"",
	[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
		return {};
	}
	};


//private:

};
MIN_EXTERNAL(grainflow_spatview_tilde);