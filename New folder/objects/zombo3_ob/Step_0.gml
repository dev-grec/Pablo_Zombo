

/// chase player ///
switch (state)
{
	case 0:
		if instance_exists(player_ob)
		{
			dir = point_direction(x, y, player_ob.x, player_ob.y);
		}
		spd = chaseSpd;
		
		xspd = lengthdir_x(spd, dir);
		yspd = lengthdir_y(spd, dir);
	
	/*var _camLeft = camera_get_view_x(view_camera[0]);
	var _camRight = _camLeft + camera_get_view_width(view_camera[0]);
	var _camTop = camera_get_view_y(view_camera[0]);
	var _camBottom = _camTop + camera_get_view_height(view_camera[0]);
	
	if bbox_right > _camLeft && bbox_left < _camRight && bbox_bottom > _camTop && bbox_top < _camBottom
	{
	shootTimer++;
	}*/
		if instance_exists(player_ob)
		{
			if point_distance(x, y, player_ob.x, player_ob.y) <= maxDist
			{
			shootTimer++;
			} else {
				shootTimer = shootTimer;
			}
	
			if shootTimer > cooldownTime
			{
				state = 1;
				shootTimer = 0;
			}
		}
	break;
	
	case 1:
		if instance_exists(player_ob)
	{
		dir = point_direction(x, y, player_ob.x, player_ob.y);
	}
	
	spd = 0;
	
	image_index = 0;
	
	shootTimer ++;
	if shootTimer == 1
	{
		audio_play_sound(wizard_sd, 1, 0);
		bulletInst = instance_create_layer(x + bulletXoff, y + bulletYoff, "bullets", bullet2_ob);
	}
	
	if shootTimer == windupTime && instance_exists(bulletInst)
	{
		bulletInst.state = 1;
	}
	
	if shootTimer > windupTime + recoverTime
	{
		state = 0;
		audio_stop_sound(wizard_sd);
		shootTimer = 0;
	}
	
	break;
	
}




if (place_meeting(x + xspd, y, wall_ob)) || (place_meeting(x + xspd, y, enemyParent_ob))
{
	xspd = 0;
}
if (place_meeting(x, y + yspd, wall_ob)) || (place_meeting(x, y + yspd, enemyParent_ob))
{
	yspd = 0;
}





x += xspd;
y += yspd;

depth = -y;
/// sprite /// 

face = round(dir / 90);
if (face == 4) { face = 0; }

if (xspd == 0 && yspd == 0) {
	image_index = 0;
}

mask_index = sprite[3];
sprite_index = sprite[face];


event_inherited();

