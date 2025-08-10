
event_inherited();

spd = 0;
chaseSpd = 0.1;
dir = 0;
xspd = 0;
yspd = 0;
maxDist = 150;
damage = 5;
hp = 750;
hpMax = 750;

sprite[0] = pabloE_sp;
sprite[1] = pabloN_sp;
sprite[2] = pabloW_sp;
sprite[3] = pabloS_sp;

face = 3;

weapon = gun1_ob;
weaponOffsetDist = 2;
centerY = -5;
bullets = 0;
dirFix = true;

state = 0;

bulletCool = 30;
bulletCoolTimer = 0;


cooldownTime = 4*60;
shootTimer = irandom(cooldownTime);
windupTime = 2;
recoverTime = 60;
bulletInst = noone;
bulletInst2 = noone;
bulletInst3 = noone;

bulletXoff = 0;
bulletYoff = -5;