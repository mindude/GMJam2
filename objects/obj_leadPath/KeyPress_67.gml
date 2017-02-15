/// @description Hypnosis
if(!global.pathEnabled && !obj_character.moving)
{
	ds_list_add(obj_character.orders, "hypnosis");
}