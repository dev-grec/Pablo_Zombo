xspd = lengthdir_x( spd, dir);
yspd = lengthdir_y( spd, dir);

x += xspd;
y += yspd;


if (destroy == true)
{
	instance_destroy();
}

if (place_meeting(x, y, wall_ob))
{
	destroy = true;
}

if (point_distance(xstart, ystart, x, y) >= maxDist)
{
	destroy = true;
}


