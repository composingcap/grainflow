function placewaveform(buffername, dontkillme) {
  me = this.patcher;
  parent = me.parentpatcher;

  wf = parent.newdefault(0, 0, "jsui @filename grainflow.waveform~");

if (buffername != 0){
	wf.setattr("buffername", buffername);
	
	}
	
	wf.setattr("patching_rect", me.getattr("patching_rect")[0], me.getattr("patching_rect")[1], 400, 100);
	wf.setattr("border", 0);

  if (!dontkillme){
	me.dispose();
}

}