/// @description drop keycard
// You can write your code in this editor
instance_create_layer(x,y+5,"Enemy",obj_keycard);
audio_play_sound(snd_flyingDeath,1,false)