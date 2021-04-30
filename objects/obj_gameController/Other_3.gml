/// @description Save Highscores
// You can write your code in this editor

file = file_text_open_write("Highscores.txt");
		
for(i = 0; i < 5; i++){
	file_text_write_string(file, rankArray[i] + " ");
	file_text_write_real(file, scoreArray[i]);
	file_text_write_string(file, initialsArray[i] + " ");
	file_text_write_real(file, timeArray[i]);
	file_text_write_string(file, "\n");
}

file_text_close(file);