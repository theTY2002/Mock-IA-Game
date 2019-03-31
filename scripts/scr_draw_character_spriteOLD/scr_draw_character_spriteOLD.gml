/*
var animLength = 9;
var frameSize = 64;
var animSpeed = 12;
//var spriteToDraw = argument3;
var framesPerSecond = 60;
var xFrame = 0;
//var yFrame = 0;

drawX = x - x_offset;
drawY = y - y_offset;

switch (state)
{
	case (playerStates.move):
	case (playerStates.dash):
		image_speed = 0.2;
		if (moveX > 0)
		{
			//scr_draw_animation_cycle(9, 64, 12, spr_move_right_character, xFrame);
			//draw_sprite_part(spr_move_right_character, 0, floor(xFrame)*frameSize, 0, frameSize, frameSize, drawX, drawY);
			image_speed = 0.2;
			sprite_index = spr_move_right_character_strip;
		}
		else if (moveX < 0)
		{
			//draw_sprite_part(spr_move_left_character, 0, floor(xFrame)*frameSize, 0, frameSize, frameSize, drawX, drawY);
			//scr_draw_animation_cycle(9, 64, 12, spr_move_left_character, xFrame);
			sprite_index = spr_move_left_character_strip;
		}
		else if (moveY < 0)
		{
			//draw_sprite_part(spr_move_up_character, 0, floor(xFrame)*frameSize, 0, frameSize, frameSize, drawX, drawY);
			//scr_draw_animation_cycle(9, 64, 12, spr_move_up_character, xFrame);
			sprite_index = spr_move_up_character_strip;
		}
		else if (moveY > 0)
		{
			//draw_sprite_part(spr_move_down_character, 0, floor(xFrame)*frameSize, 0, frameSize, frameSize, drawX, drawY);
			//scr_draw_animation_cycle(9, 64, 12, spr_move_down_character, xFrame);
			sprite_index = spr_move_down_character_strip;
		}
		else
		{
			image_speed = 0;
			sprite_index = spr_move_down_character_strip;
		}
		draw_sprite(sprite_index, 0, drawX, drawY);
		break;
	case (playerStates.attack):
		switch (facing)
		{
			case 0:
				scr_draw_animation_cycle(9, 64, 20, spr_attack_right_character, xFrame);
				break;
			case 90:
				scr_draw_animation_cycle(9, 64, 20, spr_attack_up_character, xFrame);
				break;
			case 180:
				scr_draw_animation_cycle(9, 64, 20, spr_attack_left_character, xFrame);
				break;
			case 270:
				scr_draw_animation_cycle(9, 64, 20, spr_attack_down_character, xFrame);
				break;
				/*
			//THIS IS BAD
			default:
				yFrame = 5;
				break;
				
		}
}

//Draw Character Shadow
draw_sprite(spr_character_shadow, 0, x, y);



/*
//Draw character base
if (spr_base != -1)
{
	draw_sprite_part(spr_base, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);
}

//Draw character feet
if (spr_feet != -1)
{
	draw_sprite_part(spr_feet, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);
}

//Draw character legs
if (spr_legs != -1)
{
	draw_sprite_part(spr_legs, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);
}

//Draw character torso
if (spr_torso != -1)
{
	draw_sprite_part(spr_torso, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);
}

//Draw character hair
if (spr_hair != -1)
{
	draw_sprite_part(spr_hair, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX, drawY);
}

if (spr_attack != -1)
{
	switch (facing)
	{
		case 0:
			draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX + 20, drawY);
			break;
		case 90:
			draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX + 5, drawY - 40);
			break;
		case 180:
			draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX - 20, drawY);
			break;
		case 270:
			draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX + 5, drawY + 40);
			break;
		//This is bad
		default:
			draw_sprite_part(spr_attack, 0, floor(xFrame)*frameSize, yFrame*frameSize, frameSize, frameSize, drawX - 20, drawY);
	}
}