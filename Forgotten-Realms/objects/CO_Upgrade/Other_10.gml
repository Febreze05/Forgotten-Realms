/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(O_TimerController.fishCaught >= O_TimerController.upgrade1amount)
{
	O_TimerController.fishCaught -=  O_TimerController.upgrade1amount;
	O_TimerController.upgrade1amount += 10;
	O_TimerController.pressedMulti += 1;
}


