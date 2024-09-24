if (O_SpaceController.alarm[0] <= 760)
{
hsp = 1.9 * movespeed
if(O_SpaceController.alarm[0] >= 380)
{
hsp = 1.9 * -movespeed
}

if (!place_meeting(x,y+1, O_Wall))
	{
		vsp += grav
	}

// horizontal collision
if (place_meeting(x + hsp, y, O_Wall))
	{
		while( !place_meeting(x+sign(hsp), y ,O_Wall))
		{
			x += sign(hsp)
		}
	hsp = 0
	}
x += hsp

// vertical collision
if (place_meeting(x, y + vsp, O_Wall))
	{
		while( !place_meeting(x, y +sign(vsp),O_Wall))
		{
			y += sign(vsp)
		}
	vsp = 0
	}	
y += vsp;
}

num = irandom_range(1,250)

if (num = 1)
{
shootPlayer = instance_create_layer(x, y, "Playablelayer", O_EnemyProjectile)
}