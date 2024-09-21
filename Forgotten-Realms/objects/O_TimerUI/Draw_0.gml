/// @description we are drawing all of the fishing vars

// we are just drawing all of the variables within the game 
draw_set_font(Default_Font)
draw_set_color(c_white);
draw_text(200, 300, "Press SPACE the Press it again when the time is right!");

// this is Drawing countdown timer
if (instance_exists(O_TimerController)) {
    var controller = instance_nearest(x, y, O_TimerController);
    
    // this is Calculating the remaining time
    var remaining_time = max(0, controller.alarm[0]);
    
    // this is Displaying countdown time
    draw_set_color(c_yellow);
    draw_text(200, 330, "Countdown: " + string(round(remaining_time)));
	
	 draw_set_color(c_yellow);
        draw_text(200, 390, "Fish Needed: 5 ");

 if (controller.fishCaught) {
        draw_set_color(c_yellow);
        draw_text(200, 360, "FishCaught: " + string(controller.fishCaught));
    } 
    // this is the feedback based on success
    if (controller.success) {
        draw_set_color(c_yellow);
        draw_text(200, 200, "CATCH!");
    } 
	if (remaining_time <= 0 && controller.success = false && controller.fishCatch = false && controller.fishing) {
        draw_set_color(c_red);
        draw_text(200, 200, "LOST IT!");
    }
}