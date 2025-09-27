/// @description Timer
// this is a timer has reached zero
if(fishCatch = false)
{
pressedAmount = 0;
fishpressedAmount = 0;
audio_play_sound(FishLost, 0,0);
}
is_timing = false;
success = false; // Time is up
fishing = false;
pressedAmount = 0;
O_CozyPlayer.alarm[2] = 1
debug_event("complete")	
