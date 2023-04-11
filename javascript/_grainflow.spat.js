var centerpos = {
	x: 0, y:0, z:0	
	}
	
var rotation = {
	x: 0, y:0, z:0	
	}
	
var scale = {
	x:1, y:1, z:1

}

function cartopol(x,y){
    var r = Math.sqrt(x*x + y*y)
    var t = Math.atan2(y,x) //This takes y first
    var position = {'r':r, 't':t}
    return position;
}

function poltocar(r ,t){
    var x = r * Math.cos(t);
    var y = r * Math.sin(t);
    var position = {'x':x,'y':y,'z':0};
    return position;
}

function outputPos(grain, pos){
	pos.x += centerpos.x;
	pos.y += centerpos.y;
	pos.z += centerpos.z;
	
	pos = _rotate(pos,rotation);
	
    outlet(0,["pos", grain, pos.x, pos.y, pos.z]);
}

function arcVolume2d(grain, rad, phase, innerRad){
	if (rad == null) rad = 1;
	if (phase == null) phase = 1;
	if (innerRad== null) innerRad = 0;

    var pos = poltocar(((rad*(1-innerRad))*Math.random())+rad*innerRad, (Math.random()*phase)*Math.PI*2);
    
    pos.z = pos.y;
	pos.y = 0
	
    outputPos(grain, pos);
}

function boxVolume2d(grain, w, h, inner){
	if (!h) h=1;
	if (!w) w=1;
	if (!inner) inner = 0;
	
	var pos = {
		'x' :  (((Math.random()*(1-inner))+inner)*0.5)*(1-((Math.random()>0.5)*2))*w,
		'y' : 0,
		'z':  ((Math.random())*0.5)*(1-((Math.random()>0.5)*2))*h
				};
		
				
		if(Math.random() > 0.5){
			var x = pos.x;
			var y = pos.z;
			pos.x = y;
			pos.z = x;
			
			}
		
		
		outputPos(grain,pos);

	}

function moveto(x,y,z){
	centerpos.x = x;
	centerpos.y = y;
	centerpos.z = z
	
	}
	
function move(x,y,z){
	centerpos.x += x;
	centerpos.y += y;
	centerpos.z += z
	
	}
	
function rotateto(pitch, roll, yaw){
	rotation.x = pitch * (Math.PI)*2;
	rotation.y = roll * (Math.PI)*2;
	rotation.z = yaw * (Math.PI)*2;
	
	}
	
function rotate(pitch, roll, yaw){
	rotation.x += pitch* (Math.PI)*2;
	rotation.y += roll*(Math.PI)*2;
	rotation.z += yaw* (Math.PI)*2;
	
	}
	
	
function _rotate(point, rot){
	var cosa = Math.cos(rot.x);
    var sina = Math.sin(rot.x);

    var cosb = Math.cos(rot.y);
    var sinb = Math.sin(rot.y);

    var cosc = Math.cos(rot.z);
    var sinc = Math.sin(rot.z);

 	var Axx = cosa*cosb;
    var Axy = cosa*sinb*sinc - sina*cosc;
    var Axz = cosa*sinb*cosc + sina*sinc;

    var Ayx = sina*cosb;
    var Ayy = sina*sinb*sinc + cosa*cosc;
    var Ayz = sina*sinb*cosc - cosa*sinc;

    var Azx = -sinb;
    var Azy = cosb*sinc;
    var Azz = cosb*cosc;
	
	var px = point.x;
	var py = point.y;
	var pz = point.z;

	point.x = Axx*px + Axy*py + Axz*pz;
	point.y = Ayx*px + Ayy*py + Ayz*pz;
	point.z = Azx*px + Azy*py + Azz*pz;
	
	return point;
	
	}

function center(x,y,z){
	moveto(x,y,z);
	
	}

