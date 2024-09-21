/// @description Animation
if (setVisible = true)
{
switch (fishType) 
{
	case 0:
		sprite_index = S_Fish_1;
		fishTimer = 1
		break;
		
	case 1:
		sprite_index = S_Fish_2;
		fishTimer = 2
		break;
		
	case 2:
		sprite_index = S_Fish_3;
		fishTimer = 3
		break;
		
	case 3:
		sprite_index = S_Fish_4;
		fishTimer = 1
		break
		
	case 4:
		sprite_index = S_Fish_5;
		fishTimer = 5
		break;
		
	case 5:
		sprite_index = S_Fish_6;
		fishTimer = 1
		break;
		
	case 6:
		sprite_index = S_Fish_7;
		fishTimer = 2
		break;
		
	case 7:
		sprite_index = S_Fish_8;
		fishTimer = 1
		break;
}

draw_self();
}
else
{
	sprite_index = S_no_Fish;
}