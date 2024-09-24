if (enemiesLeft = 0 && levelcomplete = false)
{
	levelcomplete = true
	O_Controller.nextlevel += 1
	O_Controller.transitionOccur = true
	
}
show_debug_message(enemiesLeft)
