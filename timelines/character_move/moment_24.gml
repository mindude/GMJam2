with(obj_character){
	index += 1;
	if(position_meeting(x, y, obj_key))
	{
		obj_key.image_alpha = 0;
	}
	if(index != ds_list_size(steps))
	{
		timeline_position = 0;
	}
}