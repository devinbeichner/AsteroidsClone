/// @description Draw menu background
// You can write your code in this editor

draw_set_font(up1);

draw_sprite_ext(sprite_index, 0, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_black);

draw_text_transformed(x+150, y+150, "ASTEROIDS", 1.5, 1.5, 0);

for (var i = 0; i < op_length; i++){
	var _c = c_black;
	if pos == i {_c = c_white}
	if(menu_level == 0){
		
		draw_text_color(x+op_border, y+250+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
	
	} else if(menu_level == 1) {
		
		draw_text_ext_transformed_colour(x+op_border, y+250+op_border+op_space*i, option[menu_level, i], 3, 10000, .5, .5, 0, _c, _c, _c, _c, 1)
		
	}
	
}