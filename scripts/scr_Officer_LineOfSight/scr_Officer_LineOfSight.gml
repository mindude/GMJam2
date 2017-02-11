//This code is for managing line of sight

//Down
if(face_Direction == "down"){
	if(place_free(officer_x-50,officer_y+50)){
		if(place_meeting(officer_x-50,officer_y+50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x-50,officer_y+100)){
			if(place_meeting(officer_x-50,officer_y+100, obj_character)){
			//Gets caught
			is_Walking = false;
			}
			if(place_free(officer_x-50,officer_y+150)){
				if(place_meeting(officer_x-50,officer_y+150, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
		}
	}
	if(place_free(officer_x,officer_y+50)){
		if(place_meeting(officer_x,officer_y+50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x,officer_y+100)){
			if(place_meeting(officer_x,officer_y+100, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			if(place_free(officer_x,officer_y+150)){
				if(place_meeting(officer_x,officer_y+150, obj_character)){
					//Gets caught
					is_Walking = false;
				}
			}
		}
	}
	if(place_free(officer_x+50,officer_y+50)){
		if(place_meeting(officer_x+50,officer_y+50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x+50,officer_y+100)){
			if(place_meeting(officer_x+50,officer_y+100, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			if(place_free(officer_x+50,officer_y+150)){
				if(place_meeting(officer_x+50,officer_y+150, obj_character)){
					//Gets caught
					is_Walking = false;
				}
			}
		}
	}
	
}

//Up
else if(face_Direction == "up"){
	if(place_free(officer_x-50,officer_y-50)){
		if(place_meeting(officer_x-50,officer_y-50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x-50,officer_y-100)){
			if(place_meeting(officer_x-50,officer_y-100, obj_character)){
			//Gets caught
			is_Walking = false;
			}
			if(place_free(officer_x-50,officer_y-150)){
				if(place_meeting(officer_x-50,officer_y-150, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
		}
	}
	if(place_free(officer_x,officer_y-50)){
		if(place_meeting(officer_x,officer_y-50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x,officer_y-100)){
			if(place_meeting(officer_x,officer_y-100, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			if(place_free(officer_x,officer_y-150)){
				if(place_meeting(officer_x,officer_y-150, obj_character)){
					//Gets caught
					is_Walking = false;
				}
			}
		}
	}
	if(place_free(officer_x+50,officer_y-50)){
		if(place_meeting(officer_x+50,officer_y-50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x+50,officer_y-100)){
			if(place_meeting(officer_x+50,officer_y-100, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			if(place_free(officer_x+50,officer_y-150)){
				if(place_meeting(officer_x+50,officer_y-150, obj_character)){
					//Gets caught
					is_Walking = false;
				}
			}
		}
	}
	
}

//Left

else if(face_Direction == "left"){
	if(place_free(officer_x-50,officer_y+50)){
		if(place_meeting(officer_x-50,officer_y+50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x-100,officer_y+50)){
			if(place_meeting(officer_x-100,officer_y+50, obj_character)){
			//Gets caught
			is_Walking = false;
			}
			if(place_free(officer_x-150,officer_y+50)){
				if(place_meeting(officer_x-150,officer_y+150, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
		}
	}
	if(place_free(officer_x-50,officer_y+100)){
		if(place_meeting(officer_x-50,officer_y+100, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x-100,officer_y+100)){
			if(place_meeting(officer_x-100,officer_y+100, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			if(place_free(officer_x-150,officer_y+100)){
				if(place_meeting(officer_x-150,officer_y+100, obj_character)){
					//Gets caught
					is_Walking = false;
				}
			}
		}
	}
	if(place_free(officer_x-50,officer_y+150)){
		if(place_meeting(officer_x-50,officer_y+150, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x-100,officer_y+150)){
			if(place_meeting(officer_x-100,officer_y+150, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			if(place_free(officer_x-150,officer_y+150)){
				if(place_meeting(officer_x-150,officer_y+150, obj_character)){
					//Gets caught
					is_Walking = false;
				}
			}
		}
	}
	
}

//Right

else if(face_Direction == "right"){
	if(place_free(officer_x+50,officer_y+50)){
		if(place_meeting(officer_x+50,officer_y+50, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x+100,officer_y+50)){
			if(place_meeting(officer_x+100,officer_y+50, obj_character)){
			//Gets caught
			is_Walking = false;
			}
			if(place_free(officer_x+150,officer_y+50)){
				if(place_meeting(officer_x+150,officer_y+150, obj_character)){
				//Gets caught
				is_Walking = false;
				}
			}
		}
	}
	if(place_free(officer_x+50,officer_y+100)){
		if(place_meeting(officer_x+50,officer_y+100, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x+100,officer_y+100)){
			if(place_meeting(officer_x,officer_y+100, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			if(place_free(officer_x+150,officer_y+100)){
				if(place_meeting(officer_x+150,officer_y+100, obj_character)){
					//Gets caught
					is_Walking = false;
				}
			}
		}
	}
	if(place_free(officer_x+50,officer_y+150)){
		if(place_meeting(officer_x+50,officer_y+150, obj_character)){
			//Gets caught
			is_Walking = false;
		}
		if(place_free(officer_x+100,officer_y+150)){
			if(place_meeting(officer_x+100,officer_y+150, obj_character)){
				//Gets caught
				is_Walking = false;
			}
			if(place_free(officer_x+150,officer_y+150)){
				if(place_meeting(officer_x+150,officer_y+150, obj_character)){
					//Gets caught
					is_Walking = false;
				}
			}
		}
	}
	
}











