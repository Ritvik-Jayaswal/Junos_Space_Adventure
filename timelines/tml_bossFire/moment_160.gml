if(path_index == pth_bossMoveLeftUp){
	instance_create_layer(240, 514, "Enemy", obj_fire);
	instance_create_layer(271, 514, "Enemy", obj_fire);
	instance_create_layer(303, 514, "Enemy", obj_fire);
	instance_create_layer(335, 514, "Enemy", obj_fire);
	instance_create_layer(366, 514, "Enemy", obj_fire);
}else{
	instance_create_layer(624, 514, "Enemy", obj_fire);
	instance_create_layer(655, 514, "Enemy", obj_fire);
	instance_create_layer(687, 514, "Enemy", obj_fire);
	instance_create_layer(719, 514, "Enemy", obj_fire);
	instance_create_layer(750, 514, "Enemy", obj_fire);
}

alarm[0] = 150;