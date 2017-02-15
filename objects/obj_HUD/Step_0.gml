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
