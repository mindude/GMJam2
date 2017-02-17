/// @description Insert description here
// You can write your code in this editor
if(on_Title_Screen == true){
	clicked_Title_Screen = true;
}
else{
	image_index = 16
	on_Title_Screen = true;
	image_speed = 0.5
	step = 200
}
if(!obj_MusicTitle.click)
{
	obj_Fade.alpha = 0;
	obj_MusicTitle.click = true;
	obj_MusicTitle.theme = audio_play_sound(main_Theme, 50, false);
}
