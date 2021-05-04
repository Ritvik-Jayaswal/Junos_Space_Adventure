/// @description set new timelines/paths
// You can write your code in this editor

if(state == BOSS_STATE.wait){
	timeline_running = false;
	path_end();


	
	timeline_index = tml_bossMove;
	timeline_position = 0;
	timeline_running = true;
	state = BOSS_STATE.move;
}