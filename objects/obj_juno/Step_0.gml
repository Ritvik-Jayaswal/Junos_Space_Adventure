/// @description Movement
// You can write your code in this editor
if (keyboard_check(vk_left) and !instance_place(x-move_speed,y,obj_solid)) {
	x += -move_speed
	image_xscale = -1
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed,y,obj_solid)) {
	x += move_speed
	image_xscale = 1
}

if (keyboard_check(vk_up)){
	if instance_place(x,y+1,obj_solid){
		vspeed = -jump_height
	}
}
gravity = .5
if instance_place(x,y+1,obj_solid){
	gravity = 0
}
vspeed = min(vspeed,12)

	