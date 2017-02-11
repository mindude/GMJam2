with(obj_character){
	indexOrder += 1;
	if(position_meeting(x, y, obj_key))
	{
		obj_key.image_alpha = 0;
	}
	if(indexOrder != ds_list_size(orders))
	{
		timeline_position = 0;
	}
}