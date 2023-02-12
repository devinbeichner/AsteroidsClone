/// @description Insert description here
// You can write your code in this editor
if room_get_name(room) == "StartMenu" {
	draw_text_ext_transformed_colour(50, 50, "highscore: " + string(global.highscore), 3, 10000, .5, .5, 0, c_black, c_black, c_black, c_black, 1);
} else if room_get_name(room) == "GameRoom" {
	draw_text_ext_transformed_colour(50, 50, global.points, 3, 10000, .5, .5, 0, c_white, c_white, c_white, c_white, 1)
}
