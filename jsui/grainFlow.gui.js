inlets = 1;
outlets = 1;


var buf = new Buffer("");
var samples = []
var sampCount = 0;
var sampSkip = 50;
sketch.default2d();
draw();
refresh();

dim = [box.rect[2]-box.rect[0],box.rect[3]-box.rect[1]];



function set(buffername){
	
 	buf = new Buffer(buffername);
	sampCount = buf.framecount()/sampSkip;
	for (i = 0; i < sampCount; i++){
		samples[i] = buf.peek(0,i*sampSkip,1)
		}
	draw();
	
	}

function draw(){
	
	with(sketch){
		
		moveto(-dim[0]/2,samples[0],0);
		for (s = 1 ; s < samples.length; s++){
			samp = samples[s];
			lineto((s/sampCount)*dim[0]/2,samp,0);
			
			}
		
		
		
		}
	
	}
	
function onresize(w,h){
	dim[0] = w;
	dim[1] = h;
	draw();
	refresh();
	
	}
	
onresize.local = 1;