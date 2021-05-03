/// @description Intials flash	
// You can write your code in this editor
if(curInt != 4){
	spaceOrunder = string_char_at(initials, curInt);
	
	if(spaceOrunder == " "){
		initials = string_delete(initials, curInt, 1);
		initials = string_insert("_", initials, curInt);
	}else if(spaceOrunder == "_"){
		initials = string_delete(initials, curInt, 1);
		initials = string_insert(" ", initials, curInt);	
	}

}

alarm[1] = 45;