/// @description Insert description here
// You can write your code in this editor
event_inherited();

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