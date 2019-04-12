/// @description Insert description here
// You can write your code in this editor
//Horizontal Collision
if (keyboard_check_pressed(ord("Z")))
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

//Vertical Collision
if (keyboard_check_pressed(ord("Z")))
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