inlets = 1;
outlets = 2;




var buffer = new Buffer("");
var samples = []
var sampCount = 0;
var maxSamples = 1920;
var sampSkip = 50;
var dim = [];
var grainPositions = [];
var grainWindows = [];
var grainAmps = [];
var grainStates = [];
sketch.default2d();
sketch.glclear();
waveFormDrawn = false;
var waveform = new Sketch();
var lasty= 0;
var clickPos= [0,1];
var fps = 30;
var recHeadPos = -1;
var bufChans = [1];
var loadBufferNextFrame = false;

dim = [box.rect[2]-box.rect[0],box.rect[3]-box.rect[1]];
var selectposition = [0,1];
var selectpositionOut = [0,0]

drawTask = new Task(drawLoop, this);
		drawTask.interval= ((1/fps)*1000);
		drawTask.repeat(-1);

//Waveform Color

function anything(){}
function notifydeleted(){
	drawTask.cancel();

	}


function autoDraw(state){
	if ((state) && (!drawTask.running)){
		drawTask.interval= ((1/fps)*1000);

		drawTask.repeat(-1);
	}
	else if ((!state) && (drawTask.running)){
			drawTask.cancel();
		}

	}

var displayRange = [0.0, 1.0];
declareattribute("displayRange",			"getattr_displayRange",			"setattr_displayRange", 1);

function setattr_displayRange()
{
	displayRange = arrayfromargs(arguments);
	bang();
}

function getattr_displayRange()
{
	return displayRange;
}

var waveformColor = [0.1,0.1,0.1,1];

declareattribute("waveformColor",			"getattr_waveformColor",			"setattr_waveformColor", 1);

function setattr_waveformColor()
{
	waveformColor = arrayfromargs(arguments);
	drawWaveform();
}

function getattr_waveformColor()
{
	return waveformColor;
}


// Dot Color

var dotColor = [1,0,0,0.9];

declareattribute("dotColor",			"getattr_dotColor",			"setattr_dotColor", 1);

function setattr_dotColor()
{
	dotColor = arrayfromargs(arguments);

}

function getattr_dotColor()
{
	return dotColor;
}



// Dot Color

var dotColor2 = [0.5,0,0,0.9];

declareattribute("dotColorSecondary",			"getattr_dotColorSecondary",			"setattr_dotColorSecondary", 1);

function setattr_dotColorSecondary()
{
	dotColor2 = arrayfromargs(arguments);

}

function getattr_dotColorSecondary()
{
	return dotColor2;
}

//Dot Scale

var dotScale = 1;

declareattribute("dotScale",			"getattr_dotScale",			"setattr_dotScale", 1);

function setattr_dotScale(scale)
{
	dotScale = scale;

}

function getattr_dotScale()
{
	return dotScale;
}


//Dot Y Jitter


var dotVJitter = 0;

declareattribute("dotVJitter",			"getattr_dotVJitter",			"setattr_dotVJitter", 1);

function setattr_dotVJitter(scale)
{
	dotVJitter = scale;

}

function getattr_dotVJitter()
{
	return dotVJitter;
}

// Tri Show

var showTriangles = false;

declareattribute("showTriangles",			"getattr_showTriangles",			"setattr_showTriangles", 1);

function setattr_showTriangles(state)
{
	showTriangles = state;

}

function getattr_showTriangles()
{
	return showTriangles;
}


// Tri Color

var triangleColor = [1,1,1,1];

declareattribute("triangleColor",			"getattr_triangleColor",			"setattr_triangleColor", 1);

function setattr_triangleColor()
{
	triangleColor = arrayfromargs(arguments);

}

function getattr_triangleColor()
{
	return triangleColor;
}

//Tri outline

var triangleOutColor = [1,1,1,1];

declareattribute("triangleOutColor",			"getattr_triangleOutColor",			"setattr_triangleOutColor", 1);

function setattr_triangleOutColor()
{
	triangleOutColor = arrayfromargs(arguments);

}

function getattr_triangleOutColor()
{
	return triangleOutColor;
}

//Tracker Color
var trackerColor = [0.9,0.9,0.9,0.75];

declareattribute("trackerColor",			"getattr_trackerColor",			"setattr_trackerColor", 1);

function setattr_trackerColor()
{
	trackerColor = arrayfromargs(arguments);

}

function getattr_trackerColor()
{
	return trackerColor;
}

var trackerWidth = 2;

declareattribute("trackerWidth",			"getattr_trackerWidth",			"setattr_trackerWidth", 1);

function setattr_trackerWidth()
{
	trackerWidth = arrayfromargs(arguments);

}

function getattr_trackerWidth()
{
	return trackerWidth;
}



// Background Color
var bgColor = [1,1,1,0];

declareattribute("bgColor",			"getattr_bgColor",			"setattr_bgColor", 1);

function setattr_bgColor()
{
	bgColor = arrayfromargs(arguments);

}

function getattr_bgColor()
{
	return bgColor;
}

// Buffer Name
var buffername ="";

declareattribute("buffername",			"getattr_buffername",			"setattr_buffername", 1);

function setattr_buffername(thisbuffername)
{
	if (buffername != thisbuffername){
		buffername = thisbuffername;
		loadBufferNextFrame = true;
	}

}

function getattr_buffername()
{
	return buffername;
}

//Buffer channel

declareattribute("chan",			"getattr_chan",			"setattr_chan", 1);

//Mode 0 is none
//Mode 1 is select
//Mode 2 is loop

var chan = 0;

function setattr_chan(thischan)
{
	chan = thischan;
	loadBufferNextFrame = true;


}


function getattr_chan()
{
	return chan;
}


// Buffer Name
var mode = 0;

declareattribute("mode",			"getattr_mode",			"setattr_mode", 1);

//Mode 0 is none
//Mode 1 iss select
//Mode 2 is loop

function setattr_mode(thismode)
{
	mode = thismode;
	if (mode > 0){
		outlet(0, ["selection", selectposition[0], selectposition[1]]);
		}

}

function anything(){}

function getattr_mode()
{
	return mode;
}


// selectColor
var selectColor = [1,1,1,0.75];

declareattribute("selectColor",			"getattr_selectColor",			"setattr_selectColor", 1);

function setattr_selectColor()
{
	selectColor = arrayfromargs(arguments);

}

function getattr_selectColor()
{
	return selectColor;
}





declareattribute("selection",			"getattr_selection",			"setattr_selection", 1);

function setattr_selection()
{
	selectposition = arrayfromargs(arguments);
	outlet(0, ["selection", selectposition[0], selectposition[1]]);

}

function getattr_selection()
{
	return selectposition;
}


declareattribute("maxBufferDrawSamples",			"getattr_maxBufferDrawSamples",			"setattr_maxBufferDrawSamples", 1);

function setattr_maxBufferDrawSamples()
{
	maxSamples = arrayfromargs(arguments);
	loadBufferNextFrame = true;

}

function getattr_maxBufferDrawSamples()
{
	return maxSamples;
}


declareattribute("fps",			"getattr_fps",			"setattr_fps", 1);

function setattr_fps(rate)
{

	fps = rate;
	drawTask.interval= ((1/fps)*1000);
	drawTask.cancel();
	drawTask.repeat(-1);


	

}

function getattr_fps()
{
	return fps;
}


function load_buffer(){
	buffer = new Buffer(buffername);
	var bufTask = new Task(drawBuffer,this, buffername);
	bufTask.execute();
	loadBufferNextFrame = false;

	}


function buf(thisbuffername) {
		setattr_buffername(thisbuffername);
		}

function set(thisbuffername){
		setattr_buffername(thisbuffername);
	}


function drawBuffer(buffername){

	var bsamps =  buffer.framecount()*Math.abs(displayRange[0]-displayRange[1]);
	var bstart =  Math.floor(buffer.framecount()*(displayRange[0]));
	if (maxSamples < bsamps){
	sampSkip = Math.floor(bsamps/ maxSamples)
	sampCount = maxSamples
	}
	else{
			sampCount = bsamps;
			sampSkip = 1;
		}
	for (i = 0; i < sampCount; i++){
		bchan = chan;
		if (chan == 0){
			bchan = 1;
		}
		samples[i+bstart] = buffer.peek(bchan,i*sampSkip,1)
		}

	drawWaveform();

	}

function scaleX(x){
	return x*(dim[0]/dim[1])*2-(dim[0]/dim[1]);
			}


function draw(){

	with(sketch){
		glclearcolor(bgColor[0],bgColor[1],bgColor[2],bgColor[3]);
		glclear();


		if (mode == 1 || mode == 2){
			glcolor(selectColor[0],selectColor[1],selectColor[2],selectColor[3]);

						/*
			selX1 = (2*selectposition[0]-1)*dim[0]/dim[1];
			selX2 = (2*selectposition[1]-1)*dim[0]/dim[1];


			quad(selX1,-1,0,selX1,1,0,selX2,1,0,selX2,-1,0);
			*/

			selX1 = (2*selectposition[0]-1)*dim[0]/dim[1];
			selX2 = (2*selectposition[1]-1)*dim[0]/dim[1];


			quad(selX1,-1,0,selX1,1,0,selX2,1,0,selX2,-1,0);

			selX1 = (2*selectposition[0]+1)*dim[0]/dim[1];
			selX2 = (2*selectposition[1]+1)*dim[0]/dim[1];


			quad(selX1,-1,0,selX1,1,0,selX2,1,0,selX2,-1,0);

			selX1 = (2*selectposition[0]-3)*dim[0]/dim[1];
			selX2 = (2*selectposition[1]-3)*dim[0]/dim[1];


			quad(selX1,-1,0,selX1,1,0,selX2,1,0,selX2,-1,0);






					}


		if (waveFormDrawn){
		copypixels(waveform,0,0,0,0,dim[0],dim[1]);

		}
		glcolor(trackerColor[0],trackerColor[1],trackerColor[2],trackerColor[3]);
		gllinewidth(trackerWidth);

		moveto(scaleX(recHeadPos),-1,0);
		lineto(scaleX(recHeadPos),1,0);

		//Dots
		for (p = 0 ; p < grainPositions.length; p++){
			if((grainStates[p] != 0 && bufChans[p%bufChans.length] == chan) || chan == 0){
			dotColorMod = p/grainPositions.length*0.5;
			dotR= dotColor[0]*(1-dotColorMod) + dotColor2[0]*(dotColorMod);
			dotG= dotColor[1]*(1-dotColorMod) + dotColor2[1]*(dotColorMod);
			dotB= dotColor[2]*(1-dotColorMod) + dotColor2[2]*(dotColorMod);
			dotA= dotColor[3]*(1-dotColorMod) + dotColor2[3]*(dotColorMod);
			glcolor(dotR, dotG, dotB, dotA);
			moveto(scaleX((wrap(grainPositions[p],0,1)-displayRange[0])/Math.abs(displayRange[1]-displayRange[0])), 1.75*grainAmps[p]-(1.75*0.5) + (0.05/grainPositions.length*p-0.05)*(1+dotVJitter));
			circle(0.05*Math.pow(Math.sin(grainWindows[p]*Math.PI*0.5)*dotScale,0.5), 0, 360);
					}
					}

		if (showTriangles){

		glcolor(triangleColor[0],triangleColor[1],triangleColor[2],triangleColor[3]);
		tri(scaleX(clickPos[0]), -0.9,0, scaleX(clickPos[0])-0.1,-1,0,scaleX(clickPos[0])+0.1,-1,0);

		ypos = (clickPos[1]*2)-1;
		tri(scaleX(0)+0.1, ypos,0, scaleX(0),ypos-0.1,0,scaleX(0),ypos+0.1,0);

		glcolor(triangleOutColor[0],triangleOutColor[1],triangleOutColor[2],triangleOutColor[3]);

		frametri(scaleX(0)+0.1, ypos,0, scaleX(0),ypos-0.1,0,scaleX(0),ypos+0.1,0);
		frametri(scaleX(clickPos[0]), -0.9,0, scaleX(clickPos[0])-0.1,-1,0,scaleX(clickPos[0])+0.1,-1,0);

}



		}


	}


function setSelection(x1,x2){
	selectposition = [x1,x2];

	}

function drawWaveform(){

	waveform = new Sketch(dim[0],dim[1])
	waveform.default2d();
	waveform.glclearcolor(1,1,1,0);
	waveform.glclear();
	waveform.moveto(-dim[0]/2,samples[0],0);
	waveform.glcolor(waveformColor[0], waveformColor[1], waveformColor[2], waveformColor[3])
		for (s = 1 ; s < samples.length; s++){
			samp = samples[s];
			waveform.lineto(scaleX(s/sampCount),samp,0);
			//waveform.strokepoint(scaleX(s/sampCount),samp,0);
			}

	waveFormDrawn = true;

	}

function grainPosition(){
	grainPositions = arrayfromargs(messagename,arguments);


			}
function grainWindow(){
	grainWindows = arrayfromargs(messagename,arguments);


			}
function grainAmp(){
	grainAmps = arrayfromargs(messagename,arguments);


			}

function grainState(){
	grainStates = arrayfromargs(messagename,arguments);


			}


function bufChan(){
	bufChans = arrayfromargs(messagename,arguments);
	}

function drawLoop(){
	if (loadBufferNextFrame){
		load_buffer();
	}
	draw();
	refresh();

	}

function clearGrains(){
	grainPositions = [];


	}




function onresize(w,h){
	dim[0] = w;
	dim[1] = h;
	drawWaveform();


	}

onresize.local = 1;


function onclick(x,y,button){
	y = y/dim[1],0,1;
	x = x/dim[0];
	lastY = y;



	if(mode == 1){
		selectposition[0] = x;
		selectposition[1] = x;
		outlet(0,["selection", selectposition[0], selectposition[1]]);

		}


	if(mode == 2){

		var distance = Math.abs(selectposition[1]-selectposition[0])/2;
		x = wrap(x,0,1);
		selectposition[0] = x - distance;
		selectposition[1] = x + distance;


		selectpositionOut = selectposition;
		outlet(0,["selection", selectpositionOut[0], selectpositionOut[1]]);

		}

	x = wrap(x,0,1);
	y = clamp(y,0,1);
	outlet(1,["clicking", x, 1-y, button]);
	clickPos = [x, 1-y];




	}


function ondrag(x,y,button){
	y = y/dim[1],0,1;
	x = x/dim[0],0,1;

	var dY = y - lastY;
	lastY = y;


		if(mode == 1){
		selectposition[1] = x;

		var distance = selectposition[1]-selectposition[0];
		if (distance > 1){
			selectposition[1] = selectposition[0] + 1;
		}
		else if (distance < -1){
			selectposition[1] = selectposition[0] - 1;
			}

		selectpositionOut[0] = selectposition[0];
		selectpositionOut[1] = selectposition[1];
		outlet(0,["selection", selectpositionOut[0], selectpositionOut[1]]);

		}

		if(mode == 2){
			x = wrap(x,0,1);
			var distance = Math.abs(selectposition[1]-selectposition[0])/2;
			distance = clamp(distance*(1-dY),0,0.5);
			selectposition[0] = x - distance;
			selectposition[1] = x + distance;

			selectpositionOut.sort();
			outlet(0,["selection", selectpositionOut[0], selectpositionOut[1]]);

		}

	x = wrap(x,0,1);
	y = clamp(y,0,1);
	outlet(1,["clicking", x, 1-y, button]);
	clickPos = [x, 1-y];

	}

function ondblclick(x,y,button){
	x = wrap(x/dim[0],0,1);
	y = clamp(y/dim[1],0,1);
	outlet(1,["doubleclick", x, 1-y, button]);
	if (mode == 1 || mode==2){
		selectposition = [0,1]
		outlet(0,["selection", selectposition[0], selectposition[1]]);
		}
	}

function onidle(x,y,button){
	x = wrap(x/dim[0],0,1);
	y = clamp(y/dim[1],0,1);
	outlet(1,["idle", x, 1-y, button]);
	}

function clamp(num, min, max) {
  return num <= min ? min : num >= max ? max : num;
}

function wrap(x, min, max){

	if (x < 0){
		x = Math.abs(1+x);
		}

	x = x % (max-min);
	x = x+min;

	return x;

	}

function loadbang(){
	loadBufferNextFrame = true;
	}

function bang(){
	loadBufferNextFrame = true;
	}
	

function recordHead(progress){
	recHeadPos = progress;


	}
