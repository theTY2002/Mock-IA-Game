event_inherited();

scr_collision();

//Do not move while textbox is on screen
if (!inTextBox)
{
	//Apply movement
	x += moveX;
	y += moveY;
}