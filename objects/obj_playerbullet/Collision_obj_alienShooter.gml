/// @description decrement hits
// You can write your code in this editor

other.hits -= 1;
other.isHurt = true;
other.alarm[2] = 20;
if(!other.hits){
	instance_destroy(other);	
}
instance_destroy();