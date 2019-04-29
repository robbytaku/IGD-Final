/// @description Player Movement
if keyboard_check(ord("D")) {
	hspeed_ = 10;	
} else if keyboard_check(ord("A")) {
	hspeed_ = -10;	
} else {
	hspeed_ = 0;	
}

if !place_meeting(x, y+1, o_solid) {
	vspeed_ += gravity_;	
}
	
if keyboard_check(vk_space) {
		vspeed_ = -20;
	}

if place_meeting(x+hspeed_, y, o_solid) {
	while !place_meeting(x+sign(hspeed_), y, o_solid) {
		x += sign(hspeed_);	
	}
	hspeed_ = 0;
}

x += hspeed_;

if place_meeting(x, y+vspeed_, o_solid) {
	while !place_meeting(x, y+sign(vspeed_), o_solid) {
		y += sign(vspeed_);	
	}
	vspeed_ = 0;
}

y += vspeed_;

if (gravity_ == 0) {
	gravity_ = 1;
}