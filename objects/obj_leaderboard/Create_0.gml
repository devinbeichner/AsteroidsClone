/// @description Insert description here
// You can write your code in this editor
width = 1000;
height = 1000;
op_space = 150;

keys = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"];
first_five = []
last_five = []

for(var i = 0; i < 5; i++){
	array_push(first_five, variable_struct_get(global.leaderBoard, keys[i]))
}
for(var i = 5; i < 10; i++){
	array_push(last_five, variable_struct_get(global.leaderBoard, keys[i]))
}