/// @description Move towards Player
// You can write your code in this editor
if instance_exists(obj_juno){
	direction = point_direction(x,y,obj_juno.x,obj_juno.y);
}
speed = 7


audio_play_sound(snd_laser,1,false);