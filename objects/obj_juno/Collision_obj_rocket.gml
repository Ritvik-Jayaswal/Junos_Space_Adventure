/// @description Interaction with rocket
// You can write your code in this editor

if(hasKeycard){
	obj_gameController.state = GAME_STATE.win;
	audio_stop_all();
	audio_play_sound(snd_mainMusic,1,true);
	room_goto(rm_Menu);
}