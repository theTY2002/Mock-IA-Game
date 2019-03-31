//Horizontal Collision
if (moveX != 0)
{
	if (place_meeting(x + moveX, y, obj_parent_NPC))
	{
		with (obj_parent_NPC)
		{
			if (myTextBox == noone)
			{
				inTextBox = true;
				myTextBox = instance_create_layer(x, y, "Text", obj_textBox);
				myTextBox.text = myText;
				myTextBox.name = myName;
			}
		}
	}
}

//Vertical Collision
if (moveY != 0)
{
	if (place_meeting(x, y + moveY, obj_parent_NPC))
	{
		with (obj_parent_NPC)
		{
			if (myTextBox == noone)
			{
				inTextBox = true;
				myTextBox = instance_create_layer(x, y, "Text", obj_textBox);
				myTextBox.text = myText;
				myTextBox.name = myName;
			}
		}
	}
}