/// @description Insert description here
// You can write your code in this editor

selection = "player"
img = "spr_rock_big"
xPos = 0;
yPos = 0;
xScl = 1;
yScl = 1;
show_debug_message(selection)
switch(selection){
	case "player":
		img = "spr_player"
		break;
	case "rock":
		img = "spr_rock_big"
		break;
	case "bullets":
		img = spr_bullet
		break;
}

color_choice[0] = c_yellow
color_choice[1] = c_red
color_choice[3] = c_teal
color_choice[4] = c_green
color_choice[5] = c_fuchsia
color_choice[6] = c_purple
color_choice[7] = c_white
color_choice[8] = "select"