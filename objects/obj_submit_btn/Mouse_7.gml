/// @description Insert description here
// You can write your code in this editor
var keys = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
var savedStruct = {}
var foundPlace = false
var scoreObj = {score: global.points, name: obj_textbox.message}

for(var i = 0; i < array_length(keys); i++){
	var k = keys[i]
	var v = variable_struct_get(global.leaderBoard, k)
	if(!foundPlace && global.points > v.score && k != "ten"){
		savedStruct = v
		variable_struct_set(global.leaderBoard, k, scoreObj)
		foundPlace = true;
	} else if (!foundPlace && savedStruct == {} && global.points > v.score){
		variable_struct_set(global.leaderBoard, k, scoreObj)
	}
	
	if(foundPlace && k != "ten"){
		var nextPlace = variable_struct_get(global.leaderBoard, keys[i+1])
		
		if(nextPlace.score == 0 && savedStruct != {}){
			variable_struct_set(global.leaderBoard, keys[i+1], savedStruct)
			savedStruct = {score: 0, name: ""}
		} else if (nextPlace.score > 0 && savedStruct != {}){
			variable_struct_set(global.leaderBoard, keys[i+1], savedStruct)
			savedStruct = nextPlace
		}
	}
}

global.highscore = global.leaderBoard.one.score;
global.points = 0;
highscore_save()
room_goto(rm_leaderboard)