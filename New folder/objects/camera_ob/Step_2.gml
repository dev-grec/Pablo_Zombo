var _camW = camera_get_view_width(view_camera[0]);
var _camH = camera_get_view_height(view_camera[0]);

if instance_exists(player_ob)
{
	x = player_ob.x - _camW / 2;
	y = player_ob.centerY - _camH/2;
}


x = clamp(x, 0, room_width - _camW);
y = clamp(y, 0, room_height - _camH);

camera_set_view_pos(view_camera[0], x, y);