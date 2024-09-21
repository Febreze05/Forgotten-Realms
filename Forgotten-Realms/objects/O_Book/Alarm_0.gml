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

}


