//Initialise
enum enemyStates
{
	idle = scr_idle_state_enemy,
	wander = scr_wander_state_enemy,
	alert = scr_alert_state_enemy,
	attack = scr_attack_state_enemy
}

state = enemyStates.idle;

counter = 0;

moveX = 0;
moveY = 0;

facing  = 180;