/// @description Insert description here
// You can write your code in this editor

//set font
draw_set_font(up1);

//draw background
draw_sprite_ext(sprite_index, 0, 0, 0, width/sprite_width, height/sprite_height, 0, c_white, 1);

//align everything to the top left and set text color to black
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_black);

//draw edited spite
draw_sprite_ext(asset_get_index(img), 0, 500, 300, 2, 2, 0, variable_struct_get(global.spr_colors, selection), 1)

//draw menu
for (var i = 0; i < op_length; i++){
	var _c = c_black;
	if pos == i {_c = c_white}
		
		draw_text_ext_transformed_color(op_border, 250+op_border + op_space*i, color_choice[i], 3, 10000, .5, .5, 0, _c, _c, _c, _c, 1);
}

