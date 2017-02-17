/// @description Insert description here
vspeed = 0;
sprite_index = spr_Explosion_Smoke;
x += 25;
y += 25;
image_xscale = 0;
image_yscale = 0;
for(i = bomb_x - 100; i <= bomb_x + 100; i += 50)
{
	for(j = bomb_y - 100; j <= bomb_y + 100; j += 50)
	{
		instance_create_layer(i, j, "Smoke", obj_CloudedTile);
	}
}
//alarm_set(1, 250);