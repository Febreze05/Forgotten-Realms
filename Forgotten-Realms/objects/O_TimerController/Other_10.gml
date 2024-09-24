/// @description this is reseting the fishing 

// this resets everything
    countdown_time = 3; 
    target_time = random_range(1, 3); 
    is_timing = true; 
	

    // this is restarting the countdown using the alarm
   alarm[0] = room_speed*countdown_time;