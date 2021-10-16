var d;

function placewaveform(buffername, dontkillme) {
  me = this.patcher;
  parent = me.parentpatcher;

  wf = parent.newdefault(0, 0, "jsui @filename grainflow.waveform~");

if (buffername != 0){
	wf.setattr("buffername", buffername);
	
	}
	
	wf.setattr("patching_rect", me.getattr("patching_rect")[0], me.getattr("patching_rect")[1], 400, 100);
	wf.setattr("border", 0);
	
	if (d !== null){
	
	var keys = d.getkeys();
	
	if (keys != null){
	
	if (typeof keys == "string"){
		var key = keys;
		var value = d.get(key)
		
		wf.setattr(key, value);
		//post(key + ": " + " " + value + "\n")
		
		}
	else{
	for (var k = 0; k < keys.length; k++){
		var key = keys[k];
		var value = d.get(key)
		
		wf.setattr(key, value);
		//post(key + ": " + " " + value + "\n")

		
		}
		}
		}
		}
	

  if (!dontkillme){
	me.dispose();
}

}

function placeFunction2D(dontkillme) {
  me = this.patcher;
  parent = me.parentpatcher;

  wf = parent.newdefault(0, 0, "jsui @filename grainflow.function2D.js");

	
	wf.setattr("patching_rect", me.getattr("patching_rect")[0], me.getattr("patching_rect")[1], 200, 200);
	wf.setattr("border", 0);
	
	if (d !== null){
	
	var keys = d.getkeys();
	
	if (keys != null){
	
	if (typeof keys == "string"){
		var key = keys;
		var value = d.get(key)
		
		wf.setattr(key, value);
		//post(key + ": " + " " + value + "\n")
		
		}
	else{
	for (var k = 0; k < keys.length; k++){
		var key = keys[k];
		var value = d.get(key)
		
		wf.setattr(key, value);
		//post(key + ": " + " " + value + "\n")

		
		}
		}
		}
		}
	

  if (!dontkillme){
	me.dispose();
}

}

function placeModdial(dontkillme) {
  me = this.patcher;
  parent = me.parentpatcher;

  wf = parent.newdefault(0, 0, "jsui @filename grainflow.moddial.js");

	
	wf.setattr("patching_rect", me.getattr("patching_rect")[0], me.getattr("patching_rect")[1], 70, 60);
	wf.setattr("border", 0);
	
	if (d !== null){
	
	var keys = d.getkeys();
	
	if (keys != null){
	
	if (typeof keys == "string"){
		var key = keys;
		var value = d.get(key)
		
		wf.setattr(key, value);
		//post(key + ": " + " " + value + "\n")
		
		}
	else{
	for (var k = 0; k < keys.length; k++){
		var key = keys[k];
		var value = d.get(key)
		
		wf.setattr(key, value);
		//post(key + ": " + " " + value + "\n")

		
		}
		}
		}
		}
	

  if (!dontkillme){
	me.dispose();
}

}


function dictionary(dname){
	d = new Dict(dname);
	
	}
	
	
function genEnv2D(){
	var args =  arrayfromargs(arguments);
	
	
	var dest = new Buffer(args[0]);
	var pb;	
	
		
	
	
	

	
	var bufs;
	
	if (args.length==2){
	    pb = new PolyBuffer(args[1])
		
		bufs = pb.getbufferlist();	
		
		}
		
	else {
		
		bufs = args.slice(1);
		
		
		}
	var src = new  Buffer(bufs[0]);
	
	var len = src.framecount();
	
	var envs = bufs.length
	
	dest.send("samps", len*envs)
	
	for (var i = 0; i < envs; i++){
		
		src = new  Buffer(bufs[i]);
		
		var samps = src.peek(0,0,len);
		
		dest.poke(0,i*len,samps); 
		
		
		}
		
	outlet(0,"done")
	
	}
	
var p;	
p = this.patcher;	
var currentSpeakers = 0;
var me = p.getnamed("js");

function vpbap3dgen(){
	 me = p.getnamed("js")
	
	var args =  arrayfromargs(arguments);
	
	var nspeakers = Math.floor(args.length/3);
	
	p = this.patcher;
		var sum = p.getnamed("sum")

	
	if (currentSpeakers != nspeakers){
	deleteAllSpeakers(p);
	
	var combo = p.getnamed(combo)
	
	if (combo) p.remove("combo");
	
	combo = p.newdefault(75, 500, "mc.combine~", nspeakers);
	
	combo.setattr("varname", "combo")
	p.connect(combo, 0, sum, 0) 
	}
	currentSpeakers = nspeakers;
	
	
	var input = p.getnamed("in")
	var inx = p.getnamed("x")
	var iny = p.getnamed("y")
	var inz = p.getnamed("z")
	
	
	
	
	for (var i = 0; i < nspeakers; i++){
		
			var x = args[i*3+0];
			var y = args[i*3+1]; 
			var z = args[i*3+2]; 
			
			var o = p.getnamed("s_"+i); 
			
			if (o == undefined){
				
				o = p.newdefault(i*100+75, 200+40*i, "_grainflow.vbap3dnode")
				o.setattr("varname", "s_"+i)
				p.connect(o,0, combo,i)
				p.connect(input, 0, o, 0) 
				p.connect(inx, 0, o, 1) 
				p.connect(iny, 0, o, 2) 
				p.connect(inz, 0, o, 3) 
				
			}

		
			p.connect(me, 0, o, 0)
			
			outlet (0, ["x", x])
			outlet (0, ["y", y])
			outlet (0, ["z", z])
			
			p.disconnect(me, 0, o, 0)

			

		}
	
	
	}
	
	function deleteAllSpeakers(p){
		
		o = p.getnamed("s_0");
		
		var i = 0
		
		while (o){
			
			p.remove(o);
			
			i++; 
			o = p.getnamed("s_"+i);
			
			
			}
		
		}
		
		
	function speakerPos(i, x, y, z){
		var o = p.getnamed("s_"+i); 
		
		if (o){
			
		
			p.connect(me, 0, o, 0)
			
			outlet (0, ["x", x])
			outlet (0, ["y", y])
			outlet (0, ["z", z])
			
			p.disconnect(me, 0, o, 0)
			}
		}
		
	function speakersAED(){
		var args =  arrayfromargs(arguments);
	
		var nspeakers = Math.floor(args.length/3);
		
		var xyz = []
		
		for (var i = 0; i < nspeakers; i++){
			var a = args[i+0]*Math.PI*2
			var e = args[i+1]*Math.PI
			var d = args[i+2]
			
			var x = d * Math.cos(e) * Math.sin(a) 
			var y = d * Math.sin(e) * Math.cos(a) 
			var z = d * Math.cos(a)
			
			xyz.push(x);
			xyz.push(y);
			xyz.push(z);
			
			
			}
			
			vpbap3dgen(xyz);
			
				}	
	function soundingDistance(distance){
		
		o = p.getnamed("s_0");
		
		var i = 0
		
		while (o){
			p.connect(me, 0, o, 0)
			outlet(["soundingDistance",distance]); 
			p.disconnect(me, 0, o, 0)
			i++; 
			o = p.getnamed("s_"+i);
			
			
			}
		}