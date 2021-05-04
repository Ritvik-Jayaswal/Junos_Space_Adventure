/// @description Shade if hurt
// You can write your code in this editor
if(isHurt){
	shader_set(shd_hurt);
	draw_self();
	shader_reset();
}else{
	draw_self();	
}

draw_healthbar(x - 30, y - 45, x + 30, y - 40,cur_health * 100/health_start ,c_black,c_red,c_lime,0,true,true);