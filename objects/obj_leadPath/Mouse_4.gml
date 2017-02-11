/// @description Enable path creation
global.pathEnabled = true;
cursor_x = (mouse_x div 50) * 50;
cursor_y = (mouse_y div 50) * 50;
last_path = ds_list_find_value(obj_character.tempSteps, 0);
obj_character.has_key = false;
if(click)
{
	ds_list_add(obj_character.orders, "wait");
	//show_debug_message("did it");
}
click = true;
//show_debug_message("on");
alarm_set(0, 10);