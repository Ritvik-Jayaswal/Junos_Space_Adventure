/// @description set new timelines/paths
// You can write your code in this editor

if(state == BOSS_STATE.wait){
	timeline_running = false;
	path_end();
	image_speed = 0;

	switch(irandom_range(0, 3)){
		case 0:
			timeline_index = tml_bossMove;
			timeline_position = 0;
			timeline_running = true;
			state = BOSS_STATE.move;
			break;
		
		case 1:
			timeline_index = tml_bossFire;
			timeline_position = 0;
			timeline_running = true;
			state = BOSS_STATE.fire;
			break;
			
		case 2:
			timeline_index = tml_bossEnemy;
			timeline_position = 0;
			timeline_running = true;
			state = BOSS_STATE.enemy;
			break;
		
		default:
			state = BOSS_STATE.wait;
			break;

	}
	
}

if(path_index != -1){
	prevPath = path_position - .01; //path_positionprevious is unusable because of when path is updated
	xdiff = path_get_x(path_index, path_position) - path_get_x(path_index, prevPath);
	if(xdiff >= 0){
		image_xscale = -1;
	}else{
		image_xscale = 1;	
	}
	
	image_speed = 1;
}