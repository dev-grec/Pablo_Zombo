if instance_exists(player_ob)
{
	if (place_meeting(x, y, player_ob))
	{
		room_goto_next();
	}
}