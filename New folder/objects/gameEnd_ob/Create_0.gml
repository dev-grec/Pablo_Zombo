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
if instance_exists(music3_ob)
{
audio_stop_sound(boos1_sd)
}

audio_play_sound(Sound7, 1, 0);

depth = -10000;