/// @description Interaction with rocket
// You can write your code in this editor

if(hasKeycard){
	obj_gameController.state = GAME_STATE.win;
	room_goto(rm_Menu);
}