event_inherited();

//Set player to invisible
obj_player.visible = false;

//Press space to return to the overworld
if (keyboard_check_pressed(ord("X")))
{
	scr_fadeout(obj_player.last_room, c_white, 0.05, obj_player.beforeBattleX, obj_player.beforeBattleY);
}