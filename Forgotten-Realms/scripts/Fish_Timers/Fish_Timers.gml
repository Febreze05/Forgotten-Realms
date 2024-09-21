// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Fish_Timers()
{
switch (fishType) 
{
	case 0:
		fishTimer = 1
		break;
		
	case 1:
		fishTimer = 2
		break;
		
	case 2:
		fishTimer = 3
		break;
		
	case 3:
		fishTimer = 1
		break
		
	case 4:
		fishTimer = 5
		break;
		
	case 5:
		fishTimer = 1
		break;
		
	case 6:
		fishTimer = 2
		break;
		
	case 7:
		fishTimer = 1
		break;
}
O_TimerController.countdown_time = fishTimer
}