state("boiii")
{
    byte round_counter : "blackops3.exe", 0xA55BDEC;
    byte is_paused : "blackops3.exe", 0x347EE08; 
}

startup
{
    vars.timer_start = 0;
    vars.split_index = 1;
}

start
{
    if(current.round_counter == 0)
    {
        vars.timer_start = 0;
        vars.split_index = 0;
    }
    if(current.round_counter == 1 && vars.timer_start == 0)
    {
        System.Threading.Thread.Sleep(200);
        vars.timer_start = 1;
        return true;
    }
}

reset
{
    if(current.round_counter == 0 && old.round_counter != 0) return true;
    return false;
}

isLoading
{
    if(current.is_paused == 1) return true;
    return false;
}

split
{
    if(current.round_counter == old.round_counter + 1)
    {
        return true;
    }
}