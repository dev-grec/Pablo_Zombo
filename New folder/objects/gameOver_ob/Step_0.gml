
var shootKey = global.shootKey;

alpha += alphaSpd;
alpha = clamp(alpha, 0, 1);

if shootKey && alpha >= 1
{
	audio_stop_sound(musicDeath_sd);
	room_restart();
}