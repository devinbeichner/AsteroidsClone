/// @description Draw menu background
// You can write your code in this editor

draw_set_font(up1);

draw_sprite_ext(sprite_index, 0, x-35, y+30, width/sprite_width, height/sprite_height, 0, c_white, 1);

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_black);

draw_text_transformed(x+75, y+50, "NEW HIGHSCORE!", .75, .75, 0)
draw_text(x+75, y+150, global.points)
draw_text_transformed(x+75, y+275, "ENTER YOUR INITIALS", .75, .75, 0);
