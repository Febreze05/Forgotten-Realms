/// @description Animation
switch (player_state) 
{
	case IDLE:
		sprite_index = Fisherman_idle;
		break;
		
	case CAST:
		sprite_index = Fisherman_cast;
		break;
		
	case FISHING:
		sprite_index = Fisherman_Fishing;
		break;
		
	case HOOKED:
		sprite_index = Fisherman_hook;
		break;
}

draw_self();