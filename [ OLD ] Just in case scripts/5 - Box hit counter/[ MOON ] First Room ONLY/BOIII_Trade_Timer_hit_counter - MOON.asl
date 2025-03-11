state("boiii")
{
    int BoxHitsMoon : "blackops3.exe", 0x47CAB3C;
}

reset
{
    if(current.BoxHitsMoon > old.BoxHitsMoon)
	{
		return true;
	}
	else 
	{
		return false;
	}
}

start
{
    return true;
}