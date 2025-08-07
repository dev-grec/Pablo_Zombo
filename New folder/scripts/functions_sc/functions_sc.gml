
function draw_weapon1()
{
var xOffset = lengthdir_x(weaponOffsetDist, aimDir);
var yOffset = lengthdir_y(weaponOffsetDist, aimDir);

var _weaponYscl = 1;

	if (aimDir > 90 && aimDir < 270)
	{
		_weaponYscl = -1;
	}


draw_sprite_ext(gun1_sp, 0, x + xOffset, centerY + yOffset, 1, _weaponYscl, aimDir, c_white, 1);
}