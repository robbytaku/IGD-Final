if (instance_exists(o_player)){
	if (distance_to_point(o_player.x,o_player.y) <= 700) 
	{
		if (hit == 0) move_towards_point(o_player.x, y, spd)
		if (hit == 1) move_towards_point(o_player.x, y, -spd*6)
	} if (cooldown <= 0) && (distance_to_point(o_player.x,o_player.y) <= 500) {
		instance_create_layer(x,y,"Bullets", o_bullet);
		cooldown = 45;
	} else {
		x = x;
		y = y;
	}
}

cooldown -= 1;

if (o_player.x <= o_soldier.x) {
	sprite_index = s_soldier;
} else {
	sprite_index = s_soldierflipped;	
}