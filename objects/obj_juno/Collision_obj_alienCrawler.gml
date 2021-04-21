/// @description Enemy - Flyer
// You can write your code in this editor
if (vspeed > 0 and y < other.y){
	instance_destroy(other.id)
	vspeed = jump_height
}
else{
	instance_destroy(obj_juno.id)
}
