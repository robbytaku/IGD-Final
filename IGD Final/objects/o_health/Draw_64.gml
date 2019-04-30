if (o_player.hp == 5)
{
	draw_sprite(s_hp,s_hp,32+32,75);
	draw_sprite(s_hp,s_hp,96+32,75);
	draw_sprite(s_hp,s_hp,160+32,75);
	draw_sprite(s_hp,s_hp,224+32,75);
	draw_sprite(s_hp,s_hp,288+32,75);
}

if (o_player.hp == 4)
{
	draw_sprite(s_hp,s_hp,32+64,75);
	draw_sprite(s_hp,s_hp,96+64,75);
	draw_sprite(s_hp,s_hp,160+64,75);
	draw_sprite(s_hp,s_hp,224+64,75);
}

if (o_player.hp == 3)
{
	draw_sprite(s_hp,s_hp,32+96,75);
	draw_sprite(s_hp,s_hp,96+96,75);
	draw_sprite(s_hp,s_hp,160+96,75);
}

if (o_player.hp == 2)
{
	draw_sprite(s_hp,s_hp,32+128,75);
	draw_sprite(s_hp,s_hp,96+128,75);
}

if (o_player.hp == 1)
{
	draw_sprite(s_hp,s_hp,32+154,75);
}