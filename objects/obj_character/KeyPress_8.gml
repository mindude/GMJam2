/// @description Reset places
if(moving)
{
	timeline_running = false;
	hspeed = 0;
	vspeed = 0;
	moving = false;
	x = obj_characterStart.x + 25;
	y = obj_characterStart.y + 25;
	obj_key.image_alpha = 1;
	obj_door.image_alpha = 1;
	camera_set_view_target(view_camera[0], noone);
	camera_set_view_speed(view_camera[0], 5, 5);
	sprite_index = spr_Clymene_WalkingDown;
	image_speed = 0;
	with(obj_dollarBill)
	{
		instance_destroy();
	}
}
