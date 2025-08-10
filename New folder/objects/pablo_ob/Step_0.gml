switch (state)
{
	case 0: // Chase player
		if (instance_exists(player_ob))
		{
			dir = point_direction(x, y, player_ob.x, player_ob.y);
		}
		spd = chaseSpd;
		xspd = lengthdir_x(spd, dir);
		yspd = lengthdir_y(spd, dir);

		// Only increment shootTimer if close enough to the player
		if (instance_exists(player_ob))
		{
			if (point_distance(x, y, player_ob.x, player_ob.y) <= maxDist)
			{
				shootTimer++;
			}
			else
			{
				shootTimer = 0; // Reset timer if out of range
			}

			if (shootTimer > cooldownTime)
			{
				state = 1;
				shootTimer = 0;
			}
		}
	break;

	case 1: // Shoot/windup
		if (instance_exists(player_ob))
		{
			dir = point_direction(x, y, player_ob.x, player_ob.y);
		}
		spd = 0;
		xspd = 0;
		yspd = 0;

		image_index = 0;

		shootTimer++;
if shootTimer == 1
	{
		audio_play_sound(wizard_sd, 1, 0);
		bulletInst = instance_create_layer(x + bulletXoff, y + bulletYoff, "bullets", bullet2_ob);
	}
	
	if shootTimer == windupTime && instance_exists(bulletInst)
	{
		bulletInst.state = 1;
	}

if (shootTimer == windupTime)
		{
			audio_stop_sound(wizard_sd);
			shootTimer = 0;
		}
}

// Collision with walls/enemies
if (place_meeting(x + xspd, y, wall_ob) || place_meeting(x + xspd, y, enemyParent_ob))
{
	xspd = 0;
}
if (place_meeting(x, y + yspd, wall_ob) || place_meeting(x, y + yspd, enemyParent_ob))
{
	yspd = 0;
}

// Apply movement
x += xspd;
y += yspd;

// Depth sorting by Y
depth = -y;

// Sprite direction logic
face = round(dir / 90);
if (face == 4) { face = 0; }

if (xspd == 0 && yspd == 0) {
	image_index = 0;
}

// Sprite assignment
mask_index = sprite[3];
sprite_index = sprite[face];

event_inherited();

