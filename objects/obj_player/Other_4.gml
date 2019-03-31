/// @description Insert description here
// You can write your code in this editor
if (room != rm_battle && room != rm_pause)
{
	last_room = room;
	show_debug_message("Last Room:" + string(last_room));
}
else
{
	show_debug_message(string(last_room));
}