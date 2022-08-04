
var outPos;
inPos = new Dict();
var falloffD = 1.1;
var spreadxyz = [0.5,0.5,0.5];
var spreadxyzinner = [0,0,0];
var centerpos = [0,0,0];
drawTask = new Task(drawLoop, this);
drawTask.interval= ((1/24)*1000);
	drawTask.repeat(-1);

sketch.default2d();
draw(); 


var width = box.rect[2] - box.rect[0];

function draw(){
    with (sketch){
        glclear();			
		moveto(0,0);

        if (outPos){
            var k = outPos.getkeys();
            if (k){
            for (var i = 0; i <k.length; i++){
                
                var pos = outPos.get(k[i])
                if (pos.length == 3){
                    moveto(pos[0]*0.5,pos[2]*0.5);
                }
                if (pos.length == 2){
                    moveto(pos[0]*0.5,pos[1]*0.5);
                }
                glcolor(0,0,0,0.25);
                circle(falloffD*0.5);
                glcolor(0,0,0,1);
                circle(0.025);


            }
        }
        }

        if (inPos){
            var k = inPos.getkeys();
            if(k){
            for (var i = 0; i <k.length; i++){
                glcolor(0,0,1,1);
                var pos = inPos.get(k[i])

                moveto(pos[0]*0.5,pos[2]*0.5);

                circle(0.0125);


            }
            
        }
    }


    if (centerpos){
    moveto(centerpos[0]*0.5,centerpos[2]*0.5);
    }
    if (spreadxyz){
    
        glcolor(0,0,0,0.75);
        gllinewidth(0.5);
        frameellipse(spreadxyz[0]*0.5,spreadxyz[2]*0.5,0,360);
    }

    if (spreadxyzinner){
        glcolor(0,0,0,0.75);
        gllinewidth(0.5);
        frameellipse(spreadxyzinner[0]*0.5,spreadxyzinner[2]*0.5,0,360);
    }
    }    
}

function falloffDistance(d){
    falloffD = d;
}

function speakers(){

    args = arrayfromargs(arguments);

    if (args[0] === "dictionary"){
        outPos = new Dict(args[1]);
    }
    else{

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
    centerpos = [((x/width-1)*2)*2+2,0,-((y/width*2)-1)*2]

    outlet(0,["center", centerpos[0],0,centerpos[2]])

}

function ondrag(x,y,but,cmd,shift,capslock,option,ctrl){
    centerpos = [((x/width-1)*2)*2+2,0,-((y/width*2)-1)*2]
    outlet(0,["center", centerpos[0],0,centerpos[2]])


}

function onresize(w,h)
{
    width = box.rect[2] - box.rect[0];
    if (w!=h) {
		h = w;
		box.size(w,h);
	}


}

