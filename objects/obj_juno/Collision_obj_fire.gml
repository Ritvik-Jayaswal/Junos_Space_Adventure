/// @description Burn
// You can write your code in this editor
if !isHurt{
	audio_play_sound(snd_grunt,1,false)
	health -= 2;
	timer = 5;
	isHurt = true;
}