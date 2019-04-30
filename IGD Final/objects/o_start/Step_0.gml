if(point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)) {
	
	image_xscale = 0.8;
	image_yscale = 0.8;
	if selected == 0 
	{
		selected = 1;
	}
	
	if(mouse_check_button_pressed(mb_left)) {		
		pressed=true;
	}
	
	if(mouse_check_button(mb_left) and pressed==true) {
		image_alpha = 0.8;
	}
	
	if(mouse_check_button_released(mb_left)) {
		image_alpha = 1;
		audio_stop_all();
		room_goto_next();
		pressed=false;
	}
	

}
else {
	
	image_xscale = 0.7;
	image_yscale = 0.7
	image_alpha = 1;
	selected = 0;
	
}
