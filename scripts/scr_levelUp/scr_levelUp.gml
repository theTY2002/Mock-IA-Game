scr_fadeout(rm_levelUp, c_white, 0.05, obj_player.x, obj_player.y);

//instance_create_depth(x, y, depth, obj_levelUp);

levelBefore = p_level;
attackBefore = p_attack;
mAttackBefore = p_mAttack;
defenseBefore = p_defense;
mDefenseBefore = p_mDefense;
healthBefore = p_health;
magicBefore = p_magic;
speedBefore = p_speed;
dodgeBefore = p_dodge;
luckBefore = p_luck;

p_exp = p_exp - p_maxExp;
p_level ++;
p_maxExp *= 1.1;
p_attack *= growthRateFast;
p_mAttack *= growthRateSlow;
p_defense *= growthRateMedium;
p_mDefense *= growthRateMedium;
p_health *= growthRateFast;
p_magic *= growthRateSlow;
p_speed *= growthRateMedium;
p_dodge *= growthRateSlow;
p_luck *= growthRateMedium;

levelAfter = p_level;
attackAfter = p_attack;
mAttackAfter = p_mAttack;
defenseAfter = p_defense;
mDefenseAfter = p_mDefense;
healthAfter = p_health;
magicAfter = p_magic;
speedAfter = p_speed;
dodgeAfter = p_dodge;
luckAfter = p_luck;