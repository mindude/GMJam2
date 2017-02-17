/// @description Creating variables
globalvar spotted;
globalvar win;
win = false;
spotted = false;
image_speed = 0;
global.pathEnabled = false;
orders = ds_list_create(); //Sequence of commands
steps = ds_list_create(); //Sequence of steps
tempSteps = ds_list_create(); //Sequence of steps
has_key = false;
chosen_key = false;
ds_list_add(tempSteps, instance_position(obj_character.x - 25, obj_character.y - 25, obj_path));
moving = false;
image_speed = 0;