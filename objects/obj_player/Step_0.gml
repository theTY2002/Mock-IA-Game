event_inherited();

//If in overworld
if (!inCombat && !inTextBox)
{
	if (!instance_exists(obj_fade))
	{
		script_execute(state);
	}
	else
	{
		xFrame = 0;
	}
}

scr_createTextBox();