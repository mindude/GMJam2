/// @description Enable path creation
global.pathEnabled = true;
cursor_x = (mouse_x div 50) * 50;
cursor_y = (mouse_y div 50) * 50;
last_path = ds_list_find_value(obj_character.tempSteps, 0);
obj_character.has_key = false;