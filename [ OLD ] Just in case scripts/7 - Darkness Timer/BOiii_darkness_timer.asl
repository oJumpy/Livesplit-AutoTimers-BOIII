state("boiii")
{
    int darknessTime : "blackops3.exe", 0x10B315E4;
        int fixedoffsetDarkness : "blackops3.exe", 0x10;
}

update
{
    vars.trueTime = current.darknessTime - current.fixedoffsetDarkness;
}

gameTime
{
    //return new TimeSpan(0, 0, 0, 0, vars.trueTime * 50);
}

init
{
    refreshRate = 100;
}