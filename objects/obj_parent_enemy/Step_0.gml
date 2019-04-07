event_inherited();

//Excecute states when not in combat
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