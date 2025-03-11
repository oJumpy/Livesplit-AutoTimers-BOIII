state("boiii", "blackops3")
{
	int levelTime : "blackops3.exe", 0xA5502C0;
	int round : "blackops3.exe", 0xA55BDEC;
	string13 currentMap : "blackops3.exe", 0x940C5E8;
	byte flogger : "blackops3.exe", 0x4713774;
}

update
{
	if(old.flogger > current.flogger )
	{
		vars.FloggertrapStart = current.levelTime;
	}
}

gameTime
{
	string[] arrayMaps = {"zm_zod", "zm_factory", "zm_castle", "zm_island", 
		"zm_stalingrad", "zm_genesis", "zm_prototype", "zm_asylum", "zm_sumpf", 
		"zm_theater", "zm_cosmodrome", "zm_temple", "zm_moon", "zm_tomb"};
		
	if(Array.IndexOf(arrayMaps, current.currentMap) == -1 || current.round == 0 || current.levelTime - vars.FloggertrapStart >= 1540)
	{
		vars.FloggertrapStart = -1540;
		return TimeSpan.Zero;
	}
	
	return new TimeSpan(0, 0, 0, 0, (1540 - current.levelTime + vars.FloggertrapStart) * 50);
}

init
{
	vars.FloggertrapStart = -1540;
	refreshRate = 100;
}

start
{
	return true;
}

isLoading
{
	return true;
}