if(instance_exists(obj_alienBoss)){
	with(obj_alienBoss){
		left = irandom_range(0,1);
	
		if(y < 450){
			if(left)
				path_start(pth_bossMoveLeftDown, 3, path_action_stop, true);
			else
				path_start(pth_bossMoveRightDown, 3, path_action_stop, true);
		}
		else{
			if(left)
				path_start(pth_bossMoveLeftUp, 3, path_action_stop, true);
			else
				path_start(pth_bossMoveRightUp, 3, path_action_stop, true);
		}	
	}
}