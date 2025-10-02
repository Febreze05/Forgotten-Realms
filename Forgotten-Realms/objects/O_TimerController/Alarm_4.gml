audio_stop_all()
if (overallFishCaught >= overallFishNeeded)
{
	room_goto(R_Results_P)
}
else
{
	room_goto(R_Results_F)
}
