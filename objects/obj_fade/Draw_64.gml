/// @description Draw Fadeout
// You can write your code in this editor
draw_set_color(fade_color);
draw_set_alpha(image_alpha);
	
if (room != target)
{
	image_alpha += fade_speed;
	//show_debug_message("Running if");
	if (image_alpha >= 1)
	{
		if (instance_exists(obj_player))
		{
			obj_player.visible = true;
			obj_player.x = xx;
			obj_player.y = yy;
		}
		room_goto(target);
	}
}
else
{
	image_alpha -= fade_speed;
	//show_debug_message("Running else");
	if (image_alpha <= 0)
	{
		instance_destroy();
	}
}
	
draw_rectangle(0, 0, view_wport * 2, view_hport * 2, false);
draw_set_alpha(1);