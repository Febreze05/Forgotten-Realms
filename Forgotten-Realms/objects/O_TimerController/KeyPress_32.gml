/// @description Hooking for real
//we are checking if the player hits the space button and if they do they hook 
if (keyboard_check_pressed(vk_space)and (fishing = true))
{
    // Check timing against target time
    var remaining_time = max(0,alarm[0]);
    var threshold = 0.2; 

	// we are checking if the timer ran out and if it didnt then we set all of these vars.
    if (remaining_time > 0) 
	{
        success = true; 
		fishCatch = true;
		fishing = false;
		O_CozyPlayer.alarm[2] = 1
		O_Fish.setVisible = true
		debug_event("complete")	
		remaining_time = 0
		fishCaught += 1
    } 
	// this is just checking if the player did nothing then we set these two vars
	else
	{
        success = false; 
		fishing = false;
    }
}
