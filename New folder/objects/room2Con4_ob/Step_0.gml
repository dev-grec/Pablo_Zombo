




/// player in room
if instance_exists(player_ob)
{
	var _gateList = ds_list_create();
	collision_rectangle_list(x, y, bbox_right, bbox_bottom, gateKing_ob, true, false, _gateList, false);
	var _inRoom = collision_rectangle(x + 10, y + 10, x + 120 , y + roomH - 10, player_ob, false, true);
	if (_inRoom)
	{
		/// gates
		for (var i = 0; i < ds_list_size(_gateList); i++)
		{
			var _gate = ds_list_find_value(_gateList, i);
			var _newGate = instance_create_layer(_gate.x, _gate.y, "doors", gate_ob);
			_newGate.sprite_index = gate_SP;
		}
		
		// spawn enemies
	if (!spawned0) {
	    for (var i = 0; i < zombo0Num; i++) 
	    {
	        var _randomX = irandom_range(x + 20, roomW - 20);
	        var _randomY = irandom_range(y + 20, roomH - 20);
			var _zomboCreated = instance_create_layer(_randomX, _randomY, "enemies", zombo0_ob);
	    }
	    spawned0 = true;
	}

	if (!spawned1) {
	    for (var i = 0; i < zombo1Num; i++) 
	    {
	        var _randomX = irandom_range(x + 20, roomW - 20);
	        var _randomY = irandom_range(y + 20, roomH - 20);
			var _zomboCreated = instance_create_layer(_randomX, _randomY, "enemies", zombo1_ob);
	    }
	    spawned1 = true;
	}

	if (!spawned2) {
	    for (var i = 0; i < zombo2Num; i++) 
	    {
	        var _randomX = irandom_range(x + 20, roomW - 20);
	        var _randomY = irandom_range(y + 20, roomH - 20);
			var _zomboCreated = instance_create_layer(_randomX, _randomY, "enemies", zombo2_ob);
	    }
	    spawned2 = true;
	}

	if (!spawned3) {
	    for (var i = 0; i < zombo3Num; i++) 
	    {
	        var _randomX = irandom_range(x + 20, roomW - 20);
	        var _randomY = irandom_range(y + 20, roomH - 20);
			var _zomboCreated = instance_create_layer(_randomX, _randomY, "enemies", zombo3_ob);
	    }
	    spawned3 = true;
	}

		var _EinRoom = collision_rectangle(x + 10, y + 10, x + roomW - 10, y + roomH - 10, enemyParent_ob, false, true);
		if (!_EinRoom)
		{
			instance_create_layer(noGo_ob.x, noGo_ob.y, "bullets", warp2_ob);
			instance_destroy(gate_ob);
			instance_destroy(self);
		}
		
	}
	ds_list_destroy(_gateList);
} 













