/// @description Creating a path
if(global.pathEnabled){
	if(!position_meeting(mouse_x, mouse_y, path)){
		var new_inst = instance_create_layer((mouse_x div 50) * 50, (mouse_y div 50) * 50, "Path", path);
	}
}