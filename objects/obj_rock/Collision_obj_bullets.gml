/// @description Rock hit
// You can write your code in this editor

global.points += 50

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, global.spr_colors.explosion);

direction = random(360)

if sprite_index == spr_rock_big{
	sprite_index = spr_rock_small;
	instance_copy(true);
} else if instance_number(obj_rock) < 12{
	sprite_index = spr_rock_big
	x = -100
} else {
	instance_destroy();
}