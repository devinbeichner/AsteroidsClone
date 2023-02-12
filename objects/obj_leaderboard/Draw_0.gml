/// @description Draw menu background
// You can write your code in this editor

draw_set_font(up1);

draw_sprite_ext(sprite_index, 0, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_black);

for (var i = 0; i < array_length(first_five); i++){
	draw_text_transformed(x+ 50, y+ 50 + op_space*i, first_five[i].name, 0.75, 0.5, 0)
	draw_text_transformed(x + 250, y+ 50 + op_space*i, first_five[i].score, 0.75, 0.5, 0)
}

for (var i = 0; i < array_length(last_five); i++){
	draw_text_transformed(x+ 550, y+ 50 + op_space*i, last_five[i].name, 0.75, 0.5, 0)
	draw_text_transformed(x + 750, y+ 50 + op_space*i, last_five[i].score, 0.75, 0.5, 0)
}
draw_text_color(x+750, y+900, "back", c_white, c_white, c_white, c_white, 1);

