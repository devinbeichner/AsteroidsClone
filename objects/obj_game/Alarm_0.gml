/// @description Insert description here
// You can write your code in this editor

if(global.points > global.leaderBoard.ten.score){
	room_goto(HighscoreRoom)
} else {
	global.points = 0;
	room_goto_previous();
}
