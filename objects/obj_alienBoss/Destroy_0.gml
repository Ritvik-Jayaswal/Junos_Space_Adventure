/// @description Drop keycard
// You can write your code in this editor
instance_create_layer(x,y+5,"Enemy",obj_keycard);
audio_play_sound(snd_bossDeath,1,false);
audio_stop_sound(snd_bossMusic);
audio_play_sound(snd_mainMusic,1,true);