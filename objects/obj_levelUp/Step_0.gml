/// @description Insert description here
// You can write your code in this editor
event_inherited();

obj_player.visible = false;

if (keyboard_check_pressed(vk_space))
{
	scr_fadeout(obj_player.last_room, c_white, 0.05, obj_player.beforeBattleX, obj_player.beforeBattleY);
}