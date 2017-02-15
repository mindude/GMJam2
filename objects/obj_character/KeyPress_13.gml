/// @description Walking path
if(!moving && !mouse_check_button(mb_left)){
	camera_set_view_target(view_camera[0], obj_character);
	indexOrder = 0;
	indexStep = 0;
	timeline_index = character_move;
	timeline_position = 0;
	timeline_loop = false;
	timeline_running = true;
	moving = true;
}