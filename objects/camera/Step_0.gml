/// @description Insert description here
// You can write your code in this editor

if (!inCombat)
{
	moveCam = keyboard_check(ord("C"));

	if (moveCam)
	{
		var inputLeft = keyboard_check(ord("A"));
		var inputRight = keyboard_check(ord("D"));
		var inputUp = keyboard_check(ord("W"));
		var inputDown = keyboard_check(ord("S"));
		x += (inputRight - inputLeft) * 6;
		y += (inputDown - inputUp) * 6;
	}
	else
	{
		//Smooth Camera
		x += (following.x - x) * 0.1;
		y += (following.y - y) * 0.1;
	
		//Force Camera
		x = clamp(x, following.x - h_border, following.x + h_border);
		y = clamp(y, following.y - v_border, following.y + v_border);
	}
}