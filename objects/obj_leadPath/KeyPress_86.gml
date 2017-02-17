/// @description Smoke Bomb
if(!global.pathEnabled && !obj_character.moving)
{
	ds_list_add(obj_character.orders, "smoke_bomb");
}