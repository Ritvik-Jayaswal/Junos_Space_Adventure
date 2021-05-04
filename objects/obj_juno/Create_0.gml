/// @description Gravity and States
// You can write your code in this editor
gravity_direction = 270;
health = 100;
enum PLAYER_STATE{
	walking,
	shooting,
}
state = PLAYER_STATE.walking
hasKeycard = false;
isHurt = false;
timer = 20;
alarm[0] = 45;