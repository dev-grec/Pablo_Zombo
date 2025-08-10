/// draw gun behind player ///
if (dir >= 0 && dir < 180)
{
	draw_weapon2();
}

/// draw player ///
draw_self();

/// draw gun in front of player ///
if (dir >= 180 && dir < 360)
{
	draw_weapon2();
}

var _healthPercent = hp / hpMax;
var _hpImage = _healthPercent * (sprite_get_number(healthBar3_sp) - 1);
draw_sprite(healthBar3_sp, _hpImage, x, y - sprite_height - 1);