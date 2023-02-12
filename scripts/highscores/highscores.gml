// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function highscore_load(){
	var file = working_directory + "/highscore";
	try{
		var handle = file_text_open_read(file);
		global.leaderBoard = json_parse(file_text_read_string(handle))
		file_text_close(handle)
	}catch(_e){
		show_debug_message("ERROR: " + string(_e))
		global.highscore = 0;
	}
}

function highscore_save(){

	var file = working_directory + "/highscore";
	var handle = file_text_open_write(file);
	file_text_write_string(handle, json_stringify(global.leaderBoard));
	file_text_close(handle);
}