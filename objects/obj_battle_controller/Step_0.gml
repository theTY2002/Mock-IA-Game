if (inCombat)
{
	//Player Turn
	if (playerTurn)
	{
		//Menu Selection
		if (keyboard_check_pressed(vk_left))
		{
			if (battleMenuSelection - 1 < 0)
			{
				battleMenuSelection = (array_length_1d(battleMenu) - 1);
			}
			else
			{
				--battleMenuSelection;
			}
		}
		else if (keyboard_check_pressed(vk_right))
		{
			if (battleMenuSelection + 1 > array_length_1d(battleMenu) - 1)
			{
				battleMenuSelection = 0;
			}
			else
			{
				++battleMenuSelection;
			}
		}
	
		//Melee attack
		if (battleMenuSelection == 0 && keyboard_check_pressed(vk_enter))
		{
			if (!selectingEnemy)
			{
				selectingEnemy = true;
			}
			else
			{
				playerAttacking = true;
				obj_player.xFrame = 0;
				alarm[1] = 35;
				with (enemyID)
				{
					var damage = (p_attack * random_range(1, 1.125) - e_defense)
					e_health -= damage;
					//show_debug_message("Enemy Health: " + string(e_health));
				}
				selectingEnemy = false;
				playerTurn = false;
			}
		}
		//Magic attack
		else if (battleMenuSelection == 1 && keyboard_check_pressed(vk_enter))
		{
			if (p_magic >= 2)
			{
				if (!selectingEnemy)
				{
					selectingEnemy = true;
				}
				else
				{
					playerMAttacking = true;
					obj_player.xFrame = 0;
					alarm[1] = 35;
					selectingEnemy = false;
					with (obj_player)
					{
						scr_cast_fire();
					}
					with (enemyID)
					{
						//show_debug_message("Enemy Health: " + string(e_health));
					}
					playerTurn = false;
				}
			}
		}
		//Run away
		else if (battleMenuSelection == 2 && keyboard_check_pressed(vk_enter))
		{
			ranAway = true;
		}
		//Cancel selection
		if (keyboard_check_pressed(ord("B")) && selectingEnemy)
		{
			selectingEnemy = false;
		}
	}
	//If enemy is dead
	if (!instance_exists(enemyID))
	{
		with (obj_player)
		{
			/*
			show_debug_message("Last Room:" + string(last_room));
			show_debug_message("BeforeBattleX:" + string(beforeBattleX));
			show_debug_message("BeforeBattleY:" + string(beforeBattleY));
			*/
			inCombat = false;
			show_debug_message("This is running");
			ranAway = false;
			//Level up
			if (p_exp >= p_maxExp)
			{
				scr_levelUp();
			}
			//Fade back to the last room
			else
			{
				scr_fadeout(last_room, c_white, 0.05, beforeBattleX, beforeBattleY);
			}
		}
	}
	//Destroy enemy when enemy health is below 0
	if (instance_exists(enemyID) && enemyID.e_health <= 0)
	{
		p_exp += enemyID.e_exp;
		instance_destroy(enemyID);
	}
	//Destroy enemy when running away
	if (ranAway)
	{
		instance_destroy(enemyID);
	}
	//Enemy turn
	if (!playerTurn && instance_exists(enemyID))
	{
		enemyAttacking = true;
		enemyID.xFrame = 0;
		alarm[2] = 35;
		takeDmg = enemyID.e_attack * (1-0.05*p_defense);
		p_health -= takeDmg;
		playerTurn = true;
	}
	
}