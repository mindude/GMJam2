/// @description Insert description here
alpha = clamp(alpha + (fade * 0.05), 0, 1);
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, 1450, 1850, false);
draw_set_alpha(1);