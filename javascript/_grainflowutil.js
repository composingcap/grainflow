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


function dictionary(dname){
	d = new Dict(dname);
	
	}