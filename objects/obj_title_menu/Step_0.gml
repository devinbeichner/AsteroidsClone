/// @description Insert description here
// You can write your code in this editor
up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key = mouse_check_button_pressed(mb_left);
op_length = 0;

function set_op_length () {
	op_length = array_length(option[menu_level]);
};

set_op_length();

//store number of opts in current menu


pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

if(accept_key){
	
	var _sml = menu_level;
	
	switch(menu_level){
		case 0:
			switch(pos){
				case 0:
					room_goto_next();
					break;
				case 1:
					room_goto(rm_leaderboard);
					break;
				case 2:
					menu_level = 1;
					break;
				case 3:
					room_goto(rm_credits);
					break;
				case 4:
					game_end()
					break;
			}
			break;
		
		case 1:
			chosen_layer = layer_create(-100)
			switch(pos){
				case 0:
					
					instance_create_layer(x+800, y+200, chosen_layer, obj_color_changer, {selection: "player"})
					break;
				case 1:
					instance_create_layer(x, y, chosen_layer, obj_color_changer, {selection: "bullets"})
					break;
				case 2:
					instance_create_layer(x, y, chosen_layer, obj_color_changer, {selection: "explosion"})
					break;
				case 3:
					instance_create_layer(x, y, chosen_layer, obj_color_changer, {selection: "rock"})
					break;
				case 4:
					menu_level = 0
					break;
			}
	}
	
	if _sml != menu_level {pos = 0};
	set_op_length();
}
