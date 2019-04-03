//Draw Battle Menu Options
if (inCombat)
{
	for (i = 0; i < array_length_1d(battleMenu); ++i)
	{	
		if (i == battleMenuSelection)
		{
			/*
			show_debug_message(string(i))
			show_debug_message(string(battleMenu[i]))
			*/
			image_speed = 0;
			//show_debug_message("Image index before: " + string(image_index));
			if ((image_index % 2) == 0 )
			{
				draw_sprite(battleMenu[i], (image_index + 1), 200 * i + 150, 380);
			}
			else
			{
				draw_sprite(battleMenu[i], (image_index), 200 * i + 150, 380);
			}
			//show_debug_message("Image index after: " + string(image_index));
		}
		else
		{
			draw_sprite(battleMenu[i], 0, 200 * i + 150, 380);
		}
	}
	//Draw HP bar & MP bar of player
	with (obj_player)
	{
		draw_healthbar(x - 20, y + 45, x + 20, y + 55, (p_health / p_maxHealth) * 100, c_black, c_red, c_lime, 0, true, true);
		draw_healthbar(x - 20, y + 55, x + 20, y + 65, (p_magic / p_maxMagic) * 100, c_black, c_red, c_blue, 0, true, true);
	}
	//Draw HP bar of enemy
	with (enemyID)
	{
		draw_healthbar(x - 20, y + 45, x + 20, y + 55, (e_health / e_maxHealth) * 100, c_black, c_red, c_lime, 0, true, true);
	}
	//draw_text(enemyID.x - 30, enemyID.y + 35, enemyID.name);
	
	//Draw enemy selection
	if (selectingEnemy && instance_exists(enemyID))
	{
		draw_set_color(c_white);
		draw_circle(enemyID.x, enemyID.y, 16, true);
	}
}