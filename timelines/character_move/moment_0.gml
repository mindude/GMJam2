with(obj_character){
	/*show_debug_message("Character X: " + string(x));
	show_debug_message("Next X: " + string(ds_list_find_value(steps, index).x))
	show_debug_message("Character Y: " + string(y));
	show_debug_message("Next Y: " + string(ds_list_find_value(steps, index).y))
	show_debug_message("Index: " + string(index))*/
	if(ds_list_find_value(orders, indexOrder) == "step")
	{
		if(x - 25 > ds_list_find_value(steps, indexStep).x)
		{
			sprite_index = spr_Clymene_WalkingSide;
			image_speed = 2;
			image_xscale = -1;
			hspeed = -5;
			vspeed = 0;
		}
		else if(x - 25 < ds_list_find_value(steps, indexStep).x)
		{
			sprite_index = spr_Clymene_WalkingSide;
			image_speed = 2;
			image_xscale = 1;
			hspeed = 5;
			vspeed = 0;
		}
		else if(y - 25 > ds_list_find_value(steps, indexStep).y)
		{
			sprite_index = spr_Clymene_WalkingUp;
			image_speed = 2;
			image_xscale = 1;
			vspeed = -5;
			hspeed = 0;
		}
		else if(y - 25 < ds_list_find_value(steps, indexStep).y)
		{
			sprite_index = spr_Clymene_WalkingDown;
			image_speed = 2;
			image_xscale = -1;
			vspeed = 5;
			hspeed = 0;
		}
		indexStep += 1;
	}
	else if(ds_list_find_value(orders, indexOrder) == "wait")
	{
		image_speed = 0;
		vspeed = 0;
		hspeed = 0;
	}
	else if(ds_list_find_value(orders, indexOrder) == "curtain_on")
	{
		vspeed = 0;
		hspeed = 0;
		sprite_index = spr_Curtain;
	}
	else if(ds_list_find_value(orders, indexOrder) == "curtain_off")
	{
		vspeed = 0;
		hspeed = 0;
		sprite_index = spr_Clymene_WalkingDown;
	}
	else if(ds_list_find_value(orders, indexOrder) == "dollar")
	{
		image_speed = 0;
		vspeed = 0;
		hspeed = 0;
		instance_create_layer(x - 25, y - 25, "Dollars", obj_dollarBill)
	}
	else if(ds_list_find_value(orders, indexOrder) == "hypnosis")
	{
		if(place_meeting(x - 50, y, obj_officer))
		{
			sprite_index = spr_Clymene_HypnosisSide;
			image_xscale = -1;
		}
		else if(place_meeting(x + 50, y, obj_officer))
		{
			sprite_index = spr_Clymene_HypnosisSide;
			image_xscale = 1;
		}
		else if(place_meeting(x, y - -50, obj_officer))
		{
			sprite_index = spr_Clymene_HypnosisUp;
			image_xscale = 1;
		}
		else if(place_meeting(x, y + 50, obj_officer))
		{
			sprite_index = spr_Clymene_HypnosisDown;
			image_xscale = 1;
		}
		else
		{
			sprite_index = spr_Clymene_HypnosisDown;
			image_xscale = 1;
		}
		image_speed = 1;
		vspeed = 0;
		hspeed = 0;
	}
}