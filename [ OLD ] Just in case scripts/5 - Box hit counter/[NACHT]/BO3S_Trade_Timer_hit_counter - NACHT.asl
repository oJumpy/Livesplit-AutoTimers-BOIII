state("boiii", "blackops3")
{
    int box_hit : "blackops3.exe", 0x47CB2E4;
}

reset
{
    if(current.box_hit > old.box_hit)
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

isLoading
{
    return true;
}