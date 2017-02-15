/// @description Curtain
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