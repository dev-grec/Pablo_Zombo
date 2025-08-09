

/// chase player ///


if instance_exists(player_ob)
{
	var _disToPlayer = point_distance(x, y, player_ob.x, player_ob.y);
	dir = point_direction(x, y, player_ob.x, player_ob.y);
		if _disToPlayer <= maxDist
		{
			xspd = lengthdir_x(spd, dir);
			yspd = lengthdir_y(spd, dir);
		} else {
			xspd = 0;
			yspd = 0;
}



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

