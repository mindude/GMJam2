/// @description Creating a path
if(global.pathEnabled){
	if(!position_meeting(mouse_x, mouse_y, obj_path) || 
	(position_meeting(mouse_x, mouse_y, obj_path) && 
	ds_list_find_index(tempSteps, instance_position(mouse_x, mouse_y, obj_path)) == -1)){
		with(obj_leadPath){
			x = (mouse_x div 50) * 50;
			y = (mouse_y div 50) * 50;
		}
		if(!(position_meeting(mouse_x - 50, mouse_y, obj_path) || 
		position_meeting(mouse_x + 50, mouse_y, obj_path) || 
		position_meeting(mouse_x, mouse_y + 50, obj_path) || 
		position_meeting(mouse_x, mouse_y - 50, obj_path))){
			obj_leadPath.sprite_index = spr_invalidPath;
		}
		if(obj_leadPath.sprite_index != spr_invalidPath){
			ds_list_add(tempSteps, 
			instance_create_layer((mouse_x div 50) * 50, (mouse_y div 50) * 50, "Path", obj_path));
		}
	}
	else{
		obj_leadPath.sprite_index = spr_leadPath;
		inst = instance_position(mouse_x, mouse_y, obj_path)
		if(!ds_list_empty(tempSteps)){
			while(ds_list_find_value(tempSteps, ds_list_size(tempSteps)-1) != inst){
				instance_destroy(ds_list_find_value(tempSteps, ds_list_size(tempSteps)-1));
				ds_list_delete(tempSteps, ds_list_size(tempSteps)-1);
			}
		}
	}
	with(obj_leadPath){
		x = (mouse_x div 50) * 50;
		y = (mouse_y div 50) * 50;
	}
}