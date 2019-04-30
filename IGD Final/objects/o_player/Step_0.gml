/// @description Player Movement
if keyboard_check(ord("D")) {
	hspeed_ = 4;	
} else if keyboard_check(ord("A")) { 
	hspeed_ = -4;
} else {
	hspeed_ = 0;	
}

if !place_meeting(x, y+1, o_solid) {
	vspeed_ += gravity_;	
}
	
if keyboard_check(vk_space) {
		vspeed_ = -10;
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

if (invincibility >= 20) hit = 0;
if (hit == 1)
{
	image_alpha = 0.5;
	o_player.image_alpha = 0.5;
	invincibility += 1;
}
if (hit == 0) 
{
	o_player.image_alpha = 1;
	image_alpha = 1;
}

if (hp <= 0) {
	room_goto(MainMenu);
}