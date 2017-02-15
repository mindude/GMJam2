/// @description Creating a path
if(global.pathEnabled && !obj_character.moving){
	if(cursor_x != (mouse_x div 50) * 50 || cursor_y != (mouse_y div 50) * 50)
	{
		if(!position_meeting(mouse_x, mouse_y, obj_path))
		{
			x = (mouse_x div 50) * 50;
			y = (mouse_y div 50) * 50;
			if(!(position_meeting(mouse_x - 50, mouse_y, last_path) || 
				position_meeting(mouse_x + 50, mouse_y, last_path) || 
				position_meeting(mouse_x, mouse_y + 50, last_path) || 
				position_meeting(mouse_x, mouse_y - 50, last_path)) || 
				position_meeting(mouse_x, mouse_y, obj_obstacle) || 
				(position_meeting(mouse_x, mouse_y, obj_door) && !(obj_character.has_key || obj_character.chosen_key)))
			{
				sprite_index = spr_invalidPath;
			}
			if(sprite_index != spr_invalidPath)
			{
				//show_debug_message(ds_list_find_index(obj_character.tempSteps, instance_position(mouse_x, mouse_y, 
				//obj_path)));
				last_path = instance_create_layer((mouse_x div 50) * 50, (mouse_y div 50) * 50, "Path", obj_path)
				ds_list_add(obj_character.tempSteps, last_path);
				if(position_meeting(mouse_x, mouse_y, obj_key) && !obj_character.chosen_key)
				{
					obj_character.has_key = true;
				}
			}
		}
		else
		{
			sprite_index = spr_leadPath;
			inst = instance_position(mouse_x, mouse_y, obj_path)
			if(!ds_list_empty(obj_character.tempSteps))
			{
				while(ds_list_find_value(obj_character.tempSteps, 
					ds_list_size(obj_character.tempSteps)-1) != inst)
				{
					path = ds_list_find_value(obj_character.tempSteps, 
						ds_list_size(obj_character.tempSteps)-1);
					if(position_meeting(path.x, path.y, obj_key) && !obj_character.chosen_key)
					{
						obj_character.has_key = false;
					}
					instance_destroy(path);
					ds_list_delete(obj_character.tempSteps, ds_list_size(obj_character.tempSteps)-1);
				}
				last_path = ds_list_find_value(obj_character.tempSteps, 
					ds_list_size(obj_character.tempSteps)-1)
			}
		}
		x = (mouse_x div 50) * 50;
		y = (mouse_y div 50) * 50;
		cursor_x = x;
		cursor_y = y;
	}
}