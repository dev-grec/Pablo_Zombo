///movement
xspd = 0;
yspd = 0;
moveDir = 0;
movespd = 1;

//aiming
centerYoffset = -5;
centerY = y + centerYoffset;
aimDir = 0;
weaponOffsetDist = 2;

///sprite
sprite[0] = playerE_sp;
sprite[1] = playerN_sp;
sprite[2] = playerW_sp;
sprite[3] = playerS_sp;

face = 3;

///weapon
shootTimer = 0;
shootCooldown = 18;

bulletObject = bullet1_ob;
weaponLength = sprite_get_bbox_right(gun1_sp) - sprite_get_xoffset(gun1_sp);