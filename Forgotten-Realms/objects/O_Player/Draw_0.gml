/// @description Animation Handling
// You can write your code in this editor

// Changes sprite depending on current state
switch (player_state) 
{
	case IDLE:
		sprite_index = Sp_Idle_Player;
		break;
		
	case RUNNING:
		sprite_index = Sp_Walk_player;
		break;
		
	case JUMPING:
		sprite_index = Sp_Jump_Player;
		break;
		
	case FALLING:
		sprite_index = Sp_Idle_air_Player;
		break;
}


draw_self();



















