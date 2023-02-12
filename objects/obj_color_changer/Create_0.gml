/// @description Insert description here
// You can write your code in this editor

selection = "player"
img = "spr_rock_big"

width = 1000;
height = 1000;

pos = 0;

op_border = 225;
op_space = 40;

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

color_choice[0] = "yellow"
color_choice[1] = "red"
color_choice[2] = "teal"
color_choice[3] = "green"
color_choice[4] = "fuchsia"
color_choice[5] = "purple"
color_choice[6] = "lime"
color_choice[7] = "white"


op_length = array_length(color_choice)