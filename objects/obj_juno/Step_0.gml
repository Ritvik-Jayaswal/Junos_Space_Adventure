/// @description Movement
// You can write your code in this editor
if state == PLAYER_STATE.walking{
	image_speed = 0;
	
	if (keyboard_check(vk_left) and !instance_place(x-move_speed,y,obj_solid)) {
		x += -move_speed
		image_xscale = -1
		image_speed = 1;
	}

	if (keyboard_check(vk_right) and !instance_place(x+move_speed,y,obj_solid)) {
		x += move_speed
		image_xscale = 1
		image_speed = 1;
	}
}
if (keyboard_check(vk_up)){
	if instance_place(x,y+1,obj_solid){
		vspeed = -jump_height
		audio_play_sound(snd_jump,1,false);
	}
}
if state == PLAYER_STATE.shooting{
	if distance_to_object(obj_playerbullet) > 100{
		state = PLAYER_STATE.walking
		sprite_index = spr_juno
	}
}
if (isHurt){
	timer -= 1
	show_debug_message(timer)
	if (timer <= 0){
		isHurt = false;
		timer = 45
	}
}
if health <= 0{
	instance_destroy();
	audio_play_sound(snd_death,1,false)
}
if(room = rm_MidDeck){
	gravity = .75;
}else{
	gravity = .5;
}
if instance_place(x,y+1,obj_solid){
	gravity = 0
}
vspeed = min(vspeed,12)
if keyboard_check_pressed(ord("Z")) && state == PLAYER_STATE.walking{
	state = PLAYER_STATE.shooting
	instance_create_layer(x + (image_xscale * 32) ,y-16,layer,obj_playerbullet)
	sprite_index = spr_junoShoot
}


	