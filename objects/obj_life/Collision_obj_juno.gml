/// @description Gain life
// You can write your code in this editor
with (obj_juno){
	health += 10;
	if health > 100{
		health = 100;
	}
}
instance_destroy();
