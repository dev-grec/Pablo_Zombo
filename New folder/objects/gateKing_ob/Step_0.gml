if (instance_exists(player_ob))
{
    var _meeting = place_meeting(x, y, player_ob);

    if ((_meeting) && (gate == 0))
    {
        entered = 1;
    }
    if ((!_meeting) && (entered == 1) && (gate == 0))
    {
        entered = 2;
    }
    
    if ((entered == 2) && (gate == 0))
    {
        gate = 1;
    }

    if (gate == 1)
    {
        instance_create_layer(x, y, "doors", gate_ob);
       
        instance_destroy();
    }
}



