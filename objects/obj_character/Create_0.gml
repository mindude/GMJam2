/// @description Creating variables
global.pathEnabled = false;
orders = []; //Sequence of commands
steps = ds_list_create(); //Sequence of steps
tempSteps = ds_list_create(); //Sequence of steps
has_key = false;
chosen_key = false;
ds_list_add(tempSteps, instance_position(obj_character.x, obj_character.y, obj_path));
moving = false;