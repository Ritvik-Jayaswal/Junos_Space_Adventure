/// @description Hurt shader
// You can write your code in this editor
if(isHurt){
	shader_set(shd_hurt);
	draw_self();
	shader_reset();
}else{
	draw_self();	
}