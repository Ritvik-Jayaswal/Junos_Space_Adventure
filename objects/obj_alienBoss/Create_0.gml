/// @description Start Timeline and set variables
// You can write your code in this editor


audio_stop_sound(snd_mainMusic);
audio_play_sound(snd_bossMusic,1,true);

enum BOSS_STATE{
	start,
	wait,
	move,
	fire,
	enemy
}

state = BOSS_STATE.start;
cur_health = health_start;
isHurt = false;


timeline_index = tml_bossStart;
timeline_position = 0;
timeline_running = true;