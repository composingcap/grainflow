
var outPos;
var inPos = new Dict("inPos" + String(Math.floor(Math.random()*100000+1000)));
var falloffD = 1.1;
var spreadxyz = [0.5,0.5,0.5];
var spreadxyzinner = [0,0,0];
var centerpos = [0,0,0];
var gcolor1= [0.8,0.7,0];
var gcolor2 = [1, 1,0];
var grainAmps = [];
var showCenter = false;
var drawTask = new Task(drawLoop, this);
drawTask.interval= ((1/24)*1000);
	drawTask.repeat(-1);

sketch.default2d();
draw();
var activationColor = [0, 1., 0, 1]; 
var speakerAmps = [0];

sketch.glshademodel("smooth");
sketch.glrotate(0,1,0,0);
//sketch.glenable("blend");
//sketch.glmatrixmode("projection");

sketch.glblendfunc("src_alpha","one_minus_src_alpha");

var width = box.rect[2] - box.rect[0];
var xyOffset = 1.25;
function setSpeakerAmps(){
	speakerAmps = arrayfromargs(arguments);
	//post(speakerAmps, "\n");
	}

function draw(){
    with (sketch){
		glclearcolor(0.5, 0.5, 0.5, 1.);

        glclear();			
		moveto(0,0);


        if (outPos){
            var k = outPos.getkeys();
            if (k){
            for (var i = 0; i <k.length; i++){
                
                var pos = outPos.get(k[i]);

				glcolor(0.5,0.5,0.5,0.05);
 
                moveto(pos[0]*0.5 - xyOffset ,pos[1]*0.5);
                circle(falloffD*0.5);

				moveto(pos[1]*0.5 + xyOffset ,pos[2]*0.5);
				circle(falloffD*0.5);




            }
            for (var i = 0; i <k.length; i++){
                var pos = outPos.get(k[i])
				ampColor = 0;
				if (speakerAmps[i] != undefined){
					ampColor = speakerAmps[i];
					}
 				glcolor(0,0+ampColor,0,1);

                moveto(pos[0]*0.5-xyOffset,pos[1]*0.5);
                circle(0.03);

                moveto(pos[1]*0.5+xyOffset,pos[2]*0.5);
                circle(0.03);
				}
        }
        }
    if (centerpos && showCenter){
    moveto(centerpos[0]*0.5-xyOffset,centerpos[1]*0.5,centerpos[2]*0.5);
	glcolor(0,0,0,1);

	circle(0.05);
	}
    

        if (inPos){
            var k = inPos.getkeys();
            if(k){
            for (var i = 0; i <k.length; i++){
				var cfact = i/(k.length-1)
				var thisColor = [0,0,0];
				for (var j = 0; j<3; j++) thisColor[j]=gcolor1[j]*(1-cfact)+gcolor2[j]*cfact;
                glcolor(thisColor[0],thisColor[1],thisColor[2],1);
                var pos = inPos.get(k[i])
				if (pos){
					
                moveto(pos[0]*0.5-xyOffset,pos[1]*0.5, pos[2]*0.5);
                circle(0.025*grainAmps[i]);

				moveto(pos[1]*0.5+xyOffset,pos[2]*0.5, pos[0]*0.5);
                circle(0.025*grainAmps[i]);


				}

            } 
        }

		}
	glcolor(0.5, 0.5, 0.5, 1);
	gllinewidth(10);
	moveto(0,1);
	lineto(0,-1)
	
	glcolor(0., 0., 0., 1);
	gllinewidth(3);
	moveto(0,1);
	lineto(0,-1)
	
	
	glcolor(0.5, 0.5, 0.5, 1);
	gllinewidth(30);
	moveto(-xyOffset*2,-0.9);
	lineto(-xyOffset*1.5,-0.9)
	glcolor(0., 0., 0., 1);
	moveto(-xyOffset*1.9,-0.9);
	textalign("left","center")
	text("x | y")
	
		
	glcolor(0.5, 0.5, 0.5, 1);
	gllinewidth(30);
	moveto(xyOffset*2,-0.9);
	lineto(xyOffset*1.5,-0.9)
	glcolor(0., 0., 0., 1);
	moveto(xyOffset*1.9,-0.9);
	textalign("right","center")
	text("y | z")
	

    }    
}

function rotateScene(r, x,y,z){
	sketch.glrotate(r,x,y,z);
	
	}

function falloffDistance(d){
    falloffD = d;
} 

function speakers(){

    args = arrayfromargs(arguments);

    if (args[0] === "dictionary"){
	//Use existing dict
        outPos = new Dict(args[1]);
    }
    else{
	//Creates new dictionary from values
		outPos = new Dict();
		for (var i=0 ; i < Math.floor(args.length/3); i++){
			outPos.set(i+1, args.slice(i*3,(i*3+3))); 
			}
    }

}

function drawLoop(){
    draw();
    refresh();
}

function pos(){
    var args = arrayfromargs(arguments);
    inPos.set(String(args[0]),args.slice(1,4));

}

function spread(){
    var args = arrayfromargs(arguments);
    if (args.length == 1){
        spreadxyz = [args[0],args[0],args[0]];
    }
    if (args.length == 2){
        spreadxyz = [args[0],0,args[1]];
    }
    if (args.length == 3){
        spreadxyz = [args[0],args[1],args[2]];
    }

}

function spreadInner(){
    var args = arrayfromargs(arguments);
    if (args.length == 1){
        spreadxyzinner = [args[0],args[0],args[0]];
    }
    if (args.length == 2){
        spreadxyzinner = [args[0],0,args[1]];
    }
    if (args.length == 3){
        spreadxyzinner = [args[0],args[1],args[2]];
    }



}
function center(){
    centerpos = arrayfromargs(arguments);

}

function onclick(x,y,but,cmd,shift,capslock,option,ctrl){
    if(showCenter){
	centerpos = [((x/width-1)*2)*2+2,-((y/width*2)-1)*2, 0]

    outlet(0,["center", centerpos[0],centerpos[1],centerpos[2]])
}
}

function ondrag(x,y,but,cmd,shift,capslock,option,ctrl){
	 if(showCenter){
    centerpos = [((x/width-1)*2)*2+2,-((y/width*2)-1)*2, 0]
    outlet(0,["center", centerpos[0],centerpos[1],centerpos[2]])
}


}

function onresize(w,h)
{
    width = box.rect[2] - box.rect[0];
    if (w != h*2.5) {
		box.size(w, w/2.5);
	}
	}



function frameSphere(x,y,z){
	with(sketch){
		

			
			shapeorient(0, 0, 0);
			frameellipse(x,y);
			
			//shapeorient(90, 90, 0);
			//frameellipse(y,z);


			
		}
	
	}
function xyz(){
	var args = arrayfromargs(arguments);
	
    inPos.set(String(args[0]),args.slice(1,4));
	
	}
	
function grainAmp(){
	
	grainAmps = arrayfromargs(arguments);
	}
	
function anything(){
	
	}


function grainReset(){
	inPos.clear();
	
	}