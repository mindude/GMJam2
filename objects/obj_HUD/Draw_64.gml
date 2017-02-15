/// @description Draw UI
if(camera_get_view_y(view_camera[0]) <= 0)
{
	draw_sprite_ext(spr_ArrowUp, 0, 700, 25, 1, 1, 0, c_white, 0.5);
}
else
{
	draw_sprite(spr_ArrowUp, 0, 700, 25);
}
if(camera_get_view_y(view_camera[0]) >= 950)
{
	draw_sprite_ext(spr_ArrowDown, 0, 700, 825, 1, 1, 0, c_white, 0.5);
}
else
{
	draw_sprite(spr_ArrowDown, 0, 700, 825);
}