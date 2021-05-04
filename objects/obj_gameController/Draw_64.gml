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
		draw_text(window_w / 2, window_h * 7 / 10, "Press Z to shoot and the arrow keys to move");
		draw_text(window_w / 2, window_h * 8 / 10, "Press H to view the highscore table");
		
		break;
	
	case GAME_STATE.highscore:
		draw_set_font(fnt_highscoreTitle);
		draw_set_color(c_gray);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_text(window_w / 2, window_h / 10, "Highscores");
		
		draw_set_font(fnt_highscoreSubtitle);
		draw_text(window_w * 2 / 8, window_h * 7 / 30, "Rank  ");
		draw_text(window_w * 4 / 8, window_h * 7 / 30, "Initials ");
		draw_text(window_w * 6 / 8, window_h * 7 / 30, "  Time");

		
		
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
				draw_text(window_w * 2 / 8, window_h * (i + 4) / 12, rankArray[i] + "  ");
				draw_text(window_w * 4 / 8, window_h * (i + 4) / 12, initialsArray[i] + " ");
				draw_text(window_w * 6 / 8, window_h * (i + 4) / 12, "  " + scr_convertTime(timeArray[i]));
				
			} else {
				draw_set_color(c_gray);
				draw_text(window_w * 2 / 8, window_h * (i + 4) / 12, rankArray[i] + "  ");
				draw_text(window_w * 4 / 8, window_h * (i + 4) / 12, initialsArray[i] + " ");
				draw_text(window_w * 6 / 8, window_h * (i + 4) / 12, "  " + scr_convertTime(timeArray[i]));

			}
		}
	
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		break;
		
	case GAME_STATE.playing:
		draw_set_font(fnt_subtitle);
		draw_set_color(c_red);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_text(5, -30, scr_convertTime(date_get_second_of_year(date_current_datetime()) - game_start_time));
		draw_healthbar(8,160,256,256,health,c_black,c_red,c_lime,0,true,true);
		break;
	
	
	case GAME_STATE.newhighscore:
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_set_font(fnt_subtitle);
		draw_set_color(c_gray);
		draw_text(window_w / 2, window_h * 1 / 3, "New Highscore!\n Enter Your Initials");
		draw_text(window_w / 2, window_h * 7 / 13, initials);	
		
		if(curInt == 4){
			draw_text(window_w / 2, window_h * 2 / 3, "Press ENTER to Confirm");			
		}
		break;
		
	case GAME_STATE.lose:
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_set_font(fnt_subtitle);
		draw_set_color(c_gray);
		draw_text(window_w / 2, window_h * 1 / 3, "You Died");
		
		
		draw_text(window_w / 2, window_h * 2 / 3, "Press ESC to return to the menu");			
		
		break;
	
	default:
		break;
}