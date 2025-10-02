/// @description we are drawing all of the fishing vars



// this is Drawing countdown timer
if (instance_exists(O_TimerController)) {
    var controller = instance_nearest(x, y, O_TimerController);
    
    // this is Calculating the remaining time
    var remaining_time = max(0, controller.alarm[0]);
	var remaining_maintimer = max(0, controller.alarm[4]);
    
    // this is Displaying countdown time
	 draw_set_color(c_purple);
    draw_text(200, 300, "Feeding Countdown: " + string(round(remaining_maintimer)));
    draw_set_color(c_purple);
    draw_text(200, 330, "Fish Countdown: " + string(round(remaining_time)));
	

 //if (controller.fishCaught) 
    //{
        draw_set_color(c_yellow);
        draw_text(200, 360, "PlayerStrength: " + string(controller.pressedAmount));
		
		draw_set_color(c_yellow);
        draw_text(200, 390, "FishStrength: " + string(controller.fishpressedAmount));
		
		draw_set_color(c_green);
        draw_text(200, 420, "Fish Amount: " + string(controller.fishCaught));
		
		draw_set_color(c_green);
        draw_text(200, 450, "Fish Upgrade Cost: " + string(controller.upgrade1amount));
		
			
		draw_set_color(c_maroon);
        draw_text(200, 480, "Fish Amount needed: " + string(controller.overallFishCaught) +  "/" + string(controller.overallFishNeeded));
		
    //} 
	
	 if (remaining_time > 0 ) {
        draw_set_color(c_yellow);
        draw_text(200, 200, "Fish ON!");
	 }
    // this is the feedback based on success
    if (controller.success && !controller.fishing) {
        draw_set_color(c_yellow);
        draw_text(200, 200, "CATCH!");
    } 
	if (remaining_time <= 0 && controller.success = false && controller.fishing = false)
	{
        draw_set_color(c_red);
        draw_text(200, 200, "LOST IT!");
    }
}