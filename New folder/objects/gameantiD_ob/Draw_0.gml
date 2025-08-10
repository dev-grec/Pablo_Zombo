var _camX = camera_get_view_x(view_camera[0]);
var _camW = camera_get_view_width(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);
var _camH = camera_get_view_height(view_camera[0]);

draw_set_alpha(alpha * alphaMax);




draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(alpha);
draw_set_font(font1);
var _gameOverOffset = -64;
draw_text_transformed(_camX + _camW/2, _camY + _camH/2 + _gameOverOffset, "Get the Antidote", 2, 2, 0);
var _restartOffset = 30;
draw_text_transformed(_camX + _camW/2, _camY + _camH/2 + _restartOffset, "- Press 'E' on Pablo -", 1, 1, 0);
draw_set_alpha(1);