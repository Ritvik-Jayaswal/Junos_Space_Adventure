if(instance_exists(obj_alienBoss)){
	with(obj_alienBoss){
		
		instance_create_layer(x, y - 10, "Enemy", obj_alienCrawler);
		
		if(y < 450){
			path_start(pth_bossMoveLeftDown, 3, path_action_stop, true);
		}
		else{
			path_start(pth_bossMoveRightUp, 3, path_action_stop, true);
		}	
	}
}