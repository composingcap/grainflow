/*
Modulation dial

*/

outlets = 3;
inlets = 3;
inspector = 1;

setinletassist(0, "silder value");
setinletassist(1, "random amount");
setinletassist(3, "display number");

var val = 0;
var outval=0;
var outmod = 0
var last_x = 0;
var last_y = 0;
var arc = 300;
var mod = 0;
var modMode = 0;
var nmods = 1;
var orgin = [0,0]
var range = [0,1];
var marker = null; 
var useNorm = 0;
var myname = "mod dial"
var accent = [0.427, 0.843, 1.000, 1.000];
var myfont = "ableton sans medium";
var clicked = 0;
var inputField = 0;
var p = this.patcher;
var inputingNumber = false; 
function setvalueof(){
	
	 val = arguments[0];
	 mod = arguments[1];
	 draw();
     refresh();
     notifyclients();
	
	}

function getvalueof(){
	
	pattrarray = [val, mod];
	
	return pattrarray;
	
	}
	
	function notifydeleted(){
		if (keyobj){
			this.patcher.remove(keyobj);

		}

		checkIfLockedTask.cancel();


	}

var checkIfLockedTask = new Task(checkIfLocked, this);
checkIfLockedTask.interval = 100;
checkIfLockedTask.repeat();
function checkIfLocked(){
	if (!this.patcher.locked){
		if (keyobj){
			this.patcher.remove(keyobj);
		}
	}
}

declareattribute("accentColor", "getattr_accentColor", "setattr_accentColor", 1);

function setattr_accentColor()
{
	accent = (arrayfromargs(arguments));
	draw();
	refresh();

}


function getattr_accentColor()
{
	return accent;
	

}

var keyinputbuffer = ""

function keyin(key, modifier){
	
	if(key < 57 && key > 47){
		inputingNumber = true;
		var num = key - 48;
		keyinputbuffer += num;
	}
	else if (key == 46){
		inputingNumber = true;
		keyinputbuffer+= ".";
		
	}

	else if (key == 8){
		if (keyinputbuffer != ""){
			keyinputbuffer = keyinputbuffer.slice(0, keyinputbuffer.length-1);
		}
	
	}
	
	else if (key == 13){
		
		inputingNumber = false;
		var v = val;
		var m = mod;

		if (inputField == 0){
			v = (parseFloat(keyinputbuffer));
			v = map(v,range[0],range[1],0,1);
		}
		else if (inputField == 1){
			m = (parseFloat(keyinputbuffer));
			m =  map(m,0,range[1]-range[0],0,1);
		}
		setValues(v,m)
		keyinputbuffer = "";

	}
	else if (key == 30 || key == 31){
		inputField = (inputField + 1) % 2;
	}

	draw();
	refresh();


	
}


declareattribute("font", "getattr_font", "setattr_font", 1);

function setattr_font()
{
	myfont = (arrayfromargs(arguments)).join(" ");
	if (myfont == "") myfont = "ableton sans medium";
	
	draw();
	refresh();

}




function getattr_font()
{
	return myfont;
	

}

declareattribute("name", "getattr_name", "setattr_name", 1);

function setattr_name()
{
	myname = (arrayfromargs(arguments)).join(" ");
	draw();
	refresh();

}


function getattr_name()
{
	return myname;
	

}

var units = "";
declareattribute("units", "getattr_units", "setattr_units", 1);

function setattr_units()
{
	units = (arrayfromargs(arguments)).join(" ");
	draw();
	refresh();

}


function getattr_units()
{
	return units;
	
}


declareattribute("modMode", "getattr_modMode", "setattr_modMode", 1);

function setattr_modMode(mode){
	
	modMode = (mode<0)*-1+(mode>0)*1; 
	bang();

}


function getattr_modMode()
{
	return modMode;
	
}

declareattribute("normMode", "getattr_normMode", "setattr_normMode", 1);

function setattr_normMode(mode){
	
	useNorm = (mode>0); 
	bang();

}


function getattr_normMode()
{
	return useNorm;
	
}


declareattribute("range", "getattr_range", "setattr_range", 1);

function setattr_range(low, high){
	
	range = [low, high];
	bang(); 


}


function getattr_range()
{
	return range;
	
}

function map(num, m1, m2, m3, m4){
	num -= m1;
	num /= (m2-m1);
	num *= (m4-m3);
	num += m3;
	return num;
	
	}




draw();

function draw()
{
	var theta;
	var width = box.rect[2] - box.rect[0];
	
	with (sketch) {
		innersize = 0.4;
		outersize = 0.5;

		glclearcolor(0,0,0,0);
		glclear();	
		glenable("line_smooth");
		
		moveto(orgin[0],orgin[1]);
		glcolor(0,0,0,1);
		gllinewidth(2.0);
		framecircle(innersize,-90-1*arc-(360-arc)/2,-90-(360-arc)/2)
		glcolor(accent[0],accent[1],accent[2],accent[3]);
		gllinewidth(2.5);
		framecircle(innersize,-90-val*arc-(360-arc)/2,-90-(360-arc)/2);	
		var dispMode = "+/-";
		glcolor(0.5,0.5,0.5,1);					
		if (modMode == 0){
			framecircle(outersize,-90-clamp((val-mod),0,1)*arc-(360-arc)/2,-90-clamp((val+mod),0,1)*arc-(360-arc)/2);	
		
		}
		else if (modMode < 0){
			framecircle(outersize,-90-(val)*arc-(360-arc)/2,-90-clamp((val-mod),0,1)*arc-(360-arc)/2);	
			dispMode = "-";
		}
		else{
			framecircle(outersize,-90-(val)*arc-(360-arc)/2,-90-clamp((val+mod),0,1)*arc-(360-arc)/2);
			dispMode = "+";
			}
														
		// draw rest of outline

		gllinewidth(2);
		glcolor(0,0,0,1);
		moveto(orgin[0],orgin[1]);
		theta = (-90-val*arc-(360-arc)/2)*Math.PI/180;
		lineto(innersize*Math.cos(theta)*1.01+orgin[0],innersize*Math.sin(theta)*1.01+orgin[1]);
		moveto(0,0.6);
		font(myfont);
		textalign("center","bottom")
		text(myname);


		if (clicked && inputField == 0){
			glcolor(accent[0],accent[1],accent[2],accent[3]);
			quad(-1, -0.45, 0, 
				  1, -0.45, 0, 
				  1, -0.65, 0, 
				 -1, -0.65 ,0);

		}
		textalign("center","bottom")
		moveto(0,-0.6);
		glcolor(0,0,0);
		
		if (inputingNumber && inputField == 0){
			dispNum = keyinputbuffer;
		}
		else{
			dispNum = String(outval.toFixed(2));
		}
		if (units !== ""){
			dispNum += " " + units;
			}
		text(dispNum)

		if (clicked && inputField == 1){
			glcolor(accent[0],accent[1],accent[2],accent[3]);
			quad(-1, -0.75, 0, 
				  1, -0.75, 0, 
				  1, -0.95, 0, 
				 -1, -0.95 ,0);

		}

		moveto(0, -0.9)
		textalign("center","bottom")
		if (inputingNumber && inputField == 1){
			dispNum = keyinputbuffer;
		}
		else{
			dispNum = String(outmod.toFixed(2));
		}
		glcolor(0.5,0.5,0.5,1);
		text("(" + dispMode +" " +dispNum+")")
		
		
		if (marker != null){
		    glcolor(accent[0],accent[1],accent[2],accent[3]);
			moveto(orgin[0],orgin[1]);
			framecircle(outersize,-90-clamp((marker-0.025),0,1)*arc-(360-arc)/2,-90-clamp((marker+0.025),0,1)*arc-(360-arc)/2);	

			}
		if (clicked){	
			glcolor(0.5,0.5,0.5,1);
			
			var x1 = 0.7;
			var x2 = 0.9;
			var y1= 0.7;
			var y2 = 0.9;
			
			moveto(-x2,y1);
			lineto(-x2,y2);
			lineto(-x1,y2);
			
						
			moveto(x2,y1);
			lineto(x2,y2);
			lineto(x1,y2);
			
						
			moveto(-x2,-y1);
			lineto(-x2,-y2);
			lineto(-x1,-y2);
			
						
			moveto(x2,-y1);
			lineto(x2,-y2);
			lineto(x1,-y2);

		}

	}
}

function bang()
{
	
 	outval = val;
	outmod = mod;
	

	outval = map(outval, 0,1, range[0], range[1]);
	outmod = map(outmod, 0,1,0, range[1]-range[0]);
		
		
	draw();
	refresh();
	

	if (useNorm){
		outlet(0,val);
		outlet(1,mod);
		}
	else{
		outlet(0,outval);
		outlet(1,outmod);
	}
	
	outlet(2, modMode);
}

function msg_float(v)
{

		
	if (inlet == 0){
			if (!useNorm){
		v = map(v,range[0],range[1],0,1);
		}
	setValues(v,mod)
	}
	if (inlet == 1){
		v= map(v,0,range[1]-range[0],0,1);
		setValues(val,v)
		}
	if (inlet == 2){
			if (!useNorm){
		v = map(v,range[0],range[1],0,1);
		}
		marker = v;
		draw();
		refresh();
		
		
		
		}
			notifyclients();
}

function clamp(v, m1, m2){
	return Math.min(Math.max(m1,v),m2);
	}

function setValues(v,m){
	val = Math.min(Math.max(0,v),1);
	mod = Math.min(Math.max(0,m),1);
	notifyclients();
	bang();
	}

function set(v)
{
	val = Math.min(Math.max(0,v),1);
	notifyclients();
	draw();
	refresh();
}

function fsaa(v)
{
	sketch.fsaa = v;
	bang();
}


function onclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	// cache mouse position for tracking delta movements
	last_x = x;
	last_y = y;
	
	if (!clicked){
			//clicked = 1;
		}
	
}
onclick.local = 1; //private. could be left public to permit "synthetic" events

function ondrag(x,y,but,cmd,shift,capslock,option,ctrl)
{
	var f,dy, m;
	
	f = val;
	m = mod;
	var adjust = 1
	if (shift){
		adjust = 0.1;
		}
	
	// calculate delta movements
	dy = y - last_y;
	if (option) { 
		m = mod - dy*0.005*adjust;
		
	} else {
		f = val - dy*0.01*adjust;
	}
	setValues(f, m); //set new value with clipping + refresh
	// cache mouse position for tracking delta movements
	last_x = x;
	last_y = y;
}
ondrag.local = 1; //private. could be left public to permit "synthetic" events

function ondblclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	last_x = x;
	last_y = y;
	setValues(0,0); // reset dial?
}
ondblclick.local = 1; //private. could be left public to permit "synthetic" events

var keyobj;
function onidle(x, y, button, modifier1, shift, capslock, option, modifier2){
	if (!clicked){
	clicked = 1;
	inputField = 0;
	if (keyobj == undefined && this.patcher.locked){
		var p = this.patcher;
		keyobj = p.newdefault(0,0,"_grainflow.keyin");
		keyobj.hidden = true;
		p.hiddenconnect(keyobj, 0, this.box, 0);
	
	}
	draw();
	refresh();
	}
	
	}
	
function onidleout(x, y, button, modifier1, shift, capslock, option, modifier2){
	if (clicked){
	clicked = 0;
	if (keyobj){
		p.remove(keyobj);
		keyobj = undefined;

	}
	draw();
	refresh();

	}
	}
	


function forcesize(w,h)
{
	h = 60;
	if (w!=h) {
		if (w/h < 0.5){
			w = h*0.5;
			}
		box.size(w,h);
	}
}
forcesize.local = 1; //private

function onresize(w,h)
{
	forcesize(w,h);
	draw();
	refresh();
}
onresize.local = 1; //private
