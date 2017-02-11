/// @description Delete path
if(!mouse_check_button(mb_left)){
	inst = ds_list_find_value(obj_character.steps, ds_list_size(obj_character.steps) - 1);
	while(inst.x != x || inst.y != y)
	{
		instance_destroy(inst);
		ds_list_delete(obj_character.steps, ds_list_size(obj_character.steps)-1);
		if(ds_list_size(obj_character.steps) == 0)
		{
			inst = instance_position(obj_character.x, obj_character.y, obj_chosenPath);
			break;
		}
		inst = ds_list_find_value(obj_character.steps, ds_list_size(obj_character.steps) - 1);
	}
	with(inst)
	{
		instance_change(obj_path, false);
	}
	ds_list_clear(obj_character.tempSteps);
	ds_list_add(obj_character.tempSteps, inst);
	obj_leadPath.x = inst.x;
	obj_leadPath.y = inst.y;
}