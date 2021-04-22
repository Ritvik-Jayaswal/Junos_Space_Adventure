/// @description Movement
// You can write your code in this editor
if state == PLAYER_STATE.walking{
	if (keyboard_check(vk_left) and !instance_place(x-move_speed,y,obj_solid)) {
		x += -move_speed
		image_xscale = -1
	}

	if (keyboard_check(vk_right) and !instance_place(x+move_speed,y,obj_solid)) {
		x += move_speed
		image_xscale = 1
	}
}
if (keyboard_check(vk_up)){
	if instance_place(x,y+1,obj_solid){
		vspeed = -jump_height
	}
}
if state == PLAYER_STATE.shooting{
	if distance_to_object(obj_playerbullet) > 40{
		state = PLAYER_STATE.walking
		sprite_index = spr_juno
	}
}
gravity = .5
if instance_place(x,y+1,obj_solid){
	gravity = 0
}
vspeed = min(vspeed,12)
if keyboard_check_pressed(ord("Z")){
	state = PLAYER_STATE.shooting
	instance_create_layer(x,y-10,layer,obj_playerbullet)
	sprite_index = spr_junoShoot
}


	