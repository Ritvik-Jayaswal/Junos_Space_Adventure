/// @description Draw events based on game state
// You can write your code in this editor


window_w = window_get_width();
window_h = window_get_height();

switch(state){
	case GAME_STATE.title:
		draw_set_font(fnt_title);
		draw_set_color(c_gray);
		draw_set_halign(fa_center);
		draw_text(window_w / 2, window_h / 10, "Juno's Space Escape");
	
		if(flash_state){
			draw_set_font(fnt_subtitle);
			draw_text(window_w / 2, window_h * 9 / 20, "Press ENTER to Start");
		}
		
		draw_set_font(fnt_instructions);
		draw_text(window_w / 2, window_h * 7 / 10, "CONTROLS WILL GO HERE");
		draw_text(window_w / 2, window_h * 8 / 10, "Press H to view the highscore table");
		
		break;
	
	default:
		break;
}