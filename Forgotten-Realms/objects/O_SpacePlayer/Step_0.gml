if (keyboard_check(ord("A")))
{
	x -= movespeed;
}

if (keyboard_check(ord("D")))
{
	x += movespeed;
}

if (keyboard_check_pressed(vk_space))
{
	instance_create_layer(O_SpacePlayer.x, O_SpacePlayer.y,"Playablelayer", O_Laser)
	audio_play_sound(Shooting, 0,0);
}

x = clamp(x,250,1215)