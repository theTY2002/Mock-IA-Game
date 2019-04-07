//Deal damage when enemy is hit
with (enemyID)
{
	var damage = (p_mAttack * random_range(1, 1.125) - e_mDefense)
	e_health -= damage;
}
instance_destroy(self);