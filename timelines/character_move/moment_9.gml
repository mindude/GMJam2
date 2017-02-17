with(obj_character){
	if(ds_list_find_value(orders, indexOrder) == "curtain_on")
	{
		image_speed = 0;
	}
	else if(ds_list_find_value(orders, indexOrder) == "curtain_off")
	{
		sprite_index = spr_Clymene_WalkingDown;
	}
	indexOrder += 1;
	if(position_meeting(x - 25, y - 25, obj_key))
	{
		obj_key.image_alpha = 0;
	}
	if(position_meeting(x + 25, y - 25, obj_door) || position_meeting(x - 75, y - 25, obj_door) || 
		position_meeting(x - 25, y + 25, obj_door) || position_meeting(x - 25, y - 75, obj_door))
	{
		obj_door.image_alpha = 0;
		obj_GrayDoorKeyhole.image_alpha = 0;
		obj_GrayDoorLeft.image_alpha = 0;
		obj_GrayDoorRight.image_alpha = 0;
	}
	if(indexOrder != ds_list_size(orders))
	{
		timeline_position = 0;
	}
}