/// @description Keycard opens door
// You can write your code in this editor

/*
Psuedocode for now
if(keycard)
	set sprite frame to the open door frame

*/
if(instance_exists(obj_juno)){
	if(obj_juno.hasKeycard){
		image_index = 1;	
	}
}


draw_self();
