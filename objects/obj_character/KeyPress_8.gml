/// @description Reset places
// You can write your code in this editor
timeline_running = false;
hspeed = 0;
vspeed = 0;
moving = false;
x = obj_characterStart.x;
y = obj_characterStart.y;
obj_key.image_alpha = 1;
obj_door.image_alpha = 1;
camera_set_view_target(view_camera[0], noone);
camera_set_view_speed(view_camera[0], 5, 5);