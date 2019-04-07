//Draw UI for debug mode

if (!debug)
{
	exit;
}

//Draw collision hitboxes
with (obj_collision)
{
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
}
with (obj_player)
{
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
}
with (obj_parent_enemy)
{
	draw_circle_color(x, y, 128, c_yellow, c_yellow, false);
	draw_circle_color(x, y, 32, c_red, c_red, false);
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
}