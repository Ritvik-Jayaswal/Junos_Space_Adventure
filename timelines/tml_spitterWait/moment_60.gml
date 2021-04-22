/// @description Ready for next move

if(instance_exists(obj_alienSpitter)){ 
	obj_alienSpitter.timeline_running = false;
	obj_alienSpitter.state = alienSpitterState.wait;
}