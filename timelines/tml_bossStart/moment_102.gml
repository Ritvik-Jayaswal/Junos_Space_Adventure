if(instance_exists(obj_alienBoss)){
	with(obj_alienBoss){
		hspeed = 0;
		state = BOSS_STATE.wait;
		timeline_running = false;
	}
}