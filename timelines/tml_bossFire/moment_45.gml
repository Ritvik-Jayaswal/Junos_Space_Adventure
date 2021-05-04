if(instance_exists(obj_alienBoss)){
	with(obj_alienBoss){
	
		if(y < 450){
			path_start(pth_bossMoveRightDown, 3, path_action_stop, true);
		}
		else{
			path_start(pth_bossMoveLeftUp, 3, path_action_stop, true);
		}	
	}
}