inlets = 1;
outlets = 2;




var buf = new Buffer("");
var samples = []
var sampCount = 0;
var maxSamples = 5000;
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



dim = [box.rect[2]-box.rect[0],box.rect[3]-box.rect[1]];

drawTask = new Task(drawMe, this);
drawTask.interval=66;
drawTask.repeat(-1);
//drawTast.execute();

//Waveform Color

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


// Background Color
var bgColor = [0,0,0,0];

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
	buffername = thisbuffername;
	load_buffer();

}

function getattr_buffername()
{
	return buffername;
}




function load_buffer(){
	buf = new Buffer(buffername);
	var bufTask = new Task(drawBuffer,this, buffername);
	bufTask.execute();
	
	}

function set(thisbuffername){
		setattr_buffername(thisbuffername);
	}

function drawBuffer(buffername){
	

	if (maxSamples < buf.framecount()){
	sampSkip = Math.floor(buf.framecount()/ maxSamples)
	sampCount = maxSamples
	}
	else{
			sampCount = buf.framecount();
			sampSkip = 1;
		}
	
	for (i = 0; i < sampCount; i++){
		samples[i] = buf.peek(0,i*sampSkip,1)
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
		if (waveFormDrawn){
		copypixels(waveform,0,0,0,0,dim[0],dim[1]);
		
		}

			
		for (p = 0 ; p < grainPositions.length; p++){
			if(grainStates[p] != 0){
			dotColorMod = p/grainPositions.length*0.5;
			glcolor(dotColor[0]*(0.5+dotColorMod),dotColor[1]*(0.5+dotColorMod),dotColor[2]*(0.5+dotColorMod),dotColor[3]);
			moveto(scaleX(grainPositions[p]%1), 1.75*grainAmps[p]-(1.75*0.5) + 0.05/grainPositions.length*p-0.05);
			circle(0.05*Math.pow(Math.sin(grainWindows[p]*Math.PI),0.5), 0, 360);
					}
					}		
		
		
		}
	
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
	
function drawMe(){
	draw();
	refresh();

	}
	


			
function onresize(w,h){
	dim[0] = w;
	dim[1] = h;
	drawWaveform();
	draw();
	refresh();
	
	}
	
onresize.local = 1;


function onclick(x,y,button){
	x = wrap(x/dim[0],0,1);
	y = clamp(y/dim[1],0,1);
	outlet(1,["clicking", x, 1-y, button]);
	
	
	}
	
function ondrag(x,y,button){
	x = wrap(x/dim[0],0,1);
	y = clamp(y/dim[1],0,1);
	outlet(1,["clicking", x, 1-y, button]);
	
	}
	
function ondblclick(x,y,button){
	x = wrap(x/dim[0],0,1);
	y = clamp(y/dim[1],0,1);
	outlet(1,["doubleclick", x, 1-y, button]);
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