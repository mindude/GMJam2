/// @description End path creation
if(global.pathEnabled && !obj_character.moving)
{
	global.pathEnabled = false;
	for(i = 1; i < ds_list_size(obj_character.tempSteps); i++)
	{
		ds_list_add(obj_character.steps, ds_list_find_value(obj_character.tempSteps, i));
		ds_list_add(obj_character.orders, "step");
	}
	ds_list_clear(obj_character.tempSteps);
	ds_list_add(obj_character.tempSteps, last_path);
	with(obj_path)
	{
		if(instance_number(obj_path) != 1)
		{
			instance_change(obj_chosenPath, false);
		}
	}
	with(last_path)
	{
		instance_change(obj_path, false);
	}
	if(sprite_index == spr_invalidPath)
	{
		x = ds_list_find_value(obj_character.steps, ds_list_size(obj_character.steps)-1).x;
		y = ds_list_find_value(obj_character.steps, ds_list_size(obj_character.steps)-1).y;
	}
	sprite_index = spr_leadPath;
	if(obj_character.has_key)
	{
		obj_character.chosen_key = true;
	}
}
