/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// set variables

vsp = vsp + grv;

//Dont walk off ledges
if (grounded) and (afraidofheights) and (!place_meeting(x+hsp,y+1,O_Collision))
{
	hsp = -hsp;
}

if (grounded) and (afraidofheights) and (!place_meeting(x+hsp,y+1,O_BookCollision))
{
	hsp =-hsp;
}

//Horizontal Movement
if (place_meeting(x+hsp,y,O_Collision))
{
	while (!place_meeting(x+sign(hsp),y,O_Collision))
	{
		x = x +sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//platform2
if (place_meeting(x+hsp,y,O_Collision))
{
	while (!place_meeting(x+sign(hsp),y,O_Collision))
	{
		x = x +sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical Movement
if (place_meeting(x,y+vsp,O_Collision))
{
	while (!place_meeting(x,y+sign(vsp),O_Collision))
	{
		y = y +sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//platform2
if (place_meeting(x,y+vsp,O_Collision))
{
	while (!place_meeting(x,y+sign(vsp),O_Collision))
	{
		y = y +sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation

if (!place_meeting(x,y+1,O_Collision))
{
	sprite_index = Sp_Werewolf;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}

else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = Sp_Werewolf;
	}
	
	else
	{
		sprite_index = Sp_Werewolf;	
	}
}




