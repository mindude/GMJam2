/// @description Disable path creation
global.pathEnabled = false;
for(i = 0; i < ds_list_size(obj_character.tempSteps); i++){
	ds_list_add(obj_character.steps, ds_list_find_value(obj_character.tempSteps, i));
}
ds_list_clear(obj_character.tempSteps);
ds_list_add(obj_character.tempSteps, ds_list_find_value(obj_character.steps, ds_list_size(obj_character.steps)-1));
with(obj_path){
	image_alpha = 0.5;
}
if(sprite_index == spr_invalidPath){
	x = ds_list_find_value(obj_character.steps, ds_list_size(obj_character.steps)-1).x;
	y = ds_list_find_value(obj_character.steps, ds_list_size(obj_character.steps)-1).y;
}
sprite_index = spr_leadPath;