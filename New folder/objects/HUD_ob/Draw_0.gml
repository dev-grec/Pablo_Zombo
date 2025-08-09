var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);


if instance_exists(player_ob)
{
	var _border = 8;
	draw_sprite(healthBar2_sp, 0, _camX + _border, _camY + _border);

	for ( var i = 0; i < playerHpMax; i++)
	{
		var _img = 1;
		if i+1 <= playerHp { _img = 2; };
	
		var _sep = 2;
		draw_sprite(healthBar2_sp, _img, _camX +_border + 2 + _sep*i, _camY+_border);
	}
}