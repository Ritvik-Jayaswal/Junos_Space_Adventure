/// @description Events for Enter
// You can write your code in this editor


switch(state){
	case GAME_STATE.title:
		state = GAME_STATE.playing;
		game_start_time = date_get_second_of_year(date_current_datetime());
		health = 100;
		room_goto_next();
		break;
	

		
	case GAME_STATE.win:
		newRank = -1;
		curInt = 1;
		initials = "_";
		//Determine Highscore or not
		time =  date_get_second_of_year(date_current_datetime()) - game_start_time;
		for(i = 0; i < 5; i++){
			if(time < timeArray[i]){
				newRank = i;
				state = GAME_STATE.newhighscore;
				alarm[1] = 45;
				break;
			}
		}		
	
		if(state != GAME_STATE.newhighscore){
			state = GAME_STATE.highscore;
		}
		
		break;
	
	default:
		break;
}