with(obj_character){
	/*show_debug_message("Character X: " + string(x));
	show_debug_message("Next X: " + string(ds_list_find_value(steps, index).x))
	show_debug_message("Character Y: " + string(y));
	show_debug_message("Next Y: " + string(ds_list_find_value(steps, index).y))
	show_debug_message("Index: " + string(index))*/
	if(ds_list_find_value(orders, indexOrder) == "step")
	{
		if(x > ds_list_find_value(steps, indexStep).x)
		{
			hspeed = -5;
			vspeed = 0;
		}
		else if(x < ds_list_find_value(steps, indexStep).x)
		{
			hspeed = 5;
			vspeed = 0;
		}
		else if(y > ds_list_find_value(steps, indexStep).y)
		{
			vspeed = -5;
			hspeed = 0;
		}
		else if(y < ds_list_find_value(steps, indexStep).y)
		{
			vspeed = 5;
			hspeed = 0;
		}
		indexStep += 1;
	}
	else if(ds_list_find_value(orders, indexOrder) == "wait")
	{
		vspeed = 0;
		hspeed = 0;
	}
}