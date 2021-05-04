/// @description Interaction with door
// You can write your code in this editor

if(hasKeycard){
	if(room == rm_BridgeDeck){
		audio_stop_all();
		audio_play_sound(snd_bossMusic,1,true);
	}
	
	room_goto_next();
	
}