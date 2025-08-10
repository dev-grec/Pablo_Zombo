alpha = 0;
alphaSpd = 1/75;
alphaMax = 0.6;

if instance_exists(music1_ob)
{
audio_stop_sound(music1_sd)
}
if instance_exists(music2_ob)
{
audio_stop_sound(music2_sd)
}

audio_play_sound(musicDeath_sd, 1, 0);

depth = -10000;