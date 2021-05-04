/// @description Sound and Drops
// You can write your code in this editor
audio_play_sound(snd_alienDeath,1,false)
if (irandom_range(1,2) == 1){
	instance_create_layer(x,y,layer,obj_life);
}
