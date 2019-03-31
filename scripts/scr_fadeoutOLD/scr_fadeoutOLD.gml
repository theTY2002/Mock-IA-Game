/// @desc fadeout (room, fade_color, fade_speed)
/// @arg room
/// @arg fade_color
/// @arg fade_speed
with (game)
{
	draw_set_alpha(blackAlpha);
	
	if (room != argument0)
	{
		blackAlpha += argument2;
		if (blackAlpha == 1)
		{
			room_goto(argument0);
		}
	}
	else
	{
		blackAlpha -= argument2;
		if (blackAlpha == 0)
		{
			doTransition = false;
		}
	}
	
	draw_set_alpha(blackAlpha);
	draw_rectangle_color(0, 0, GUIwidth * 2, GUIheight * 2, argument1, argument1, argument1, argument1, false);
	draw_set_alpha(1);
}