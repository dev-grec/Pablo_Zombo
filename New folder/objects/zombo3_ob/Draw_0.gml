draw_self();

var _healthPercent = hp / hpMax;
var _hpImage = _healthPercent * (sprite_get_number(healthBar1_sp) - 1);
draw_sprite(healthBar1_sp, _hpImage, x, y - sprite_height - 1);
