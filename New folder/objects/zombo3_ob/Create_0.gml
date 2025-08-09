
event_inherited();

spd = 0;
chaseSpd = 0.25;
dir = 0;
xspd = 0;
yspd = 0;
maxDist = 200;
damage = 5;
hp = 20;
hpMax = 20;

sprite[0] = zombo3E_sp;
sprite[1] = zombo3N_sp;
sprite[2] = zombo3W_sp;
sprite[3] = zombo3S_sp;

face = 3;

state = 0;


cooldownTime = 2*60;
shootTimer = irandom(cooldownTime);
windupTime = 60;
recoverTime = 45;
bulletInst = noone;

bulletXoff = -3;
bulletYoff = -17;