/// @description Insert description here
// this is Variables for timing
target_time = 0;
countdown_time = 3;
is_timing = false;
success = false;
fishCatch = false
fishing = false
fishCaught = 0
overallFishCaught = 0;
overallFishNeeded =  random_range(200, 250);
levelswitch = false
pressedAmount = 0;
pressedMulti = 1;
fishpressedAmount = 0;
upgrade1amount = 10;
// this is  Set the initial target time 
target_time = random_range(1, 3); 
timer =  max(0,alarm[4]);
alarm[4] = room_speed*100;




