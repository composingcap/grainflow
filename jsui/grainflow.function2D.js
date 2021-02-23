/*
2D Function

A 2D XYpad sequencer

*/
outlets = 2;
inlets = 1;

var functionPoints = [{"x": 0.1, "y":0.1, "state": 1},{"x": 0.9, "y":0.1, "state": 1},{"x": 0.5, "y":0.9, "state": 1}]; 
var position = {'x' : 0, 'y' : 0};
var pArray = [];


var loop = 1;
var tracker= 1;
var trackVal = [0];
var trackedPos = [{'x' : 0, 'y' : 0}];
var pSel = -1;
var lSel = 0;
var lPoint;
var clicking = false;
var dim = [width = box.rect[2] - box.rect[0],height = box.rect[3] - box.rect[1]] 
var lastPos =  {'x' : 0, 'y' : 0};
var clipRange = true;
var selectColor = [0.5,0.5,0.5,1];
var color = [0,0,0,1];
var trackerColor = [0.5,0,0,1];
var dotTextColor = [1,1,1,1];
var bgColor = [1,1,1,0];
var dotSize = 1;
var trackerSize = 1;
var lineThickness = 1;
var redraw = true;
var pointLimit = 0;
var autoOutput = 0;
var framer = new Task(frame, this);
framer.interval = 33;
framer.repeat(); 
function loadbang(){

getattr_points();
updateTracker();
}

function notifydeleted(){
	framer.cancel();	
	
	}


declareattribute("autoOutput",			"getattr_autoOutput",			"setattr_autoOutput", 1);

function setattr_autoOutput(v)
{
	autoOutput = v;
	}
function getattr_autoOutput()
{
	return autoOutput;
}

declareattribute("pointLimit",			"getattr_pointLimit",			"setattr_pointLimit", 1);

function setattr_pointLimit(v)
{
	pointLimit = v;
	redraw = true;
	}


function getattr_pointLimit()
{
	return pointLimit;
}

declareattribute("dotSize",			"getattr_dotSize",			"setattr_dotSize", 1);

function setattr_dotSize(v)
{
	dotSize = v;
	redraw = true;
	}


function getattr_dotSize()
{
	return dotSize;
}

declareattribute("trackerSize",			"getattr_trackerSize",			"setattr_trackerSize", 1);

function setattr_trackerSize(v)
{
	trackerSize = v;
	redraw = true;

}

function getattr_trackerSize()
{
	return trackerSize;
}

declareattribute("lineThickness",			"getattr_lineThickness",			"setattr_lineThickness", 1);

function setattr_lineThickness(v)
{
	lineThickness = v;
	redraw = true;

}

function getattr_lineThickness()
{
	return lineThickness;
}

declareattribute("bgColor",			"getattr_bgColor",			"setattr_bgColor", 1);

function setattr_bgColor()
{

	bgColor = arrayfromargs(arguments);
	redraw = true;
	



}
function getattr_bgColor()
{
	return bgColor;
}

declareattribute("color",			"getattr_color",			"setattr_color", 1);

function setattr_color()
{

	color = arrayfromargs(arguments);
	redraw = true;



}

function getattr_color()
{
	return color;
}


declareattribute("selectColor",			"getattr_selectColor",			"setattr_selectColor", 1);

function setattr_selectColor()
{

	selectColor = arrayfromargs(arguments);
	redraw = true;



}

function getattr_selectColor()
{
	return selectColor;
}


declareattribute("trackerColor",			"getattr_trackerColor",			"setattr_trackerColor", 1);

function setattr_trackerColor()
{

	trackerColor = arrayfromargs(arguments);
	redraw = true;



}

function getattr_trackerColor()
{
	return trackerColor;
}

declareattribute("dotTextColor",			"getattr_dotTextColor",			"setattr_dotTextColor", 1);

function setattr_dotTextColor()
{

	dotTextColor = arrayfromargs(arguments);
	redraw = true;


}

function getattr_dotTextColor()
{
	return dotTextColor;
}

declareattribute("points",			"getattr_points",			"setattr_points", 1);

function setattr_points()
{

	pArray = arrayfromargs(arguments)
	pointsFromArray(pArray);
	redraw = true;

}

function getattr_points()
{
	pArray = [];
	for (var p=0; p<functionPoints.length; p++){
		pArray.push(functionPoints[p].x);
		pArray.push(functionPoints[p].y);
		
		}
	return pArray;
}

declareattribute("clipRange",			"getattr_clipRange",			"setattr_clipRange", 1);
function setattr_clipRange(v)
{

	 clipRange = v;
	redraw = true;

}

function getattr_clipRange()
{
	return clipRange;
}

function pointsFromArray(args){
	functionPoints = [];
	for (var i=0; i < Math.floor(args.length); i+=2){
		if (pointLimit == 0 || functionPoints.length < pointLimit){
		var point = {"state":1};
		point.x = args[i];
		point.y = args[i+1];
		functionPoints.push(point);
		}
		}
    lSel = 0;
	redraw = true;
	}
	
function getvalueof(){
	return pArray;
	
	}
function setvalueof(){
	pArray = arrayfromargs(arguments);
	pointsFromArray(pArray);
	}



function getLength(){
	
	outlet(1, ["length", functionPoints.length]);
	}
	
function randomize(number, n2){
	functionPoints = [];
	if (number == undefined){
		number = Math.floor((Math.random()*8+3));
		}
	if (n2 != undefined){
		number = Math.floor((Math.random()*(Math.abs(n2-number))+number+1));
		}
	for (var p = 0; p< number; p++){
		point = {"state": 1};
		point.x = Math.random();
		point.y = Math.random();
		functionPoints.push(point);
		}
		redraw = true;

	
	}

function pointState(point, state){
		
		
			}	
			
function setPoints(){
		pArray = arrayfromargs(arguments);
	pointsFromArray(pArray);
	redraw = true;
	}
	
function getPoints(){
	
	for (var p = 0; p < functionPoints.length; p++){
	var point = functionPoints[p];
	outlet(1, ["points", p, point.x, point.y]);
	}
	}

function scaleX(x){
	var width = dim[0]
	var height = dim[1]
	return x*(width/height)*2-(width/height);		
			}
			
			
function norm(f){
	msg_float(f*functionPoints.length);
	redraw = true;
	}
			
function draw()
{

	var width = dim[0];
	var height = dim[1];
	
	with (sketch) {
		glclearcolor(bgColor[0],bgColor[1],bgColor[2],bgColor[3]);
		gllinewidth(3.*lineThickness);
		glclear();
		for (var p = 0; p < functionPoints.length; p++){
			if (functionPoints[p].state == 1){
			glcolor(color[0],color[1],color[2],color[3]);
			if (p == 0){
				moveto(scaleX(functionPoints[p].x),1-functionPoints[p].y*2,0);

				}
				else{
					lineto(scaleX(functionPoints[p].x),1-functionPoints[p].y*2,0);
				}
				
				

					
			
		

			ellipse(0.05*dotSize,0.05*dotSize,0,360);
			}
		
			

		
			
			}
			if (loop && functionPoints.length > 2){
				lineto(scaleX(functionPoints[0].x),1-functionPoints[0].y*2,0);
				}
			if (tracker==1){
				for (var t = 0; t < trackedPos.length; t++){			
				moveto(scaleX(trackedPos[t].x),1-trackedPos[t].y*2,0);
				glcolor(trackerColor[0],trackerColor[1],trackerColor[2],trackerColor[3]);
				ellipse(0.05*trackerSize,0.05*trackerSize,0,360);
				}
				
				
				}
			if (pSel >= 0){
				glcolor(selectColor[0],selectColor[1],selectColor[2],selectColor[3]);
				moveto(scaleX(functionPoints[pSel].x),1-functionPoints[pSel].y*2,0);
				ellipse(0.05*dotSize,0.05*dotSize,0,360);
				}
			if (lSel != 0){
				glcolor(selectColor[0],selectColor[1],selectColor[2],selectColor[3]);
				moveto(scaleX(lSel[0].x),1-lSel[0].y*2,0);
				lineto(scaleX(lSel[1].x),1-lSel[1].y*2,0);
}
	for (var p = 0; p < functionPoints.length; p++){
		if (functionPoints[p].state == 1){
		//fontsize(10*dim[0]/500);
		moveto(scaleX(functionPoints[p].x),1-functionPoints[p].y*2,0);
		glcolor(dotTextColor[0],dotTextColor[1],dotTextColor[2],dotTextColor[3]);
			textalign("center","center")
			text(""+p);
			}
		
			}
	}
}

function bang()
{
}

function scramble(){
	var args = arrayfromargs(arguments);	
	var points = [];
	var pointID = [];
	
	args.sort(function(a, b){return b-a});

	
	if (args != undefined){
		for (var p = 0; p < args.length; p++){
			id  =args[p];
			if(functionPoints[id] != undefined){

			points.push(functionPoints[id]);
			pointID.push(id);
			functionPoints.splice(id,1);
		}
	}
	
	}
	
	functionPoints = shuffle(functionPoints);
	
	if (args != undefined){
		for (var p = 0; p < points.length; p++){
			var id = points.length-1-p;
			functionPoints.splice(pointID[id],0,points[id]);

			}

	}
	redraw = true;
	
	
	
	}
	
function jitter(){
	var depth = [0.1,0.1];
	var args = arrayfromargs(arguments);
	if (args.length > 0){
		depth[0] = args[0]
		if (args.length > 1){
		depth[1] = args[1]
		}
		else{
			depth[1] = args[0]
			} 
	}
	args.splice(0,2);
	

	
	for (var p = 0; p < functionPoints.length; p++){

		if(!Array.isArray(args) || args.indexOf(p)== -1){
			
			functionPoints[p].x+= Math.random()*depth[0]*2-depth[0];
			functionPoints[p].y+= Math.random()*depth[1]*2-depth[1];
			}
		
		}
		redraw = true;

	
	
	
	}
	
	
function shuffle(array) {
  var currentIndex = array.length, temporaryValue, randomIndex;

  // While there remain elements to shuffle...
  while (0 !== currentIndex) {

    // Pick a remaining element...
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;

    // And swap it with the current element.
    temporaryValue = array[currentIndex];
    array[currentIndex] = array[randomIndex];
    array[randomIndex] = temporaryValue;
  }

  return array;
}

function updateTracker(){
	
	for (var t = 0; t < trackedPos.length; t++){
	var width = dim[0]
	var height = dim[1]
	var p1 = -1;
	tracker = -1;
	tval = 0;
	if (Array.isArray(trackVal)){
		tval = trackVal[t]
		
		}
	else{
		tval = trackVal;
		}
		
	if(functionPoints.length > 1){
		var p1 = Math.floor(tval);
		var p2 = p1+1;
		var lerp = tval-p1;
		
		
		
	if (loop){
		while(p1 < 0){
			p1 += functionPoints.length;
			p2 +=functionPoints.length;
			
			}
		p1 = p1 % functionPoints.length;
		p2 = p2 % functionPoints.length;
		}
	else if (p1 >= functionPoints.length-1){
			trackedPos[t].x = functionPoints[p1].x;
			trackedPos[t].y = functionPoints[p1].y;
			tracker = 1;

			}
	else if (functionPoints.length > 0){
	trackedPos[t].x = functionPoints[0].x;
	trackedPos[t].y = functionPoints[0].y;
	tracker = 1;;

	}
		
		
		trackedPos[t].x = functionPoints[p1].x*(1-lerp)+functionPoints[p2].x*(lerp);
		trackedPos[t].y = functionPoints[p1].y*(1-lerp)+functionPoints[p2].y*(lerp);
		tracker = 1;
		if (trackedPos.length > 1){
		outlet(0,[t, trackedPos[t].x,  trackedPos[t].y]);
		}
		else{
			outlet(0,[t, trackedPos[t].x,  trackedPos[t].y]);
			}
		}

	
	}
	}

function msg_float(v)
{

	trackVal = v;
	trackedPos = [{}];
	redraw = true;
	validatePoints();
	updateTracker();




}

function trackers(args){

	trackVal = arrayfromargs(arguments);
	if (trackVal.length <= 1){
		trackVal = args
		}

	trackedPos = [];
	for (var t = 0; t < trackVal.length; t++){
		trackedPos.push({});
		
		}
		redraw = true;
		validatePoints();
		updateTracker();
	
	
	}
	
function trackersNorm(){
	var args = arrayfromargs(arguments)
	for (var t = 0; t < args.length; t++){
		args[t] = args[t]*args.length;
		
		}
		trackers(args);
	
	}



	


function onidle(x,y,but,cmd,shift,capslock,option,ctrl){
	pSel = -1;
	lSel = 0;
	clicking = false;
	var lastGuess = 20;
	position.x = x/dim[0];
	position.y = y/dim[1];
	var pclosest = -1;
	var lastDist = 0;
	if (!clicking){
		for (var p = 0; p< functionPoints.length; p++){
				var distX = (position.x-functionPoints[p].x);
				var distY = (position.y-functionPoints[p].y);
				
				var dist = Math.sqrt(distX*distX+distY*distY);
				if (dist > lastDist){
					lastDist = dist;
					pclosest = p;
					
					}

				if (dist < 0.03){
					
					pSel = p;
					
					}
					
				if (pSel == -1 && functionPoints.length>1){
					p1 = functionPoints[p];
					p2 = functionPoints[(p+1)%functionPoints.length];
					p3 = functionPoints[(p-1+functionPoints.length)%functionPoints.length];
					
					guessY2 = ((p1.y-p2.y)/(p1.x-p2.x))*(position.x-p1.x)+p1.y;
					guessY3 = ((p1.y-p3.y)/(p1.x-p3.x))*(position.x-p3.x)+p3.y;

					if (Math.abs(guessY2-position.y)<0.025){
						if (Math.abs(guessY2-position.y) < lastGuess){
						lSel = [p1,p2]
						lPoint = p;
						lastGuess = Math.abs(guessY2-position.y);
						}
						}
					else if (Math.abs(guessY3-position.y)<0.025){
						if (Math.abs(guessY2-position.y) < lastGuess){
						lSel = [p3,p1]
						lPoint = p-1;
						lastGuess = Math.abs(guessY2-position.y);
						}
						}
					
					
					}
					}
					}
					if (pSel != -1){
						lSel = 0;
						}
	lastPos.x =  x/dim[0];
	lastPos.y = y/dim[1];
	redraw = true;
	

	
	
	}


function onclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	clicking = true;
	if(shift==1){
		if (pSel == -1) return;
		removePoint(pSel);
		pSel = -1;		
		}
		
	lastPos.x =  x/dim[0];
	lastPos.y = y/dim[1];
	redraw = true;
	

		
	
}
onclick.local = 1; //private. could be left public to permit "synthetic" events

function ondrag(x,y,but,cmd,shift,capslock,option,ctrl){

	position.x = x/dim[0];
	position.y = y/dim[1];
	if (pSel != -1){
	movePoint(pSel,	x/dim[0], y/dim[1]);
	}
	else if (lSel != 0){
		moveLine();
		
		}


	lastPos.x =  x/dim[0];
	lastPos.y = y/dim[1];
	redraw = true;
	
	
	

	
}


ondrag.local = 1; //private. could be left public to permit "synthetic" events


function moveLine(){
	var dX = position.x - lastPos.x;
	var dY = position.y - lastPos.y;
	
	lSel[0].x += dX;
	lSel[0].y += dY;
	lSel[1].x += dX;
	lSel[1].y += dY;
	validatePoints();
	updateTracker();


	
	}

function movePoint(point, x,y){
		if (point == undefined){
		point = Math.floor(Math.random()*functionPoints.length);
		}
	if (x == undefined){
		x = Math.random()		
		}
	if (y == undefined){
		y = Math.random()		
		}
	functionPoints[point].x = x;
	functionPoints[point].y = y;
	redraw = true;
	validatePoints();
	updateTracker();

	}
	
function removePoint(point){
		if (point == undefined){
		point = Math.floor(Math.random()*functionPoints.length);
		}
	try{
	functionPoints.splice(point, 1);
	}
	catch(error){
		}
		redraw = true;
		validatePoints();
		updateTracker();
	
	}
	
function insertPoint(point, x, y){
	if (pointLimit == 0 || functionPoints.length < pointLimit){
	if (point == undefined){
		point = Math.floor(Math.random()*functionPoints.length);
		}
	if (x == undefined){
		x = Math.random()		
		}
	if (y == undefined){
		y = Math.random()		
		}

	functionPoints.splice(point, 0,{"x": x, "y":y, "state": 1});
	redraw = true;
	validatePoints();
	updateTracker();
	}

	
	}
	
function swapPoint(point1, point2){
	p1 = functionPoints[point1];
	p2 = functionPoints[point2];
	functionPoints.splice(point1, 1,p2);
	functionPoints.splice(point2, 1,p1);
	redraw = true;
	validatePoints();
	updateTracker();
	
	}

function ondblclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	
	if (lSel != 0){

		insertPoint(lPoint+1, x/dim[0], y/dim[1]);
		lSel = 0;
		pSel = lPoint+1;
	}
	else{
		addPoint(x/dim[0], y/dim[1]);
		
		}
		redraw = true;
		validatePoints();
		updateTracker();
		
}
ondblclick.local = 1; //private. could be left public to permit "synthetic" events

function addPoint(x,y){
	if (pointLimit == 0 || functionPoints.length < pointLimit){
	if (x == undefined){
		x = Math.random()		
		}
		if (y == undefined){
		y = Math.random()		
		}
	functionPoints.push({'x': x ,'y' : y, "state": 1});
		redraw = true;
				validatePoints();
		updateTracker();
		}


	}
function clear(){
	functionPoints = [];
	redraw = true;
			validatePoints();
		updateTracker();

	
	
	}

function validatePoints(){

	if (clipRange){
	for (var p =0; p < functionPoints.length; p++){
		var point = functionPoints[p];
		if (point.x > 1){
			point.x = 1
			}
		else if (point.x< 0){
			point.x = 0;
			}
		if (point.y < 0) {
			point.y = 0;
			
			}
		else if (point.y > 1){
			point.y = 1;
			}
		
		}
	}


	}
	

function onresize(w,h)
{
	dim = [w,h];
	redraw = true;
	frame();
}
onresize.local = 1; //private


function frame(){
	if (redraw){

		draw();
		refresh();	
		redraw = false;
						if (autoOutput){
		getPoints();
		}

	}
	}
