// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_convertTime(timeInSeconds){
	seconds = timeInSeconds % 60;
	minutes = (timeInSeconds - seconds) /60;
	
	if(seconds < 10){
		return string(minutes) + ":0" + string(seconds);
	}
	
	return string(minutes) + ":" + string(seconds);
}