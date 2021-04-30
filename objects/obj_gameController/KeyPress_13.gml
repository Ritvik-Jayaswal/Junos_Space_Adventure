/// @description Events for Enter
// You can write your code in this editor


switch(state){
	case GAME_STATE.title:
		state = GAME_STATE.playing;
		//room_goto_next();
		room_goto(rm_LowerDeck);
		break;
	
	//Remove later
	case GAME_STATE.playing:
		state = GAME_STATE.playing;
		room_goto_next();
		break;
	
	default:
		break;
}