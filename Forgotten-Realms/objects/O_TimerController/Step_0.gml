/// @description Check if fishes caught

// this is checking if all of the fishes were caught and is switching levels
if (fishCaught >= 8 && levelswitch = false)
{
	levelswitch = true
	O_Controller.nextlevel += 1
	O_Controller.transitionOccur = true
}
