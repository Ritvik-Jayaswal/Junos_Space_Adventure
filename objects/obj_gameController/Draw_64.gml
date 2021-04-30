/// @description Draw events based on game state
// You can write your code in this editor


window_w = 1920;
window_h = 1080;

switch(state){
	case GAME_STATE.title:
		draw_set_font(fnt_title);
		draw_set_color(c_gray);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text(window_w / 2, window_h / 10, "Juno's Space Escape");
	
		if(flash_state){
			draw_set_font(fnt_subtitle);
			draw_text(window_w / 2, window_h * 9 / 20, "Press ENTER to Start");
		}
		
		draw_set_font(fnt_instructions);
		draw_text(window_w / 2, window_h * 7 / 10, "CONTROLS WILL GO HERE");
		draw_text(window_w / 2, window_h * 8 / 10, "Press H to view the highscore table");
		
		break;
	
	case GAME_STATE.highscore:
		draw_set_font(fnt_highscoreTitle);
		draw_set_color(c_gray);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_text(window_w / 2, window_h / 10, "Highscores");
		
		draw_set_font(fnt_highscoreSubtitle);
		draw_set_halign(fa_right);
		draw_text(window_w * 7 / 24, window_h * 7 / 30, "Rank  ");
		draw_text(window_w * 12 / 24, window_h * 7 / 30, "Initials ");
		draw_set_halign(fa_left);
		draw_text(window_w * 12 / 24, window_h * 7 / 30, "  Time");
		draw_text(window_w * 17 / 24, window_h * 7 / 30, " Score");
		
		
		draw_set_font(fnt_highscoreNotes);
		draw_set_halign(fa_center);
		if(newRank == -1){
			draw_text(window_w / 2, window_h * 20 / 24, "You must escape Pandora to qualify for placement!");
		}
		draw_text(window_w / 2, window_h * 22 / 24, "Press ESC to return to the main menu");
		
		draw_set_font(fnt_highscoreSubtitle);
		for(i = 0; i < 5; i++){
			if(i == newRank){
				draw_set_color(c_red);
				draw_set_halign(fa_right);
				draw_text(window_w * 7 / 24, window_h * (i + 4) / 12, rankArray[i] + "  ");
				draw_text(window_w * 12 / 24, window_h * (i + 4) / 12, initialsArray[i] + " ");
				draw_set_halign(fa_left);
				draw_text(window_w * 12 / 24, window_h * (i + 4) / 12, "  10:00");
				draw_text(window_w * 17 / 24, window_h * (i + 4) / 12, " " + string(scoreArray[i]));
				
			} else {
				draw_set_color(c_gray);
				draw_set_halign(fa_right);
				draw_text(window_w * 7 / 24, window_h * (i + 4) / 12, rankArray[i] + "  ");
				draw_text(window_w * 12 / 24, window_h * (i + 4) / 12, initialsArray[i] + " ");
				draw_set_halign(fa_left);
				draw_text(window_w * 12 / 24, window_h * (i + 4) / 12, "  " + scr_convertTime(timeArray[i]));
				draw_text(window_w * 17 / 24, window_h * (i + 4) / 12, " " + string(scoreArray[i]));

			}
		}
	
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	
	default:
		break;
}