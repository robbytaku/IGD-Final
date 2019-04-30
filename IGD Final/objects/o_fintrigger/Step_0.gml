if (instance_number(o_person) == 0) {
	if (place_meeting(x,y,o_player)) room_goto_next();
	if (place_meeting(x,y,o_player)) audio_stop_all();
}