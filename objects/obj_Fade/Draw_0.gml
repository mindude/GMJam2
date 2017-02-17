/// @description Insert description here
alpha = clamp(alpha + (fade * 0.010), 0, 1);
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, 1450, 900, false);
draw_set_alpha(1);
if(click)
{
	fade = 1;
}
if(alpha == 1 && fade == 1)
{
	audio_stop_sound(obj_MusicTitle.theme);
	room_goto_next();
}