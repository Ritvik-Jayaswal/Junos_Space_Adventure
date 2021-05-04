/// @description Events for Escape key
// You can write your code in this editor

switch(state){
	case GAME_STATE.title:
		game_end();
		break;
	
	case GAME_STATE.playing:
		state = GAME_STATE.title;
		health = 100;
		room_goto(rm_Menu);
		break;
		
	case GAME_STATE.highscore:
		state = GAME_STATE.title;
		newRank = -1;
		room_goto(rm_Menu);
		break;
		
	case GAME_STATE.lose:
		state = GAME_STATE.title;
		room_goto(rm_Menu);
		break;
	
	default:
		break;
}