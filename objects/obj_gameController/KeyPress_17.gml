/// @description Next level
// You can write your code in this editor

if(state == GAME_STATE.playing){
	state = GAME_STATE.playing;
	if(room == rm_HangarDeck){
		if(instance_exists(obj_alienBoss)){
			instance_destroy(obj_alienBoss);	
		}
	}else if(room == rm_BridgeDeck){
		audio_stop_all();
		audio_play_sound(snd_bossMusic,1,true)
		room_goto_next();
	} else
	room_goto_next();
}