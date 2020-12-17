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



dim = [box.rect[2]-box.rect[0],box.rect[3]-box.rect[1]];
var selectposition = [0,1];
var selectpositionOut = [0,0]

drawTask = new Task(drawMe, this);
drawTask.interval=33;
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
	buffername = thisbuffername;
	load_buffer();

}

function getattr_buffername()
{
	return buffername;
}

// Buffer Name
var mode = 0;

declareattribute("mode",			"getattr_mode",			"setattr_mode", 1);

//Mode 0 is none
//Mode 1 is select
//Mode 2 is loop

function setattr_mode(thismode)
{
	mode = thismode;

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
	load_buffer()

}

function getattr_maxBufferDrawSamples()
{
	return maxSamples;
}


function load_buffer(){
	buffer = new Buffer(buffername);
	var bufTask = new Task(drawBuffer,this, buffername);
	bufTask.execute();
	
	}

	
function buf(thisbuffername) {
		setattr_buffername(thisbuffername);
		}

function set(thisbuffername){
		setattr_buffername(thisbuffername);
	}

		
function drawBuffer(buffername){
	

	if (maxSamples < buffer.framecount()){
	sampSkip = Math.floor(buffer.framecount()/ maxSamples)
	sampCount = maxSamples
	}
	else{
			sampCount = buffer.framecount();
			sampSkip = 1;
		}
	
	for (i = 0; i < sampCount; i++){
		samples[i] = buffer.peek(0,i*sampSkip,1)
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

		//Dots 	
		for (p = 0 ; p < grainPositions.length; p++){
			if(grainStates[p] != 0){
			dotColorMod = p/grainPositions.length*0.5;
			dotR= dotColor[0]*(1-dotColorMod) + dotColor2[0]*(dotColorMod);
			dotG= dotColor[1]*(1-dotColorMod) + dotColor2[1]*(dotColorMod);
			dotB= dotColor[2]*(1-dotColorMod) + dotColor2[2]*(dotColorMod);
			dotA= dotColor[3]*(1-dotColorMod) + dotColor2[3]*(dotColorMod);
			glcolor(dotR, dotG, dotB, dotA);
			moveto(scaleX(grainPositions[p]%1), 1.75*grainAmps[p]-(1.75*0.5) + (0.05/grainPositions.length*p-0.05)*(1+dotVJitter));
			circle(0.05*Math.pow(Math.sin(grainWindows[p]*Math.PI*0.5)*dotScale,0.5), 0, 360);
					}
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