// Player casts fire spell

//Create fireball object
instance_create_depth(x + 10, y - 10, depth, obj_fireball);

//Deplete player's MP
p_magic -= 2;