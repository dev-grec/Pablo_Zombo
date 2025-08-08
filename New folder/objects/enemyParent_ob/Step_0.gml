if place_meeting(x, y, damageEnemy_ob) {
	
	var _inst = instance_place(x, y, damageEnemy_ob);
	
	hp -= _inst.damage;
	
	_inst.destroy = true;
	
}


if (hp <= 0)
{
	instance_destroy();
}