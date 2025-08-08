
function create_weapon(_sprite = gun1_sp, _weaponlength = 0, _bulletOb = gun1_ob, _cooldown = 1, _bulletNum = 1, _spread = 0) constructor {

sprite = _sprite;
length = _weaponlength;
bulletOb = _bulletOb;
cooldown = _cooldown; 
bulletNum = _bulletNum;
spread = _spread;



}

/// invintory ///

global.playerWeapons = array_create(0);


///the weapons ///

global.weaponList = {
	
	gun1 : new create_weapon(
	gun1_sp,
	sprite_get_bbox_right(gun1_sp) - sprite_get_xoffset(gun1_sp),
	bullet1_ob,
	12
	),
	
}

