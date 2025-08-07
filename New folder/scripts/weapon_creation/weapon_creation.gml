
function create_weapon(_sprite, _weaponlength, _bulletOb, _cooldown) constructor {

sprite = _sprite;
length = _weaponlength;
bulletOb = _bulletOb;
cooldown = _cooldown; 




}



///the weapons ///

global.weaponList = {
	
	gun1 : new create_weapon(
	gun1_sp,
	sprite_get_bbox_right(gun1_sp) - sprite_get_xoffset(gun1_sp),
	bullet1_ob,
	12
	),
	
}

