/// @description Setup
// You can write your code in this editor

window_set_fullscreen(true);

enum GAME_STATE{
	title,
	playing,
	paused,
	win,
	lose,
	newhighscore,
	savehighscore,
	highscore
}

state = GAME_STATE.title;
flash_state = true;
alarm[0] = 60;