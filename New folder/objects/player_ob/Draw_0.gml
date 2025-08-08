/// draw gun behind player ///
if (aimDir >= 0 && aimDir < 180)
{
	draw_weapon1();
}

/// draw player ///
draw_self();

/// draw gun in front of player ///
if (aimDir >= 180 && aimDir < 360)
{
	draw_weapon1();
}


draw_text(x, y, string(hp))