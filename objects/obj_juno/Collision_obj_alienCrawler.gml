/// @description Enemy - Flyer
// You can write your code in this editor
if (vspeed > 0 and y < other.y){
	instance_destroy(other.id)
	vspeed = jump_height
}
else{
	if !isHurt{
		audio_play_sound(snd_grunt,1,false)
		health -= 10;
		isHurt = true;
	}
}
