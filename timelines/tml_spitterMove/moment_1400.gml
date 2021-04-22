if(instance_exists(obj_alienSpitter)){ 
	obj_alienSpitter.timeline_running = false;
	path_end();
	obj_alienSpitter.state = alienSpitterState.wait;
}