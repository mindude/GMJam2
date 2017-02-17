/// @description Insert description here
if(x-25 == obj_Finish.x && y-25 == obj_Finish.y){ show_debug_message("Finished!")
	audio_stop_sound(obj_Music.s);
	instance_create_layer(0,0,"HUD",object_32)
	
}

if(moving)
{
	if(camera_get_view_speed_y(view_camera[0]) <= 2)
	{
		camera_set_view_speed(view_camera[0], 0, 2);
	}
	else
	{
		camera_set_view_speed(view_camera[0], 0, 
			abs(camera_get_view_y(view_camera[0]) - camera_get_view_height(view_camera[0])) / 10);
	}
}