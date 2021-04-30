/// @description Flash Text
// You can write your code in this editor
flash_state = !flash_state;
if(flash_state){
	alarm[0] = 60;//Appear longer twice as long as it is gone
}else{	
	alarm[0] = 30;
}