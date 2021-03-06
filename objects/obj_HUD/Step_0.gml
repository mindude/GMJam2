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
			if (position_meeting(obj_leadPath.x - 50, obj_leadPath.y, obj_obstacle) || 
				position_meeting(obj_leadPath.x + 50, obj_leadPath.y, obj_obstacle) || 
				position_meeting(obj_leadPath.x, obj_leadPath.y + 50, obj_obstacle) || 
				position_meeting(obj_leadPath.x, obj_leadPath.y - 50, obj_obstacle))
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
if(obj_character.moving)
{
	index_play = 2;
	if(device_mouse_x_to_gui(0) >= 1170 && device_mouse_x_to_gui(0) <= 1220 && 
	device_mouse_y_to_gui(0) >= 660 && device_mouse_y_to_gui(0) <= 710)
	{
		if(mouse_check_button_pressed(mb_left))
		{
			index_replay = 1;
			with(obj_character)
			{
				timeline_running = false;
				hspeed = 0;
				vspeed = 0;
				moving = false;
				x = obj_characterStart.x + 25;
				y = obj_characterStart.y + 25;
				sprite_index = spr_Clymene_WalkingDown;
				image_speed = 0;
			}
			spotted = false;
			obj_key.image_alpha = 1;
			obj_door.image_alpha = 1;
			obj_GrayDoorKeyhole.image_alpha = 1;
			obj_GrayDoorLeft.image_alpha = 1;
			obj_GrayDoorRight.image_alpha = 1;
			camera_set_view_target(view_camera[0], noone);
			camera_set_view_speed(view_camera[0], 5, 5);
			with(obj_dollarBill)
			{
				instance_destroy();
			}
			with(obj_Bomb)
			{
				instance_destroy();
			}
			with(obj_CloudedTile)
			{
				instance_destroy();
			}
			obj_leadPath.visible = true;
			obj_path.visible = true;
			obj_officerPath.visible = true;
			obj_chosenPath.visible = true;
			index_play = 0;
			with(obj_officer)
			{
				sleep_steps = 100
				started = false;
				is_Walking = false;
				is_Distracted = false;
				x = starting_point_x;
				y = starting_point_y;
				face_Direction = starting_face_Direction;
				image_speed = 0
			}
		}
		else if(!mouse_check_button(mb_left)){
			index_replay = 0;
		}
	}
}
else
{
	index_replay = 2;
	if(ds_list_size(obj_character.steps) == 0)
	{
		index_play = 2;
	}
	else if(device_mouse_x_to_gui(0) >= 1100 && device_mouse_x_to_gui(0) <= 1150 && 
		device_mouse_y_to_gui(0) >= 660 && device_mouse_y_to_gui(0) <= 710)
	{
		if(mouse_check_button_pressed(mb_left))
		{
			index_play = 1;
			camera_set_view_target(view_camera[0], obj_character);
			with(obj_character)
			{
				indexOrder = 0;
				indexStep = 0;
				timeline_index = character_move;
				timeline_position = 0;
				timeline_loop = false;
				timeline_running = true;
				moving = true;
			}
			obj_leadPath.visible = false;
			obj_path.visible = false;
			obj_officerPath.visible = false;
			obj_chosenPath.visible = false;
			index_replay = 0;
			with(obj_officer)
			{
				started = true;
				is_Walking = true;
			}
		}
		else if(!mouse_check_button(mb_left)){
			index_play = 0;
		}
	}
	else
	{
		index_play = 1;
	}
}