/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (!inCombat)
{
	switch (state)
	{
		case enemyStates.idle:
			script_execute(state);
			break;
		case enemyStates.wander:
			script_execute(state);
			break;
		case enemyStates.alert:
			script_execute(state);
			break;
		case enemyStates.attack:
			script_execute(state);
			break;
	}
}

if (inCombat)
{
	if (!playerTurn)
	{
		
	}
}