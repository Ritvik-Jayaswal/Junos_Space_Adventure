/// @description Events for Escape key
// You can write your code in this editor
game_end();

switch(state){
	case GAME_STATE.title:
		game_end();
		break;
	
	case GAME_STATE.playing:
		state = GAME_STATE.title;
		room_goto(rm_Menu);
		break;
		
	case GAME_STATE.highscore:
		state = GAME_STATE.title;
		newRank = -1;
		room_goto(rm_Menu);
		break;
	
	default:
		break;
}