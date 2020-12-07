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



function set(buffername){
	buf = new Buffer(buffername);
	var bufTask = new Task(drawBuffer,this, buffername);
	bufTask.execute();
	
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
		glclear();
		if (waveFormDrawn){
		copypixels(waveform,0,0,0,0,dim[0],dim[1]);
		}

			
		for (p = 0 ; p < grainPositions.length; p++){
			if(grainStates[p] != 0){
			glcolor(0.5+0.5*p/grainPositions.length,0,0,0.9)
			moveto(scaleX(grainPositions[p]%1), 1.75*grainAmps[p]-(1.75*0.5) + 0.05/grainPositions.length*p-0.05);
			circle(0.05*Math.pow(Math.sin(grainWindows[p]*Math.PI),0.5), 0, 360);
					}
					}		
		
		
		}
	
	}


function drawWaveform(){
	waveform = new Sketch(dim[0],dim[1])
	waveform.default2d();
	
	waveform.glclear();
	waveform.moveto(-dim[0]/2,samples[0],0);
	waveform.glcolor(0, 0, 0, 1)
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
	x = clamp(x/dim[0],0,1);
	y = clamp(y/dim[1],0,1);
	outlet(1,["clicking", x, 1-y, button]);
	
	
	}
	
function ondrag(x,y,button){
	x = clamp(x/dim[0],0,1);
	y = clamp(y/dim[1],0,1);
	outlet(1,["clicking", x, 1-y, button]);
	
	}
	
function ondblclick(x,y,button){
	x = clamp(x/dim[0],0,1);
	y = clamp(y/dim[1],0,1);
	outlet(1,["doubleclick", x, 1-y, button]);
	}
	
function onidle(x,y,button){
	x = clamp(x/dim[0],0,1);
	y = clamp(y/dim[1],0,1);
	outlet(1,["idle", x, 1-y, button]);
	}
	
function clamp(num, min, max) {
  return num <= min ? min : num >= max ? max : num;
}