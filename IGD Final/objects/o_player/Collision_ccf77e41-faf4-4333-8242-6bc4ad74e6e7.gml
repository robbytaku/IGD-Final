instance_destroy(other);
if (hit == 0)
{	
	hit = 1;
	hp -= 1;
	invincibility = 0;
}

audio_play_sound(s_scream, 0, false);