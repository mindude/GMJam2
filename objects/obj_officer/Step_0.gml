/// @description Insert descripis_tion here
// You can write your code in this editor
if(is_Walking == true){
	if(following_Path == true){
		if (face_Direction == "left"){
			if(place_meeting(x-52,y,obj_officerPath)){
				vspeed = 0;
				hspeed = -2;
			}
			else{
				if(place_meeting(x,y-52,obj_officerPath)){
					face_Direction = "up";
				}
				else if(place_meeting(x,y+52,obj_officerPath)){
					face_Direction = "down";

				}
				else{
					face_Direction = "right";
				}
			}
		}
		else if (face_Direction == "right"){
			if(place_meeting(x+52,y,obj_officerPath)){
				vspeed = 0;
				hspeed = 2;
			}
			else{
				if(place_meeting(x,y-52,obj_officerPath)){
					face_Direction = "up";
				}
				else if(place_meeting(x,y+52,obj_officerPath)){
					face_Direction = "down";
				}
				else{
					face_Direction = "left";
				}
			}
		}
		else if (face_Direction == "up"){
			if(place_meeting(x,y-52,obj_officerPath)){
				hspeed = -0;
				vspeed = -2;
			}
			else{
				if(place_meeting(x-52,y,obj_officerPath)){
					face_Direction = "left";
				}
				else if(place_meeting(x+52,y,obj_officerPath)){
					face_Direction = "right";
				}
				else{
					face_Direction = "down";
				}
			}
		}
		else if (face_Direction == "down"){
			if(place_meeting(x,y+52,obj_officerPath)){
				hspeed = 0;
				vspeed = +2;
			}
			else{
				if(place_meeting(x-52,y,obj_officerPath)){
					face_Direction = "left";
				}
				else if(place_meeting(x+52,y,obj_officerPath)){
					face_Direction = "right";
				}
				else{
					face_Direction = "up";
				}
			}
		}
	}
}