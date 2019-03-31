if (xFrame == 4)
{
	var createX = 0;
	var createY = 0;
	switch (facing)
	{
		case 0:
			createX = 20;
			break;
		case 90:
			createY = -16;
			break;
		case 180:
			createX = -20;
			break;
		case 270:
			createY = 28;
			break;
		//This is bad
		default:
			createX = -20;
			break;
	}
	instance_create_depth(x + createX, y + createY, depth, obj_damage);	
	attacked = true;
}