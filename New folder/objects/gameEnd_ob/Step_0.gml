
var shootKey = global.shootKey;
  
  if instance_exists(gameantiD_ob)
  {
	  instance_destroy(gameantiD_ob);
  }
  
alpha += alphaSpd;
alpha = clamp(alpha, 0, 1);

if shootKey && alpha >= 1
{
	audio_stop_sound(Sound7);
	game_restart();
}