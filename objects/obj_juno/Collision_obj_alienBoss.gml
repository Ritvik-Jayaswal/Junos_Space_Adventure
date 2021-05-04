/// @description Insert description here
// You can write your code in this editor
if !isHurt{
	audio_play_sound(snd_grunt,1,false)
	health -= 10;
	isHurt = true;
}