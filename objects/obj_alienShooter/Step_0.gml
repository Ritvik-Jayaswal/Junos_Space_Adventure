/// @description Shoot when the player sees me
// You can write your code in this editor
if (instance_exists(obj_juno)){
	inView = distance_to_object(obj_juno) < 700
	if (inView && state == ENEMY_STATE.regular){
		state = ENEMY_STATE.aggro;
		hspeed = 0;
	}
	if (state == ENEMY_STATE.aggro){
		if (canShoot){
			sprite_index = spr_alienShoot;
			instance_create_layer(x,y,layer,obj_alienBullet);
			alarm[1] = room_speed;
			canShoot = false;
			show_debug_message("shooting")
		}
		if (!inView){
			hspeed = hsp
			state = ENEMY_STATE.regular;
	    }
	}
}