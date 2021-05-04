/// @description 
// You can write your code in this editor

if(state == GAME_STATE.newhighscore){
	//Get initials
	key = scr_getKey()
		
	if(key != "1"){
		if(key == "2" && curInt == 4){
			state = GAME_STATE.highscore;
			
			for(i = 4; i > newRank; i--){
				timeArray[i] = timeArray[i - 1];				
				initialsArray[i] = initialsArray[i - 1];
			}	
	
			timeArray[newRank] = time;
			initialsArray[newRank] = initials;
			
			file = file_text_open_write("Highscores.txt");
		
			for(i = 0; i < 5; i++){
				file_text_write_string(file, rankArray[i] + " ");
				file_text_write_string(file, initialsArray[i] + " ");
				file_text_write_real(file, timeArray[i]);
				file_text_write_string(file, "\n");
			}

			file_text_close(file);
			alarm[1] = -1;
		}else if(curInt != 4 && key != "4" && key != "2"){
			initials = string_insert(key, initials, curInt);
			if(curInt == 3){
				initials = string_delete(initials, 4, 1);
			}
			curInt++;
		}else if(key == "4" && curInt != 1){
			initials = string_delete(initials, curInt - 1, 1);
			if(curInt == 4){
				initials = string_insert("_", initials, 3);
			}
			curInt--;
		}

	}	
}

if(state == GAME_STATE.lose){
	if room != rm_GameOver{
		room_goto(rm_GameOver);
	}
	
}