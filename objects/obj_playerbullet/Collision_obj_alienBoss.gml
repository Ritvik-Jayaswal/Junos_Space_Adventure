/// @description decrement health
// You can write your code in this editor
other.cur_health -= 0.5;
other.isHurt = true;
other.alarm[2] = 20;

if(!other.cur_health){
	instance_destroy(other);
	audio_play_sound(snd_bossDeath,1,false);
}else{
	audio_play_sound(snd_alienDeath,1,false);	
}
instance_destroy();