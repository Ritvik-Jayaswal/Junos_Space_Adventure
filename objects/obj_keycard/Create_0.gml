/// @description Change frame based on level
// You can write your code in this editor

image_speed = 0;

switch(room){
	case rm_LowerDeck:
		image_index = 0;
		break;
	
	case rm_MidDeck:
		image_index = 1;
		break;
		
	case rm_BridgeDeck:
		image_index = 2;
		break;
	
	default:
		break;
}