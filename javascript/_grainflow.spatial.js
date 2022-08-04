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

function outputPos(pos){
    outlet(0,["position", pos.x, pos.y, pos.z]);
}

function circleVolume(centerx,centery, rad, phase){

    var pos = poltocar(rad, phase*Math.PI*2);
    pos.x += centerx;
    pos.y += centery;
    outputPos(pos);
}

function circleVolumeRandom(centerX, centerY, rad, phase, rotation, radMin){
    if (centerX === undefined) centerX = 0;
    if (centerY === undefined) centerY = 0;
    if (rad === undefined) rad = 1;
    if (phase === undefined) phase = 1;
    if (rotation === undefined) rotation = 0;
    if (radMin === undefined) radMin = 0;


    circleVolume(centerX, centerY, Math.random(0,1)*(rad-radMin)+radMin, (Math.random(0,1)*phase+rotation)%1);


}

function rectVolumeRandom(centerX, centerY, width, hight, rotation, radMax){
    if (centerX === undefined) centerX = 0;
    if (centerY === undefined) centerY = 0;
    if (rad === undefined) rad = 1;
    if (phase === undefined) phase = 1;
    if (rotation === undefined) rotation = 0;
    if (radMin === undefined) radMin = 0;


    circleVolume(centerX, centerY, Math.random(0,1)*(radMax-radMin)+radMin, (Math.random(0,1)*phase+rotation)%1);


}




