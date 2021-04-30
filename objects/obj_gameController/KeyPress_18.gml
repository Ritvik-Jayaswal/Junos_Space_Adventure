/// @description Fullscreen toggle
// You can write your code in this editor

if(fullscreen){
	window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
}

fullscreen = !fullscreen;