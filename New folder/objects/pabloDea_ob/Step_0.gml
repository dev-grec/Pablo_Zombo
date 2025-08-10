var _colis = collision_circle(x, y, 32, player_ob, false, true);
var _e = keyboard_check_pressed(ord("E"));

if _colis 
{
	draw_text(x, y - 20, "E");
} 

if _colis && _e
{
	instance_create_layer(x, y, "kings", gameEnd_ob);
}

