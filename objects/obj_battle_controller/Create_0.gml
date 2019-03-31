/// @description Insert description here
// You can write your code in this editor
globalvar inCombat, enemyID, battleMenuSelection, selectingEnemy, enemySelection, playerAttacking, playerMAttacking, ranAway, playerTurn;
inCombat = false;
enemyID = -1;
battleMenuSelection = 0;
selectingEnemy = false;
enemySelection = -1;
playerAttacking = false;
playerMAttacking = false;
ranAway = false;
playerTurn = true;

globalvar enemyAttacking;
enemyAttacking = false;

//Battle Menu
battleMenu[0] = spr_battle_attack_icon;
battleMenu[1] = spr_battle_fire_spell_icon;
battleMenu[2] = spr_battle_run_icon;