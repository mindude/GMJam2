/// @description Actions on HUD
if(device_mouse_x_to_gui(0) >= 700 && device_mouse_x_to_gui(0) <= 750 && 
	device_mouse_y_to_gui(0) >= 25 && device_mouse_y_to_gui(0) <= 75 && 
	camera_get_view_y(view_camera[0]) > 0 && !obj_character.moving)
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 
		camera_get_view_y(view_camera[0]) - 10);
}
else if(device_mouse_x_to_gui(0) >= 700 && device_mouse_x_to_gui(0) <= 750 && 
	device_mouse_y_to_gui(0) >= 825 && device_mouse_y_to_gui(0) <= 875 &&
	camera_get_view_y(view_camera[0]) < 950 && !obj_character.moving)
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 
		camera_get_view_y(view_camera[0]) + 10);
}
if(device_mouse_x_to_gui(0) >= 1227 && device_mouse_x_to_gui(0) <= 1298 && 
	device_mouse_y_to_gui(0) >= 676 && device_mouse_y_to_gui(0) <= 744)
{
	if(mouse_check_button_pressed(mb_left))
	{
		index_bomb = 2;
		if(!global.pathEnabled && !obj_character.moving)
		{
			ds_list_add(obj_character.orders, "smoke_bomb");
		}
	}
	else if(!mouse_check_button(mb_left)){
		index_bomb = 1;
	}
}
else
{
	index_bomb = 0;
}
if(device_mouse_x_to_gui(0) >= 1328 && device_mouse_x_to_gui(0) <= 1399 && 
	device_mouse_y_to_gui(0) >= 676 && device_mouse_y_to_gui(0) <= 744)
{
	if(mouse_check_button_pressed(mb_left))
	{
		index_curtain = 2;
		if(!global.pathEnabled && !obj_character.moving)
		{
			if (position_meeting(x - 50, y, obj_obstacle) || 
				position_meeting(x + 50, y, obj_obstacle) || 
				position_meeting(x, y + 50, obj_obstacle) || 
				position_meeting(x, y - 50, obj_obstacle))
			{
				ds_list_add(obj_character.orders, "curtain_on");
				ds_list_add(obj_character.orders, "curtain");
				ds_list_add(obj_character.orders, "curtain");
				ds_list_add(obj_character.orders, "curtain");
				ds_list_add(obj_character.orders, "curtain_off");
			}
		}
	}
	else if(!mouse_check_button(mb_left)){
		index_curtain = 1;
	}
}
else
{
	index_curtain = 0;
}
if(device_mouse_x_to_gui(0) >= 1227 && device_mouse_x_to_gui(0) <= 1298 && 
	device_mouse_y_to_gui(0) >= 779 && device_mouse_y_to_gui(0) <= 847)
{
	if(mouse_check_button_pressed(mb_left))
	{
		index_dollar = 2;
		if(!global.pathEnabled && !obj_character.moving)
		{
			ds_list_add(obj_character.orders, "dollar");
		}
	}
	else if(!mouse_check_button(mb_left)){
		index_dollar = 1;
	}
}
else
{
	index_dollar = 0;
}
if(device_mouse_x_to_gui(0) >= 1328 && device_mouse_x_to_gui(0) <= 1399 && 
	device_mouse_y_to_gui(0) >= 779 && device_mouse_y_to_gui(0) <= 847)
{
	if(mouse_check_button_pressed(mb_left))
	{
		index_hypnosis = 2;
		if(!global.pathEnabled && !obj_character.moving)
		{
			ds_list_add(obj_character.orders, "hypnosis");
		}
	}
	else if(!mouse_check_button(mb_left)){
		index_hypnosis = 1;
	}
}
else
{
	index_hypnosis = 0;
}