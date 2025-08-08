
/// keys ///
var up_key = keyboard_check(ord("W")) ||  keyboard_check(vk_up);
var down_key = keyboard_check(ord("S")) || keyboard_check(vk_down);
var left_key = keyboard_check(ord("A")) ||  keyboard_check(vk_left);
var right_key = keyboard_check(ord("D")) ||  keyboard_check(vk_right);
var left_click = mouse_check_button(mb_left);
var swapKeyPressed = mouse_check_button_pressed(mb_right);


var _horizKey = right_key - left_key;
var _vertKey = down_key - up_key;
moveDir = point_direction (0,0,_horizKey,_vertKey);
/// get the x and y speeds ///
var _spd = 0;
var _inputLevel = point_distance(0, 0, _horizKey, _vertKey);
_inputLevel = clamp(_inputLevel, 0, 1);
_spd = movespd * _inputLevel;
xspd = lengthdir_x (_spd, moveDir);
yspd = lengthdir_y (_spd, moveDir);



/// cutscenes ///
if instance_exists(pauser_ob)
{
xspd = 0;
yspd = 0;
}


/// collisions ///
if place_meeting(x + xspd, y, wall_ob)
{
	xspd = 0;
}
if place_meeting(x, y + yspd, wall_ob)
{
	yspd = 0;
}

/// move the player ///
x += xspd;
y += yspd;

/// depth ///
depth = -bbox_bottom;


/// aim ///
centerY = y + centerYoffset;
aimDir = point_direction(x, centerY, mouse_x, mouse_y);




/// sprite /// 

face = round(aimDir / 90);
if (face == 4) { face = 0; }

if (xspd == 0 && yspd == 0) {
	image_index = 0;
}

mask_index = sprite[3];
sprite_index = sprite[face];



/// weapon  ///
var _playerWeapons = global.playerWeapons;




if (swapKeyPressed)
{
	selectedWeapon++;
	
	if (selectedWeapon >= array_length(_playerWeapons))
	{
		selectedWeapon = 0;
	}
	weapon = _playerWeapons[selectedWeapon];
}




if (shootTimer > 0)
{
shootTimer --;
}

if (left_click && shootTimer <= 0)
{
	
	shootTimer = weapon.cooldown;
	
	var _xOffset = lengthdir_x(weapon.length + weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weapon.length + weaponOffsetDist, aimDir);

	var _spread = weapon.spread;
	var _spreadDiv = _spread / max(weapon.bulletNum-1, 1);

	for (var i = 0; i < weapon.bulletNum; i++){
		
		var _bulletInst = instance_create_layer(x + _xOffset, centerY + _yOffset, "bullets", weapon.bulletOb);
	
		with (_bulletInst)
		{
			dir = other.aimDir - _spread / 2 + _spreadDiv*i;
			if (dirFix = true)
			{
				image_angle = dir;
			}
		}
		
	}


}









