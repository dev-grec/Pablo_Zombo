
function draw_weapon1()
{
var xOffset = lengthdir_x(weaponOffsetDist, aimDir);
var yOffset = lengthdir_y(weaponOffsetDist, aimDir);

var _weaponYscl = 1;

	if (aimDir > 90 && aimDir < 270)
	{
		_weaponYscl = -1;
	}


draw_sprite_ext(weapon.sprite, 0, x + xOffset, centerY + yOffset, 1, _weaponYscl, aimDir, c_white, 1);
}

function get_damaged_create(_hp = 10, _iframes = false)
{
	hpMax = _hp;
	hp = _hp;
	
	if _iframes == true
	{
		iframeTimer = 0;
		iframeNumber = 90;
	}
	
	if _iframes == false
	{
		damageList = ds_list_create();
	}
}

function get_damaged_cleanup()
{
	ds_list_destroy(damageList);
}

function get_damage(_damageOb, _iframes = false) 
{
	
	if _iframes == true && iframeTimer > 0
	{
		iframeTimer--;
		
		if iframeTimer mod 5 == 0
		{
			if image_alpha == 1
			{
				image_alpha = 0;
			} else {
				image_alpha = 1;
			}
		}
		
		hp = clamp(hp, 0, hpMax);
		exit;
	}
	
if _iframes == true
{
image_alpha = 1; 
}
	
	
	 ///receive damage
		if place_meeting(x, y, _damageOb) {
	
	
		var _instList = ds_list_create();
		instance_place_list(x, y, _damageOb, _instList, false);
		var _listSize = ds_list_size(_instList);
		var _hitConfirm = false;
		
		for (var i = 0; i < _listSize; i++)
		{
			var _inst = ds_list_find_value(_instList, i);
		
		
			if _iframes == true || ds_list_find_index(damageList, _inst) == -1
			{
				if _iframes == false 
				{
					ds_list_add(damageList, _inst);
				}
			hp -= _inst.damage;
			_hitConfirm = true;
			_inst.hitConfirm = true; 
			}
		}
		
		
		if _iframes == true && _hitConfirm == true
		{
			iframeTimer = iframeNumber;
		}
		
		ds_list_destroy(_instList);
	
	}
			
	 ///clear damage list of instances not being touched anymore
		if _iframes == false
{
	var _damageListSize = ds_list_size(damageList);
	for (var i = 0; i < _damageListSize; i++)
	{
		var _inst = ds_list_find_value(damageList, i);
		if !instance_exists(_inst) || !place_meeting(x, y, _inst)
		{
			ds_list_delete(damageList, i);
			i--;
			_damageListSize--;
		}
	  }

	}
	
	hp = clamp(hp, 0, hpMax);
}