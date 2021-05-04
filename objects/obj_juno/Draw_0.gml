/// @description Shade Juno if hurt
// You can write your code in this editor

if(isHurt){
	shader_set(shd_hurt);
	draw_self();
	shader_reset();
}else{
	draw_self();	
}