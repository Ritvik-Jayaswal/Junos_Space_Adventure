/// @description Show keycard
// You can write your code in this editor

keycard_width_offset = 85;
keycard_height_offset = 90;

if(hasKeycard){
	draw_sprite_ext(spr_keycard, 1, 1920 - 85,  
		1080 - 90, 3.1, 3.2, 45, c_black, 1);
		
	switch(room){
		case rm_MidDeck:
			draw_sprite_ext(spr_keycard, 1, display_get_gui_width() - keycard_width_offset,  
				display_get_gui_height() - keycard_height_offset, 3, 3, 45, c_white, 1);
			break;
		
		case rm_BridgeDeck:
			draw_sprite_ext(spr_keycard, 2, display_get_gui_width() - keycard_width_offset,  
				display_get_gui_height() - keycard_height_offset, 3, 3, 45, c_white, 1);
			break;
	
		default:
			draw_sprite_ext(spr_keycard, 0, display_get_gui_width() - keycard_width_offset,  
				display_get_gui_height() - keycard_height_offset, 3, 3, 45, c_white, 1);
			break;
	}
}