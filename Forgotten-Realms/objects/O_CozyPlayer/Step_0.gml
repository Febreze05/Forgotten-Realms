/// @description Checking player pressed key
var cast = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);

if (cast && (hasCasted = false)) 
	{
		hasCasted = true;
		player_state = CAST;
		alarm[0] = 15
		
	
		//audio_play_sound(jump_sound, 1, false);
	} 
