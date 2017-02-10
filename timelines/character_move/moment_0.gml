with(obj_character){
	/*show_debug_message("Character X: " + string(x));
	show_debug_message("Next X: " + string(ds_list_find_value(steps, index).x))
	show_debug_message("Character Y: " + string(y));
	show_debug_message("Next Y: " + string(ds_list_find_value(steps, index).y))
	show_debug_message("Index: " + string(index))*/
	if(x > ds_list_find_value(steps, index).x){
		hspeed = -2;
		vspeed = 0;
	}
	else if(x < ds_list_find_value(steps, index).x){
		hspeed = 2;
		vspeed = 0;
	}
	else if(y > ds_list_find_value(steps, index).y){
		vspeed = -2;
		hspeed = 0;
	}
	else if(y < ds_list_find_value(steps, index).y){
		vspeed = 2;
		hspeed = 0;
	}
}