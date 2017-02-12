/// @description Insert descripis_tion here
// You can write your code in this editor

if(is_Walking == true){
	residue_x = x mod 50;
	residue_y = y mod 50;
	if(residue_x == 0 && residue_y == 0) officer_x = x; officer_y = y;
	scr_Officer_LineOfSight();
	if(following_Path == true){
		if (face_Direction == "left"){
			if(place_meeting(x-55,y,obj_officerPath)){
				vspeed = 0;
				hspeed = -5;
			}
			else{
				if(place_meeting(x,y-55,obj_officerPath)){
					face_Direction = "up";
				}
				else if(place_meeting(x,y+55,obj_officerPath)){
					face_Direction = "down";

				}
				else{
					face_Direction = "right";
				}
			}
		}
		else if (face_Direction == "right"){
			if(place_meeting(x+55,y,obj_officerPath)){
				vspeed = 0;
				hspeed = 5;
			}
			else{
				if(place_meeting(x,y-55,obj_officerPath)){
					face_Direction = "up";
				}
				else if(place_meeting(x,y+55,obj_officerPath)){
					face_Direction = "down";
				}
				else{
					face_Direction = "left";
				}
			}
		}
		else if (face_Direction == "up"){
			if(place_meeting(x,y-55,obj_officerPath)){
				hspeed = -0;
				vspeed = -5;
			}
			else{
				if(place_meeting(x-55,y,obj_officerPath)){
					face_Direction = "left";
				}
				else if(place_meeting(x+55,y,obj_officerPath)){
					face_Direction = "right";
				}
				else{
					face_Direction = "down";
				}
			}
		}
		else if (face_Direction == "down"){
			if(place_meeting(x,y+55,obj_officerPath)){
				hspeed = 0;
				vspeed = +5;
			}
			else{
				if(place_meeting(x-55,y,obj_officerPath)){
					face_Direction = "left";
				}
				else if(place_meeting(x+55,y,obj_officerPath)){
					face_Direction = "right";
				}
				else{
					face_Direction = "up";
				}
			}
		}
	}
}
else{
	vspeed = 0;
	hspeed = 0;
}