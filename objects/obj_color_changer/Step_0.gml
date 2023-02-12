/// @description Insert description here
// You can write your code in this editor
up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key = mouse_check_button_pressed(mb_left);

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

//this does nothing
if(up_key || down_key){
	draw_sprite_ext(asset_get_index(img), 0, 500, 300, 2, 2, 0, chooseColor(color_choice[pos]), 1)
	
}

if(accept_key) room_restart()

function chooseColor(choice){
	switch(choice){
		case "yellow":
			return c_yellow
		case "red":
			return c_red
		case "teal":
			return c_teal
		case "green":
			return c_green
		case "fuchsia":
			return c_fuchsia
		case "purple":
			return c_purple
		case "lime":
			return c_lime
		case "white":
			return c_white
	}	
}