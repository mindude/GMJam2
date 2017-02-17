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
draw_sprite_ext(spr_VideoTape, 0, 1050, 650, 1.5, 1.5, 0, c_white, 1);
draw_sprite_ext(spr_Circle, index_bomb, 1227, 676, 1.5, 1.5, 0, c_white, 1);
draw_sprite_ext(spr_Circle, index_curtain, 1328, 676, 1.5, 1.5, 0, c_white, 1);
draw_sprite_ext(spr_Circle, index_dollar, 1227, 779, 1.5, 1.5, 0, c_white, 1);
draw_sprite_ext(spr_Circle, index_hypnosis, 1328, 779, 1.5, 1.5, 0, c_white, 1);
draw_sprite(spr_SmokeBomb, 0, 1237, 685);
draw_sprite(spr_dollar_Bill, 0, 1338, 685);
draw_sprite(spr_dollar_Bill, 0, 1237, 788);
draw_sprite(spr_dollar_Bill, 0, 1338, 788);