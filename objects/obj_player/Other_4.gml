/// @description Insert description here
// You can write your code in this editor
if (room != rm_battle && room != rm_pause && room != rm_levelUp)
{
	last_room = room;
	show_debug_message("Last Room:" + string(last_room));
}
else
{
	show_debug_message(string(last_room));
}

show_debug_message("Current Room: " + string(room));