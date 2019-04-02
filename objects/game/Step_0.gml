//Toggle debug mode using 0
if (keyboard_check_pressed(ord("0")))
{
	debug = !debug;
}

//Restart game using R
if (keyboard_check_pressed(ord("R")))
{
	game_restart();
}

//Exit game using esc
if (keyboard_check_pressed((vk_escape)))
{
	game_end();
}

/*
if (keyboard_check_pressed(ord("P")))
{
	if (!instance_exists(obj_fade) && room != rm_battle && room != rm_pause)
	{
		scr_fadeout(rm_pause, c_white, 0.05, obj_player.x, obj_player.y);
	}
	if (room == rm_pause)
	{
		scr_fadeout(obj_player.last_room, c_white, 0.05, obj_player.x, obj_player.y);
	}
}