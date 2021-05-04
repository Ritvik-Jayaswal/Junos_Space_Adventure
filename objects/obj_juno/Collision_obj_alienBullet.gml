/// @description Insert description here
// You can write your code in this editor
if (vspeed > 0 and y < other.y){
	instance_destroy(other.id)
	vspeed = jump_height
}
else{
	if !isHurt{
		health -= 5;
		isHurt = true;
	}
}