/// @description Insert description here
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