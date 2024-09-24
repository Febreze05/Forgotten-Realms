/// @description Flip book finished
show_debug_message("level")
switch (O_Controller.nextlevel)
{
	case 0:
	{
		room_goto(R_Cozy_Level)
		break
	}
	
	case 1:
	{
		room_goto(R_Fantasy_level)
		break
	}
	case 2:
	{
		room_goto(R_Space_Level)
		break
	}
	case 3:
	{
		O_Controller.nextlevel = 0
		room_goto(R_StartScreen)
		break
	}

}


