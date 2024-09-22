/// @description Insert description here
// set variables

vsp = vsp + grv;

//Dont walk off ledges
if (grounded) and (afraidofheights) and (!place_meeting(x+hsp,y+1,O_FantasyPlatform))
{
	hsp = -hsp;
}

if (grounded) and (afraidofheights) and (!place_meeting(x+hsp,y+1,O_FantasyPlatform2))
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

//platform2
if (place_meeting(x+hsp,y,O_FantasyPlatform2))
{
	while (!place_meeting(x+sign(hsp),y,O_FantasyPlatform2))
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

//platform2
if (place_meeting(x,y+vsp,O_FantasyPlatform2))
{
	while (!place_meeting(x,y+sign(vsp),O_FantasyPlatform2))
	{
		y = y +sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;