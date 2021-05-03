/// @description Setup
// You can write your code in this editor

window_set_fullscreen(true);
fullscreen = true;
display_set_gui_size(1920, 1080);


enum GAME_STATE{
	title,
	playing,
	paused,
	win,
	lose,
	blank,
	newhighscore,
	highscore
}

state = GAME_STATE.title;
flash_state = true;
alarm[0] = 60;
game_start_time = 0;


//Highscore Table Read/Create
rankArray = array_create(5);
initialsArray = array_create(5);
timeArray = array_create(5);
newRank = -1;

if(file_exists("Highscores.txt")){
	file = file_text_open_read("Highscores.txt");	
	
	i = 0;
	while(!file_text_eof(file)){
		temp = file_text_readln(file);
		
		//Get rank
		index = string_pos_ext(" ", temp, 1);
		rankArray[i] = string_copy(temp, 1, index - 1);
		
		//Get initials
		oldindex = index + 1;
		index = string_pos_ext(" ", temp, oldindex);
		initialsArray[i] = string_copy(temp, oldindex, index - oldindex);
		
		//Get time
		oldindex = index + 1;
		timeArray[i] = real(string_copy(temp, oldindex, string_length(temp) - oldindex));
		
		i++;
	}
	
	file_text_close(file);
}else{
	for(i = 0; i < 5; i++){
		initialsArray[i] = "JNO";
		timeArray[i] = (11 + i) * 60;
	}
	rankArray[0] = "1ST";
	rankArray[1] = "2ND";
	rankArray[2] = "3RD";
	rankArray[3] = "4TH";
	rankArray[4] = "5TH";
}