/// @description Insert description here
// You can write your code in this editor

//set variables
vsp = vsp + grv;

//Dont walk off ledges
if (grounded) and (afraidofheights) and (!place_meeting(x+hsp,y+1,O_FantasyPlatform))
{
	hsp = -hsp;
	
}

//Horizontal Movement
if (place_meeting(x+hsp,y,O_FantasyPlatform))
{
	while (!place_meeting(x+sign(hsp),y,O_FantasyPlatform))
	{
		x = x +sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical Movement
if (place_meeting(x,y+vsp,O_FantasyPlatform))
{
	while (!place_meeting(x,y+sign(vsp),O_FantasyPlatform))
	{
		y = y +sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

