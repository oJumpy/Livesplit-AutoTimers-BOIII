state("blackops3", "BO3 Steam")
{
    int levelTime : 0xA5502C0;
    //int levelcoopTime : 0x353E588;
    int round_counter : 0xA55BDEC;
    string13 currentMap : 0x940C5E8;
    byte is_paused : 0x347EE08;
    int resetTime : 0x176F9358;
    byte zombie_killed : 0x4A115A8;
    int darknessTime : 0x10B315E4;
        int fixedoffsetDarkness : 0x10;
    int BoxHitsMoon : 0x47CAB3C;
    int BoxHitsNacht : 0x47CB2E4;
    int BoxHitsVerruckt1 : 0x47CBF24;
    int BoxHitsVerruckt2 : 0x47CD61C;
    int BoxHitsVerruckt3 : 0x47CC3BC;
    int BoxHitsVerruckt4 : 0x47CC234;
    int BoxHitsVerruckt5 : 0x47CC0AC;
    byte36 trapData : 0xA55BDF1;
    byte flogger : 0x4713774;
    int entity : 0x176F9B98;
    int RagsSlams : 0x36751E0;
    int ValksKill : 0x51A3B38;
    byte8 childStructPtr : 0x51A3580;
    byte8 childCSCStructPtr : 0x51A3680;
    int LevelNumEnt : 0xA549DF4;
    int currentWeaponID : 0xA50D9C0;
    int BoxWeaponID : 0x195F80B8;
    int animError : 0x51A3814;
    int HitmarkerAddr : 0xA08B690;
    int FrameTime : 0x168ED8A8;
}

state("boiii", "BOIII Client")
{
    int levelTime : "blackops3.exe", 0xA5502C0;
    int round_counter : "blackops3.exe", 0xA55BDEC;
    string13 currentMap : "blackops3.exe", 0x940C5E8;
    byte is_paused : "blackops3.exe", 0x347EE08;
    int resetTime : "blackops3.exe", 0x176F9358;
    byte zombie_killed : "blackops3.exe", 0x4A115A8;
    int darknessTime : "blackops3.exe", 0x10B315E4;
        int fixedoffsetDarkness : "blackops3.exe", 0x10;
    int BoxHitsMoon : "blackops3.exe", 0x47CAB3C;
    int BoxHitsNacht : "blackops3.exe", 0x47CB2E4;
    int BoxHitsVerruckt1 : "blackops3.exe", 0x47CBF24;
    int BoxHitsVerruckt2 : "blackops3.exe", 0x47CD61C;
    int BoxHitsVerruckt3 : "blackops3.exe", 0x47CC3BC;
    int BoxHitsVerruckt4 : "blackops3.exe", 0x47CC234;
    int BoxHitsVerruckt5 : "blackops3.exe", 0x47CC0AC;
    byte36 trapData : "blackops3.exe", 0xA55BDF1;
    byte flogger : "blackops3.exe", 0x4713774;
    int entity : "blackops3.exe", 0x176F9B98;
    int RagsSlams : "blackops3.exe", 0x36751E0;
    int ValksKill : "blackops3.exe", 0x51A3B38;
    byte8 childStructPtr : "blackops3.exe", 0x51A3580;
    byte8 childCSCStructPtr : "blackops3.exe", 0x51A3680;
    int LevelNumEnt : "blackops3.exe", 0xA549DF4;
    int currentWeaponID : "blackops3.exe", 0xA50D9C0;
    int BoxWeaponID : "blackops3.exe", 0x195F80B8;
    int HitmarkerAddr : "blackops3.exe", 0xA08B690;
    int FrameTime : "blackops3.exe", 0x168ED8A8;
}

state("boiii_exotick", "BOIII v.1.0.4 Client")
{
    int levelTime : "blackops3.exe", 0xA5502C0;
    int round_counter : "blackops3.exe", 0xA55BDEC;
    string13 currentMap : "blackops3.exe", 0x940C5E8;
    byte is_paused : "blackops3.exe", 0x347EE08;
    int resetTime : "blackops3.exe", 0x176F9358;
    byte zombie_killed : "blackops3.exe", 0x4A115A8;
    int darknessTime : "blackops3.exe", 0x10B315E4;
        int fixedoffsetDarkness : "blackops3.exe", 0x10;
    int BoxHitsMoon : "blackops3.exe", 0x47CAB3C;
    int BoxHitsNacht : "blackops3.exe", 0x47CB2E4;
    int BoxHitsVerruckt1 : "blackops3.exe", 0x47CBF24;
    int BoxHitsVerruckt2 : "blackops3.exe", 0x47CD61C;
    int BoxHitsVerruckt3 : "blackops3.exe", 0x47CC3BC;
    int BoxHitsVerruckt4 : "blackops3.exe", 0x47CC234;
    int BoxHitsVerruckt5 : "blackops3.exe", 0x47CC0AC;
    byte36 trapData : "blackops3.exe", 0xA55BDF1;
    byte flogger : "blackops3.exe", 0x4713774;
    int entity : "blackops3.exe", 0x176F9B98;
    int RagsSlams : "blackops3.exe", 0x36751E0;
    int NadesCount : "blackops3.exe", 0x36751E0;
    int ValksKill : "blackops3.exe", 0x51A3B38;
    byte8 childStructPtr : "blackops3.exe", 0x51A3580;
    byte8 childCSCStructPtr : "blackops3.exe", 0x51A3680;
    int LevelNumEnt : "blackops3.exe", 0xA549DF4;
    int currentWeaponID : "blackops3.exe", 0xA50D9C0;
    int BoxWeaponID : "blackops3.exe", 0x195F80B8;
    int HitmarkerAddr : "blackops3.exe", 0xA08B690;
    int FrameTime : "blackops3.exe", 0x168ED8A8;
}

state("boiii_dirty", "BOIII-Dirty v0.0.1")
{
    int levelTime : "blackops3.exe", 0xA5502C0;
    int round_counter : "blackops3.exe", 0xA55BDEC;
    string13 currentMap : "blackops3.exe", 0x940C5E8;
    byte is_paused : "blackops3.exe", 0x347EE08;
    int resetTime : "blackops3.exe", 0x176F9358;
    byte zombie_killed : "blackops3.exe", 0x4A115A8;
    int darknessTime : "blackops3.exe", 0x10B315E4;
        int fixedoffsetDarkness : "blackops3.exe", 0x10;
    int BoxHitsMoon : "blackops3.exe", 0x47CAB3C;
    int BoxHitsNacht : "blackops3.exe", 0x47CB2E4;
    int BoxHitsVerruckt1 : "blackops3.exe", 0x47CBF24;
    int BoxHitsVerruckt2 : "blackops3.exe", 0x47CD61C;
    int BoxHitsVerruckt3 : "blackops3.exe", 0x47CC3BC;
    int BoxHitsVerruckt4 : "blackops3.exe", 0x47CC234;
    int BoxHitsVerruckt5 : "blackops3.exe", 0x47CC0AC;
    byte36 trapData : "blackops3.exe", 0xA55BDF1;
    byte flogger : "blackops3.exe", 0x4713774;
    int entity : "blackops3.exe", 0x176F9B98;
    int RagsSlams : "blackops3.exe", 0x36751E0;
    int NadesCount : "blackops3.exe", 0x36751E0;
    int ValksKill : "blackops3.exe", 0x51A3B38;
    byte8 childStructPtr : "blackops3.exe", 0x51A3580;
    byte8 childCSCStructPtr : "blackops3.exe", 0x51A3680;
    int LevelNumEnt : "blackops3.exe", 0xA549DF4;
    int currentWeaponID : "blackops3.exe", 0xA50D9C0;
    int BoxWeaponID : "blackops3.exe", 0x195F80B8;
    int HitmarkerAddr : "blackops3.exe", 0xA08B690;
    int FrameTime : "blackops3.exe", 0x168ED8A8;
}

startup
{
    //Solo Timer
    settings.Add("Solo Timer", true);

    //Coop Timer
    settings.Add("Coop Timer", false);
    settings.SetToolTip("Coop Timer", "Use for Coop, so you can pause the timer");

    settings.Add("Enable Splits", true);

    //Reset Options (Parent Setting)
    settings.Add("Options", true);

        //Subcategories for Reset Options
        settings.Add("Reset Value", false, "Reset Value", "Options");
        settings.SetToolTip("Reset Value", "Show Raw Reset Values");

        settings.Add("Reset Timer", false, "Reset Timer", "Options");
        settings.Add("Entities", false, "Entities", "Options");

        settings.Add("com_frametime", false, "com_frametime", "Options");
        settings.Add("com_frametime_timer", false, "Frame Timer", "Options");

        settings.Add("Darkness", false, "Darkness", "Options");
            settings.SetToolTip("Darkness", "Show Darkness values");

    //Error Tracker
    settings.Add("Errors Trackers", true);

        //Subcategories for Reset Options
        settings.Add("Child Server Variable", false, "Child Server Variable", "Errors Trackers");
        settings.Add("Child Client Variable", false, "Child Client Variable", "Errors Trackers");
        settings.Add("G-Spawn", false, "G-Spawn", "Errors Trackers");

    

    settings.Add("Counters", false);
        settings.Add("Nade Counter", false, "Nade Counter", "Counters");
        settings.Add("Hitmarker Counter", false, "Hitmarker Counter", "Counters");
            settings.SetToolTip("Hitmarker Counter", "it's something, to track ZnS Error");
        settings.Add("Rags Slams Counter", false, "Rags Slams Counter", "Counters");
        settings.Add("Valk Counter", false, "Valk Counter", "Counters");

    //Box Hits
    settings.Add("Box Hits", false, "Box Hits", "Counters");
        settings.Add("Box Hits Nacht", false, "Box Hits Nacht", "Box Hits");
        settings.Add("Box Hits Verruckt", false, "Box Hits Verruckt", "Box Hits");
        settings.Add("Box Hits Moon", false, "Box Hits Moon", "Box Hits");

    //settings.Add("Wonder Weapon Average", false); -- Currently not avaiable :/
    
    settings.Add("Clear Counters", false);
         settings.SetToolTip("Clear Counters", "This will reset all Counters/Box Hits back to 0");

    // Trap Timers (Parent Setting)
    settings.Add("Trap Timers", true);

        // The Giant
        settings.Add("giant", false, "The Giant", "Trap Timers");
            settings.Add("bridge", false, "Bridge", "giant");
            settings.Add("jugtrap", false, "Kuda", "giant");
            settings.Add("mkder", true, "VMP", "giant");

        // Der Eisendrache
        settings.Add("de", false, "Der Eisendrache", "Trap Timers");
            settings.Add("courtyard", true, "Courtyard", "de");
        
        settings.Add("zns", false, "Zetsubou no Shima", "Trap Timers");
            settings.Add("planetrap", true, "Propeller Trap", "zns");
            settings.Add("fantrap", true, "Fan Trap", "zns");

        // Gorod Krovi
        settings.Add("gk", false, "Gorod Krovi", "Trap Timers");
            settings.Add("bunker", true, "Bunker", "gk");

        // Revelations
        settings.Add("rev", false, "Revelations", "Trap Timers");
            settings.Add("camptrap", true, "Verruckt Trap", "rev");

        // Verruckt
        settings.Add("verruckt", false, "Verruckt", "Trap Timers");
            settings.Add("doubletap", true, "Double Tap", "verruckt");
            settings.Add("speedcola", true, "Speed Cola", "verruckt");

        // Shi No Numa
        settings.Add("shino", false, "Shi No Numa", "Trap Timers");
            settings.Add("comm", false, "Comm Room", "shino");
            settings.Add("doc", false, "Doctor's Quarters", "shino");
            settings.Add("fishing", false, "Fishing Hut", "shino");
            settings.Add("storage", true, "Storage", "shino");
            settings.Add("flogger", true, "Flogger", "shino");

        // Kino Der Toten
        settings.Add("kino", false, "Kino Der Toten", "Trap Timers");
            settings.Add("kinoft", false, "Fire Trap", "kino");
            settings.Add("m8room", true, "M8", "kino");

        // Ascension
        settings.Add("ascension", false, "Ascension", "Trap Timers");
            settings.Add("vesper", false, "Stamin-Up", "ascension");
            settings.Add("kn", false, "Mule Kick", "ascension");


    //Function to set text component
    Action<string, string> SetTextComponent = (id, text) => {
        var textSettings = timer.Layout.Components.Where(x => x.GetType().Name == "TextComponent").Select(x => x.GetType().GetProperty("Settings").GetValue(x, null));
        var textSetting = textSettings.FirstOrDefault(x => (x.GetType().GetProperty("Text1").GetValue(x, null) as string) == id);
        if (textSetting == null)
        {
            var textComponentAssembly = Assembly.LoadFrom("Components\\LiveSplit.Text.dll");
            var textComponent = Activator.CreateInstance(textComponentAssembly.GetType("LiveSplit.UI.Components.TextComponent"), timer);
            timer.Layout.LayoutComponents.Add(new LiveSplit.UI.Components.LayoutComponent("LiveSplit.Text.dll", textComponent as LiveSplit.UI.Components.IComponent));

            textSetting = textComponent.GetType().GetProperty("Settings", BindingFlags.Instance | BindingFlags.Public).GetValue(textComponent, null);
            textSetting.GetType().GetProperty("Text1").SetValue(textSetting, id);
        }

        if (textSetting != null)
            textSetting.GetType().GetProperty("Text2").SetValue(textSetting, text);
    };
    vars.SetTextComponent = SetTextComponent;

    //Box Hits text components
    var lcCache = new Dictionary<string, LiveSplit.UI.Components.ILayoutComponent>();
    vars.SetText = (Action<string, object>)((text1, text2) =>
    {
        LiveSplit.UI.Components.ILayoutComponent lc;
        if (!lcCache.TryGetValue(text1, out lc))
            lcCache[text1] = lc = LiveSplit.UI.Components.ComponentManager.LoadLayoutComponent("LiveSplit.Text.dll", timer);

        if (!timer.Layout.LayoutComponents.Contains(lc))
            timer.Layout.LayoutComponents.Add(lc);

        dynamic tc = lc.Component;
        tc.Settings.Text1 = text1;
        tc.Settings.Text2 = text2.ToString();
    });

    vars.RemoveText = (Action<string>)((text1) =>
    {
        if (lcCache.ContainsKey(text1))
        {
            timer.Layout.LayoutComponents.Remove(lcCache[text1]);
            lcCache.Remove(text1);
        }
    });

    vars.RemoveAllTexts = (Action)(() =>
    {
        foreach (var lc in lcCache.Values)
            timer.Layout.LayoutComponents.Remove(lc);

        lcCache.Clear();
    });

    vars.boxHitsFilePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "LiveSplitBoxHits.txt");

    // Load saved values if the file exists
    if (File.Exists(vars.boxHitsFilePath))
    {
        string[] lines = File.ReadAllLines(vars.boxHitsFilePath);

        // Parse each line to extract the values
        foreach (string line in lines)
        {
            if (line.StartsWith("Moon Hits:"))
            {
                vars.boxHitsMoonCount = int.Parse(line.Split(':')[1].Trim());
            }
            else if (line.StartsWith("Nacht Hits:"))
            {
                vars.boxHitsNachtCount = int.Parse(line.Split(':')[1].Trim());
            }
            else if (line.StartsWith("Verruckt Hits:"))
            {
                vars.boxHitsVerrucktCount = int.Parse(line.Split(':')[1].Trim());
            }
            else if (line.StartsWith("Rags Slams:"))
            {
                vars.ragsSlamsCounter = int.Parse(line.Split(':')[1].Trim());
            }
            else if (line.StartsWith("Nade Count:"))
            {
                vars.nadeCounter = int.Parse(line.Split(':')[1].Trim());
            }
            else if (line.StartsWith("Valk Count:"))
            {
                vars.valksCounter = int.Parse(line.Split(':')[1].Trim());
            }
        }
    }
    else
    {
        // Initialize to 0 if the file doesn't exist
        vars.boxHitsMoonCount = 0;
        vars.boxHitsNachtCount = 0;
        vars.boxHitsVerrucktCount = 0;
        vars.ragsSlamsCounter = 0;
        vars.nadeCounter = 0;
        vars.valksCounter = 0;
    }

    // Existing box hits initialization...
    vars.oldBoxHitsMoon = 0;
    vars.oldBoxHitsNacht = 0;
    vars.oldBoxHitsVerruckt1 = 0;
    vars.oldBoxHitsVerruckt2 = 0;
    vars.oldBoxHitsVerruckt3 = 0;
    vars.oldBoxHitsVerruckt4 = 0;
    vars.oldBoxHitsVerruckt5 = 0;
    //vars.nadeCounter = 0;
    //vars.ragsSlamsCounter = 0;

    //Average stuff -- Currently not working -- no good addresses
    vars.wwBoxHitsTotal = 0;      // Total box hits while searching for WW
    vars.wwObtainedCount = 0;     // Number of times WW was obtained
    vars.wwAverageHits = 0;       // Current average
    vars.lastWeaponID = 0;        // Track weapon changes
    vars.searchingForWW = false;  // Are we currently searching?
    vars.justGotWW = false;       // Did we just get the WW? (NEW)
    vars.wwCooldown = 0;          // Cooldown counter
    vars.wwCurrentHits = 0;       // Current box hits in this search
    vars.flashFrames = 0;         // Flash effect counter

    vars.lastBoxWeaponID = 0;        // Track previous box weapon ID
    vars.boxJustGaveWW = false;      // Did the box just give us a WW?
    vars.boxHitDetected = false;     // Was there a box hit this frame?
    
    // Load saved values if they exist
    if (File.Exists(vars.boxHitsFilePath))
    {
        string[] lines = File.ReadAllLines(vars.boxHitsFilePath);
        foreach (string line in lines)
        {
            if (line.StartsWith("WW Total Hits:")) vars.wwBoxHitsTotal = int.Parse(line.Split(':')[1].Trim());
            if (line.StartsWith("WW Obtained:")) vars.wwObtainedCount = int.Parse(line.Split(':')[1].Trim());
            if (line.StartsWith("WW Average:")) vars.wwAverageHits = float.Parse(line.Split(':')[1].Trim());
        }
    }

    vars.maxChildValue = 0;
    vars.CSCmaxChildValue = 0;

    vars.hitmarkerCounter = 0;
}

init
{
    //To Find Hashes of the game 
    string MD5Hash;
    using (var md5 = System.Security.Cryptography.MD5.Create())
    using (var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
    MD5Hash = md5.ComputeHash(s).Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
    print("Hash is: " + MD5Hash);
    //5377ADAB3FEC9EE10696C37F12768039 -- Steam Black ops 3
    //14378716061897CBEB24D74007DD4178  -- boiii with steam closed

    switch (MD5Hash)
        {
            case "5377ADAB3FEC9EE10696C37F12768039":
                version = "BO3 Steam";
                break;

            case "14378716061897CBEB24D74007DD4178":
                version = "BOIII Client";
                break;

            case "F735CF4A04B61B019912737343068087":
                version = "BOIII v.1.0.4 Client";
                break;

            case "E3F00CA4CC1E835466E655BB4129B7E5":
                version = "BOIII-Dirty v0.0.1";
                break;

                
            default:
                version = "Unknown";
                break;
        }
    
    refreshRate = 100;
    
    if (settings["Trap Timers"])
    {
        vars.trapStarts = new Dictionary<string, int>();
        foreach (string trapID in new string[] { "bunker", "kinoft", "m8room", "camptrap", "comm", "doc", "fishing", "storage", "flogger", "bridge", "jugtrap", "mkder", "doubletap", "speedcola", "vesper", "kn", "courtyard", "planetrap", "fantrap" })
        {
            vars.trapStarts[trapID] = -2020;
        }
    }

    vars.FloggertrapStart = -1540;

    if (settings["Solo Timer"])
    {
        vars.addrGameTime = game.MainModule.BaseAddress + 0xA;
        vars.fixedOffsetGameTime = game.ReadValue<UInt16>((IntPtr)vars.addrGameTime);
        vars.round_splits = new int[] {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255};
        vars.split_index = 0;
    }
    else if (settings["Coop Timer"])
    {
        vars.timer_start = 0;
        vars.split_index = 1;
    }

    if (settings["Options"])
    {
        vars.startTime = current.levelTime;
        vars.startReset = current.resetTime;
        vars.elapsedReset = 9999999;
        vars.elapsedTime = 1;
    }

    vars.startFrameTime = current.FrameTime;
}

update
{
    if (settings["Solo Timer"])
    {
        if (old.round_counter == 0 && current.round_counter == 1)
        {
            game.WriteValue<UInt16>((IntPtr)vars.addrGameTime, (UInt16)current.levelTime);
            vars.fixedOffsetGameTime = current.levelTime;
        }
        vars.trueTime = current.levelTime - vars.fixedOffsetGameTime;
    }

    if (settings["Options"])
    {
        int entityChangeThreshold = 3;
    
        if (Math.Abs(old.entity - current.entity) >= entityChangeThreshold)
        {
            vars.elapsedTime = vars.startTime - current.levelTime;
            vars.elapsedReset = vars.startReset - current.resetTime;
    
            vars.startTime = current.levelTime;
            vars.startReset = current.resetTime;
        }

    /*if (settings["Reset Value"])
    {
        // Calculate how much left until max value (2147483647)
        long remainingReset = 2147483647L - current.resetTime;

        // Format the number with commas for readability
        string resetText = string.Format("{0} / 2147483647 ({1})", current.resetTime, remainingReset);
        vars.SetText("Reset:", resetText);
    }
    else
    {
        vars.RemoveText("Reset:");
    }*/

    // Update Reset Value Component (only if setting is enabled)
    if (settings["Reset Value"])
    {
        // Calculate remaining
        long remainingReset = 2147483647L - current.resetTime;

        // Set two separate text components
        vars.SetText("Reset:", string.Format("{0}", current.resetTime) + " / 2147483647" );
        vars.SetText("Remaining:", string.Format("{0}", remainingReset));
    }
    else
    {
        vars.RemoveText("Reset:");
        vars.RemoveText("Remaining:");
    }

    if (settings["Entities"])
    {
        string resetText = current.entity.ToString(); //Raw reset time
        vars.SetText("Entities:", resetText);
    }
    else
    {
        vars.RemoveText("Entities:");
    }

    if (settings["com_frametime"])
    {
        string resetText = current.FrameTime.ToString() + " / 2147483647"; //Raw reset time
        vars.SetText("com_frametime:", resetText);
    }
    else
    {
        vars.RemoveText("com_frametime:");
    }

    if (settings["com_frametime_timer"])
    {
        // Calculate time remaining until overflow (2147483647 - current value)
        long remainingTicks = 2147483647L - (long)current.FrameTime;

        // Calculate days, hours, minutes, seconds
        int days = (int)(remainingTicks / (1000 * 60 * 60 * 24));
        int hours = (int)((remainingTicks % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        int minutes = (int)((remainingTicks % (1000 * 60 * 60)) / (1000 * 60));
        int seconds = (int)((remainingTicks % (1000 * 60)) / 1000);
        int hundredths = (int)((remainingTicks % 1000) / 10); // Get hundredths of a second

        string formattedTime;
        if (days > 0)
        {
            formattedTime = string.Format("{0}d {1}h {2}m {3}s", days, hours, minutes, seconds);
        }
        else if (hours > 0)
        {
            formattedTime = string.Format("{0}h {1}m {2}s", hours, minutes, seconds);
        }
        else if (minutes > 0)
        {
            formattedTime = string.Format("{0}m {1}s.{2:D2}", minutes, seconds, hundredths);
        }
        else
        {
            formattedTime = string.Format("{0}.{1:D2}s", seconds, hundredths);
        }

        vars.SetText("Frame Timer:", formattedTime);
    }
    else
    {
        vars.RemoveText("Frame Timer:");
    }

    if (settings["Child Server Variable"])
    {
        if (current.levelTime == 0)
        {
            vars.maxChildValue = 0;
        }

        try 
        {
            // 1. Read the 8-byte pointer value
            byte[] pointerBytes = current.childStructPtr;
            if (pointerBytes == null || pointerBytes.Length != 8)
            {
                vars.SetText("Child GSC:", "PTR READ FAIL");
                return;
            }
            
            // 2. Convert to 64-bit address
            ulong childBase = BitConverter.ToUInt64(pointerBytes, 0);
            //print("Base Pointer: 0x" + childBase.ToString("X"));
            
            // 3. Validate pointer
            if (childBase < 0x10000 || childBase > 0x7FFFFFFFFFFF)
            {
                vars.SetText("Child GSC:", "EXECUTING");
                return;
            }
            
            // 4. Calculate final address (base + 0x18)
            ulong finalAddress = childBase + 0x18;
            
            // 5. Read the 4-byte integer value
            byte[] valueBytes = game.ReadBytes((IntPtr)finalAddress, 4);
            if (valueBytes == null || valueBytes.Length != 4)
            {
                vars.SetText("Child GSC:", "VAL READ FAIL");
                return;
            }
            
            int childValue = BitConverter.ToInt32(valueBytes, 0);
            
            // Update max value if current is higher
            if (childValue > vars.maxChildValue)
            {
                vars.maxChildValue = childValue;
            }
            
            // Display current and max without string interpolation
            vars.SetText("Child GSC:", childValue.ToString() + " Max: " + vars.maxChildValue.ToString() + " / 130000");
        }
        catch (Exception ex)
        {
            vars.SetText("Child GSC:", "EXCEPTION");
        }
    }
    else
    {
        vars.RemoveText("Child GSC:");
    }

    if (settings["Child Client Variable"])
    {
        if (current.levelTime == 0)
        {
            vars.CSCmaxChildValue = 0;
        }

        try 
        {
            // 1. Read the 8-byte pointer value
            byte[] pointerBytes = current.childCSCStructPtr;
            if (pointerBytes == null || pointerBytes.Length != 8)
            {
                vars.SetText("Child CSC:", "PTR READ FAIL");
                return;
            }
            
            // 2. Convert to 64-bit address
            ulong childBase = BitConverter.ToUInt64(pointerBytes, 0);
            //print("Base Pointer: 0x" + childBase.ToString("X"));
            
            // 3. Validate pointer
            if (childBase < 0x10000 || childBase > 0x7FFFFFFFFFFF)
            {
                vars.SetText("Child CSC:", "EXECUTING");
                return;
            }
            
            // 4. Calculate final address (base + 0x18) + 0x100 for Client
            ulong finalAddress = childBase + 0x18;

            // 5. Read the 4-byte integer value
            byte[] valueBytes = game.ReadBytes((IntPtr)finalAddress, 4);
            if (valueBytes == null || valueBytes.Length != 4)
            {
                vars.SetText("Child CSC:", "VAL READ FAIL");
                return;
            }
            
            int childValue = BitConverter.ToInt32(valueBytes, 0);
            
            // Update max value if current is higher
            if (childValue > vars.CSCmaxChildValue)
            {
                vars.CSCmaxChildValue = childValue;
            }
            
            // Display current and max without string interpolation
            vars.SetText("Child CSC:", childValue.ToString() + " Max: " + vars.CSCmaxChildValue.ToString() + " / 65000");
        }
        catch (Exception ex)
        {
            vars.SetText("Child CSC:", "EXCEPTION");
        }
    }
    else
    {
        vars.RemoveText("Child CSC:");
    }

    if (settings["G-Spawn"])
    {
        string resetText = current.LevelNumEnt.ToString() + " / 1022"; //Raw reset time
        vars.SetText("G-Spawn:", resetText);
    }
    else
    {
        vars.RemoveText("G-Spawn:");
    }

    if (settings["Hitmarker Counter"])
    {
        // Check if the hitmarker address value changed (trigger occurred)
        if (old.HitmarkerAddr != current.HitmarkerAddr)
        {
            vars.hitmarkerCounter++;
        }
        
        // Display the counter value instead of raw address
        vars.SetText("Hitmarkers:", vars.hitmarkerCounter);
    }
    else
    {
        vars.RemoveText("Hitmarkers:");
    }

    // Update Rags Slams counter
    if (settings["Rags Slams Counter"])
    {
        if (old.RagsSlams == 0 && current.RagsSlams == 45)
        {
            vars.ragsSlamsCounter++; // Increment the counter
        }

        // Display the counter value
        vars.SetText("Rags Slams Counter:", vars.ragsSlamsCounter);
    }
    else
    {
        vars.RemoveText("Rags Slams Counter:");
    }

    if (settings["Nade Counter"])
    {
        // More robust check that catches the transition to 38 regardless of previous value
        if (current.RagsSlams == 38 && old.RagsSlams != 38)
        {
            vars.nadeCounter++; // Increment the counter
            //print("Nade counter incremented! New count: " + vars.nadeCounter); // Debug output
        }

        // Display the counter value
        vars.SetText("Nade Counter:", vars.nadeCounter);
    }
    else
    {
        vars.RemoveText("Nade Counter:");
    }

    if (settings["Valk Counter"])
    {
        if (current.ValksKill != old.ValksKill)
        {
            vars.valksCounter++; // Increment the counter
        }

        vars.SetText("Valk Counter:", vars.valksCounter);
    }
    else
    {
        vars.RemoveText("Valk Counter:");
    }

    //Update Formatted Reset Timer (only if setting is enabled)
    if (settings["Reset Timer"])
    {
        vars.resetPerTick = vars.elapsedReset / vars.elapsedTime;
        vars.ticksLeft = (2147483647.0 - current.resetTime) / vars.resetPerTick;

        //Validate ticksLeft to prevent extreme values
        if (vars.ticksLeft > 0 && vars.ticksLeft < 1e9) // Adjust bounds as needed
        {
            //Calculate the time from ticksLeft
            double totalMilliseconds = vars.ticksLeft * 50;

            //Calculate hours, minutes, seconds, and hundredths manually
            int hours = (int)(totalMilliseconds / (1000 * 60 * 60));
            int minutes = (int)((totalMilliseconds % (1000 * 60 * 60)) / (1000 * 60));
            int seconds = (int)((totalMilliseconds % (1000 * 60)) / 1000);
            int hundredths = (int)(totalMilliseconds % 1000) / 10; // Convert to 2 digits

            string formattedResetText;
            if (hours > 0)
            {
                //Format as h:mm:ss.ff
                formattedResetText = string.Format("{0}:{1:D2}:{2:D2}.{3:D2}", hours, minutes, seconds, hundredths);
            }
            else if (minutes > 0)
            {
                //Format as m:ss.ff
                formattedResetText = string.Format("{0}:{1:D2}.{2:D2}", minutes, seconds, hundredths);
            }
            else
            {
                //Format as s.ff
                formattedResetText = string.Format("{0}.{1:D2}", seconds, hundredths);
            }

            vars.SetText("Reset Timer:", formattedResetText);
        }
        else
        {
            //If ticksLeft is invalid, don't update the timer
            //vars.RemoveText("Reset Timer:");
        }
    }
    else
    {
        vars.RemoveText("Reset Timer:");
    }
}

    //Darkness
    if (settings["Darkness"])
    {
        // Calculate how much left until max darkness value (4194303)
        long remainingDarkness = 4194303L - current.darknessTime;

        // Format the number with commas for readability
        string darknessText = string.Format("({1})        {0} / 4194303", current.darknessTime, remainingDarkness);
        vars.SetText("Darkness:", darknessText);
    }
    else
    {
        vars.RemoveText("Darkness:");
    }

    // Update Box Hits Moon counter
    if (settings["Box Hits Moon"])
    {
        if (current.BoxHitsMoon != vars.oldBoxHitsMoon && current.BoxHitsMoon == 1)
        {
            vars.boxHitsMoonCount++; // Increment the counter
        }

        // Update the old value tracker
        vars.oldBoxHitsMoon = current.BoxHitsMoon;

        // Display the box hit count
        vars.SetText("Box hits Moon:", vars.boxHitsMoonCount);
    }
    else
    {
        vars.RemoveText("Box hits Moon:");
    }

    // Update Box Hits Nacht counter
    if (settings["Box Hits Nacht"])
    {
        if (current.BoxHitsNacht != vars.oldBoxHitsNacht && current.BoxHitsNacht == 1)
        {
            vars.boxHitsNachtCount++; // Increment the counter
        }

        // Update the old value tracker
        vars.oldBoxHitsNacht = current.BoxHitsNacht;

        // Display the box hit count
        vars.SetText("Box hits Nacht:", vars.boxHitsNachtCount);
    }
    else
    {
        vars.RemoveText("Box hits Nacht:");
    }

    // Update Box Hits Verruckt counter
    if (settings["Box Hits Verruckt"])
    {
        // Check each Verruckt box location
        if ((old.BoxHitsVerruckt1 != current.BoxHitsVerruckt1 && current.BoxHitsVerruckt1 == 1) ||
            (old.BoxHitsVerruckt2 != current.BoxHitsVerruckt2 && current.BoxHitsVerruckt2 == 1) ||
            (old.BoxHitsVerruckt3 != current.BoxHitsVerruckt3 && current.BoxHitsVerruckt3 == 1) ||
            (old.BoxHitsVerruckt4 != current.BoxHitsVerruckt4 && current.BoxHitsVerruckt4 == 1) ||
            (old.BoxHitsVerruckt5 != current.BoxHitsVerruckt5 && current.BoxHitsVerruckt5 == 1))
        {
            vars.boxHitsVerrucktCount++; // Increment the counter
        }

        // Update all old value trackers
        vars.oldBoxHitsVerruckt1 = current.BoxHitsVerruckt1;
        vars.oldBoxHitsVerruckt2 = current.BoxHitsVerruckt2;
        vars.oldBoxHitsVerruckt3 = current.BoxHitsVerruckt3;
        vars.oldBoxHitsVerruckt4 = current.BoxHitsVerruckt4;
        vars.oldBoxHitsVerruckt5 = current.BoxHitsVerruckt5;

        // Display the box hit count
        vars.SetText("Box hits Verruckt:", vars.boxHitsVerrucktCount);
    }
    else
    {
        vars.RemoveText("Box hits Verruckt:");
    }

    if (vars.justGotWW) 
    {
    vars.wwCooldown = 10; // 10 frames cooldown
    } else if (vars.wwCooldown > 0) {
        vars.wwCooldown--;
    }

    /*if (settings["Wonder Weapon Average"] && current.currentMap == "zm_asylum")
    {
        // Handle cooldown
        if (vars.justGotWW) 
        {
            vars.wwCooldown = 10; // 10 frames cooldown
            vars.justGotWW = false;
        } 
        else if (vars.wwCooldown > 0) 
        {
            vars.wwCooldown--;
        }

        // Check if we got WW from box (BoxWeaponID changed to 107)
        bool gotWWFromBox = (old.BoxWeaponID != current.BoxWeaponID && current.BoxWeaponID == 107 && vars.wwCooldown == 0);

        // Check if we're holding WW (currentWeaponID = 107)
        bool holdingWW = (current.currentWeaponID == 107);

        // Check for box hits (any Verruckt box location)
        bool boxWasHit = (old.BoxHitsVerruckt1 != current.BoxHitsVerruckt1 && current.BoxHitsVerruckt1 == 1) ||
                        (old.BoxHitsVerruckt2 != current.BoxHitsVerruckt2 && current.BoxHitsVerruckt2 == 1) ||
                        (old.BoxHitsVerruckt3 != current.BoxHitsVerruckt3 && current.BoxHitsVerruckt3 == 1) ||
                        (old.BoxHitsVerruckt4 != current.BoxHitsVerruckt4 && current.BoxHitsVerruckt4 == 1) ||
                        (old.BoxHitsVerruckt5 != current.BoxHitsVerruckt5 && current.BoxHitsVerruckt5 == 1);

        // Count box hits while searching for WW
        if (vars.searchingForWW && boxWasHit)
        {
            vars.wwCurrentHits++;
        }

        // When we get WW from box
        if (gotWWFromBox && vars.searchingForWW)
        {
            vars.wwObtainedCount++;
            vars.wwBoxHitsTotal += vars.wwCurrentHits;
            vars.wwAverageHits = (float)vars.wwBoxHitsTotal / vars.wwObtainedCount;
            vars.justGotWW = true;
            vars.flashFrames = 30;
            vars.searchingForWW = false;
            vars.wwCurrentHits = 0;
        }

        // Start searching when we lose WW (either by swapping weapons or box hit)
        if (!holdingWW && old.currentWeaponID == 107)
        {
            vars.searchingForWW = true;
        }

        // Flash effect display
        string wwText;
        if (vars.flashFrames > 0)
        {
            vars.flashFrames--;
            bool flashState = (vars.flashFrames / 5) % 2 == 0;
            wwText = flashState ? ">>> " + vars.wwAverageHits.ToString("F1") + " <<<" 
                               : "Avg: " + vars.wwAverageHits.ToString("F1");
        }
        else
        {
            wwText = "Avg: " + vars.wwAverageHits.ToString("F1");
        }

        wwText += " (Cur: " + vars.wwCurrentHits + ", Got: " + vars.wwObtainedCount + ")";
        vars.SetText("WW Average:", wwText);
        print("BoxWeaponID: " + current.BoxWeaponID + ", currentWeaponID: " + current.currentWeaponID + ", searching: " + vars.searchingForWW);
    }
    else
    {
        vars.RemoveText("WW Average:");
    }*/

    if (settings["Clear Counters"])
    {
        // Clear existing counters
        vars.boxHitsMoonCount = 0;
        vars.boxHitsNachtCount = 0;
        vars.boxHitsVerrucktCount = 0;
        vars.ragsSlamsCounter = 0;
        vars.nadeCounter = 0;
        vars.valksCounter = 0;
        vars.hitmarkerCounter = 0;

        // Clear WW counters
        vars.wwBoxHitsTotal = 0;
        vars.wwObtainedCount = 0;
        vars.wwAverageHits = 0;
        vars.wwCurrentHits = 0;

        // Save the reset values to file
        string[] lines = {
            "Moon Hits: 0",
            "Nacht Hits: 0", 
            "Verruckt Hits: 0",
            "Rags Slams: 0",
            "Nade Count: 0",
            "Valk Count: 0",
            "WW Total Hits: 0",
            "WW Obtained: 0",
            "WW Average: 0"
        };
        File.WriteAllLines(vars.boxHitsFilePath, lines);

        vars.SetText("Counters Cleared! You can uncheck me now!", "");
    }
    else
    {
        vars.RemoveText("Counters Cleared! You can uncheck me now!");
    }


    // Trap Timers
    if (settings["Trap Timers"])
    {
        var data = new Dictionary<string, Dictionary<string, object>>
        {
            {"bunker",     new Dictionary<string, object> { {"value", 176}, {"displayName", "Bunker Trap"} }},
            {"kinoft",     new Dictionary<string, object> { {"value", 2},   {"displayName", "Fire Trap"} }},
            {"m8room",     new Dictionary<string, object> { {"value", 3},   {"displayName", "M8 Trap"} }},
            {"camptrap",   new Dictionary<string, object> { {"value", 280}, {"displayName", "Verruckt Trap"} }},
            {"comm",       new Dictionary<string, object> { {"value", 147}, {"displayName", "Comm Room Trap"} }},
            {"doc",        new Dictionary<string, object> { {"value", 49},  {"displayName", "Doctor's Quarters Trap"} }},
            {"fishing",    new Dictionary<string, object> { {"value", 48},  {"displayName", "Fishing Hut Trap"} }},
            {"storage",    new Dictionary<string, object> { {"value", 146}, {"displayName", "Storage Trap"} }},
            {"bridge",     new Dictionary<string, object> { {"value", 145}, {"displayName", "Bridge Trap"} }},
            {"jugtrap",    new Dictionary<string, object> { {"value", 147}, {"displayName", "Kuda Trap"} }},
            {"mkder",      new Dictionary<string, object> { {"value", 146}, {"displayName", "VMP Trap"} }},
            {"doubletap",  new Dictionary<string, object> { {"value", 153}, {"displayName", "Double Tap Trap"} }},
            {"speedcola",  new Dictionary<string, object> { {"value", 154}, {"displayName", "Speed Cola Trap"} }},
            {"vesper",     new Dictionary<string, object> { {"value", 28},  {"displayName", "Stamin-Up Trap"} }},
            {"kn",         new Dictionary<string, object> { {"value", 27},  {"displayName", "Mule Kick Trap"} }},
            {"courtyard",  new Dictionary<string, object> { {"value", 224}, {"displayName", "Courtyard Trap"} }},
            {"planetrap",  new Dictionary<string, object> { {"value", 164}, {"displayName", "Plane Trap"},{"duration", 1200},{"byteOffset", 20},{"bitMask", 0x10} }},
            {"fantrap",    new Dictionary<string, object> { {"value", 258}, {"displayName", "Fan Trap"},{"duration", 1200},{"byteOffset", 32},{"bitMask", 0x04} }}
        };
    
        foreach (string trapID in data.Keys)
        {
            if (settings[trapID])
            {
                var trapInfo = data[trapID];
                string trapDisplayName = (string)trapInfo["displayName"];
                int trapDuration = trapInfo.ContainsKey("duration") ? (int)trapInfo["duration"] : 2020;

                int currentByteOffset = trapInfo.ContainsKey("byteOffset") ? (int)trapInfo["byteOffset"] : ((int)trapInfo["value"] / 8);
                int currentBitMask = trapInfo.ContainsKey("bitMask") ? (int)trapInfo["bitMask"] : (0x80 >> ((int)trapInfo["value"] % 8));

                bool wasActive = (old.trapData[currentByteOffset] & currentBitMask) != 0;
                bool isActive = (current.trapData[currentByteOffset] & currentBitMask) != 0;

                if (!wasActive && isActive)
                {
                    vars.trapStarts[trapID] = current.levelTime;
                }

                // Calculate remaining time with custom duration
                int remainingTime = trapDuration - (current.levelTime - vars.trapStarts[trapID]);
                if (remainingTime < 0) remainingTime = 0;

                // Format time display
                int totalMilliseconds = remainingTime * 50;
                int minutes = totalMilliseconds / (1000 * 60);
                int seconds = (totalMilliseconds % (1000 * 60)) / 1000;
                int hundredths = (totalMilliseconds % 1000) / 10;

                string formattedTime = string.Format("{0}:{1:D2}:{2:D2}", minutes, seconds, hundredths);
                vars.SetText(trapDisplayName, formattedTime);
            }
            else
            {
                var trapInfo = data[trapID];
                string trapDisplayName = (string)trapInfo["displayName"];
                vars.RemoveText(trapDisplayName);
            }
        }
    }

    // Separate Flogger Trap Logic
    if (settings["flogger"])
    {
        string trapDisplayName = "Flogger Trap";

        // Display the Flogger Trap text component as soon as the setting is enabled
        if (vars.FloggertrapStart == -1540)
        {
            vars.SetText(trapDisplayName, "0:00:00"); // Default value
        }

        if (old.flogger > current.flogger)
        {
            vars.FloggertrapStart = current.levelTime; // Set the start time when the trap is activated
        }

        // Calculate remaining time for the Flogger Trap
        if (vars.FloggertrapStart != -1540 && current.levelTime - vars.FloggertrapStart < 1540)
        {
            int remainingTime = 1540 - (current.levelTime - vars.FloggertrapStart);
            int totalMilliseconds = remainingTime * 50;
            int minutes = totalMilliseconds / (1000 * 60);
            int seconds = (totalMilliseconds % (1000 * 60)) / 1000;
            int hundredths = (totalMilliseconds % 1000) / 10;

            // Format the time as m:ss:ff
            string formattedTime = string.Format("{0}:{1:D2}:{2:D2}", minutes, seconds, hundredths);

            // Display the Flogger Trap timer as a text component
            vars.SetText(trapDisplayName, formattedTime);
        }
        else if (vars.FloggertrapStart != -1540)
        {
            // Reset the trap start time and display default value
            vars.FloggertrapStart = -1540;
            vars.SetText(trapDisplayName, "0:00:00");
        }
    }
    else
    {
        // Remove the Flogger Trap text component if the setting is disabled
        vars.RemoveText("Flogger Trap");
    }
}

split
{
    if (!settings["Enable Splits"])
        return false;

    if (settings["Coop Timer"])
    {
        if (current.round_counter == old.round_counter + 1)
        {
            return true;
        }
    }
    else if (settings["Solo Timer"])
    {
        if (current.round_counter == vars.round_splits[vars.split_index])
        {
            vars.split_index++;
            return true;
        }
        if (old.round_counter != 0 && current.round_counter == old.round_counter + 1)
        {
            return true;
        }
    }
    return false;
}

gameTime
{
    string[] arrayMaps = {
        "zm_zod", "zm_factory", "zm_castle", "zm_island", "zm_stalingrad", 
        "zm_genesis", "zm_prototype", "zm_asylum", "zm_sumpf", "zm_theater", 
        "zm_cosmodrome", "zm_temple", "zm_moon", "zm_tomb"
    };

    if (current.currentMap == "zm_cosmodrome")
    {
        // Check if we came from cp_frontend (initial load)
        if (old.currentMap == "core_frontend")
        {
            // Initial load - start at -10 seconds
            if (settings["Solo Timer"])
            {
                return new TimeSpan(0, 0, 0, 0, vars.trueTime * 50); // -10.00
            }
        }
        else
        {
            // Normal case - start at -5.30
            if (settings["Solo Timer"])
            {
                return new TimeSpan(0, 0, 0, 0, vars.trueTime * 50 + 8000); // -5.30
            }
        }
        return TimeSpan.Zero;
    }

    if (Array.IndexOf(arrayMaps, current.currentMap) == -1 || current.round_counter == 0)
    {
        return TimeSpan.Zero;
    }

    if (settings["Solo Timer"])
    {
        return new TimeSpan(0, 0, 0, 0, vars.trueTime * 50);
    }

    //return TimeSpan.Zero; //Default return if neither mode is active
}

start
{
    if (settings["Coop Timer"])
    {
        if (current.currentMap == "zm_cosmodrome" && vars.timer_start == 0)
        {
            vars.timer_start = 1;
            return true;
        }
        
        if (current.round_counter == 0)
        {
            vars.timer_start = 0;
            vars.split_index = 0;
            vars.maxChildValue = 0;
            vars.CSCmaxChildValue = 0;
        }
        if (current.round_counter == 1 && vars.timer_start == 0)
        {
            System.Threading.Thread.Sleep(200); //Small delay to ensure the timer starts correctly
            vars.timer_start = 1;
            return true;
        }
    }
    else if (settings["Solo Timer"])
    {
        vars.maxChildValue = 0;
        vars.CSCmaxChildValue = 0;
        return true;
    }
    return false;
}

isLoading
{
    if (settings["Coop Timer"])
    {
        if (current.is_paused == 1)
        {
            return true;
        }
        return false;
    }

    if (settings["Solo Timer"])
    {
        return true;
    }
}

reset
{
    if (!settings["Enable Splits"])
        return false;
        
    if (settings["Coop Timer"])
    {
        if (current.round_counter == 0 && old.round_counter != 0)
        {
            vars.timer_start = 0;
            vars.split_index = 1;
            vars.maxChildValue = 0;
            vars.CSCmaxChildValue = 0;
            return true;
        }
    }
    else if (settings["Solo Timer"])
    {
        if (current.round_counter == 0 && old.round_counter != 0)
        {
            vars.split_index = 0;
            vars.maxChildValue = 0;
            vars.CSCmaxChildValue = 0;
            return true;
        }
    }
    return false;
}

exit
{
    // Reuse the same dictionary mapping for text removals
    var textRemovals = new Dictionary<string, string[]>
    {
        {"Reset Value", new string[] {"Reset:", "Remaining:"}},
        {"Entities", new string[] {"Entities:"}},
        {"Child Server Variable", new string[] {"Child GSC:"}},
        {"Child Client Variable", new string[] {"Child CSC:"}},
        {"G-Spawn", new string[] {"G-Spawn:"}},
        {"Hitmarker Counter", new string[] {"Hitmarkers:"}},
        {"Reset Timer", new string[] {"Reset Timer:"}},
        {"com_frametime", new string[] {"com_frametime:"}},
        {"com_frametime_timer", new string[] {"Frame Timer:"}},
        {"Rags Slams Counter", new string[] {"Rags Slams Counter:"}},
        {"Nade Counter", new string[] {"Nade Counter:"}},
        {"Valk Counter", new string[] {"Valk Counter:"}},
        {"Darkness", new string[] {"Darkness:"}},
        {"Box Hits Nacht", new string[] {"Box hits Nacht:"}},
        {"Box Hits Verruckt", new string[] {"Box hits Verruckt:"}},
        {"Box Hits Moon", new string[] {"Box hits Moon:"}},
        {"Clear Counters", new string[] {"Counters Cleared! You can uncheck me now!"}}
    };

    // Process all text removals
    foreach (var item in textRemovals)
    {
        if (settings[item.Key])
        {
            foreach (var text in item.Value)
            {
                vars.RemoveText(text);
            }
        }
    }

    // Handle trap timers if enabled
    if (settings["Trap Timers"])
    {
        var trapData = new Dictionary<string, string>
        {
            {"bunker",     "Bunker Trap"},
            {"kinoft",     "Fire Trap"},
            {"m8room",     "M8 Trap"},
            {"camptrap",   "Verruckt Trap"},
            {"comm",       "Comm Room Trap"},
            {"doc",        "Doctor's Quarters Trap"},
            {"fishing",    "Fishing Hut Trap"},
            {"storage",    "Storage Trap"},
            {"flogger",    "Flogger Trap"},
            {"bridge",     "Bridge Trap"},
            {"jugtrap",    "Kuda Trap"},
            {"mkder",      "VMP Trap"},
            {"doubletap",  "Double Tap Trap"},
            {"speedcola",  "Speed Cola Trap"},
            {"vesper",     "Stamin-Up Trap"},
            {"kn",         "Mule Kick Trap"},
            {"courtyard",  "Courtyard Trap"},
            {"planetrap",  "Plane Trap"},
            {"fantrap",    "Fan Trap"}
        };

        foreach (string trapText in trapData.Values)
        {
            vars.RemoveText(trapText);
        }
    }
}

shutdown
{
    // Create a dictionary mapping setting names to their corresponding text labels
    var textRemovals = new Dictionary<string, string[]>
    {
        {"Reset Value", new string[] {"Reset:", "Remaining:"}},
        {"Entities", new string[] {"Entities:"}},
        {"Child Server Variable", new string[] {"Child GSC:"}},
        {"Child Client Variable", new string[] {"Child CSC:"}},
        {"G-Spawn", new string[] {"G-Spawn:"}},
        {"Hitmarker Counter", new string[] {"Hitmarkers:"}},
        {"Reset Timer", new string[] {"Reset Timer:"}},
        {"com_frametime", new string[] {"com_frametime:"}},
        {"com_frametime_timer", new string[] {"Frame Timer:"}},
        {"Rags Slams Counter", new string[] {"Rags Slams Counter:"}},
        {"Nade Counter", new string[] {"Nade Counter:"}},
        {"Valk Counter", new string[] {"Valk Counter:"}},
        {"Darkness", new string[] {"Darkness:"}},
        {"Box Hits Nacht", new string[] {"Box hits Nacht:"}},
        {"Box Hits Verruckt", new string[] {"Box hits Verruckt:"}},
        {"Box Hits Moon", new string[] {"Box hits Moon:"}},
        {"Clear Counters", new string[] {"Counters Cleared! You can uncheck me now!"}}
    };

    // Process all text removals
    foreach (var item in textRemovals)
    {
        if (settings[item.Key])
        {
            foreach (var text in item.Value)
            {
                vars.RemoveText(text);
            }
        }
    }

    // Handle trap timers if enabled
    if (settings["Trap Timers"])
    {
        var trapData = new Dictionary<string, string>
        {
            {"bunker",     "Bunker Trap"},
            {"kinoft",     "Fire Trap"},
            {"m8room",     "M8 Trap"},
            {"camptrap",   "Verruckt Trap"},
            {"comm",       "Comm Room Trap"},
            {"doc",        "Doctor's Quarters Trap"},
            {"fishing",    "Fishing Hut Trap"},
            {"storage",    "Storage Trap"},
            {"flogger",    "Flogger Trap"},
            {"bridge",     "Bridge Trap"},
            {"jugtrap",    "Kuda Trap"},
            {"mkder",      "VMP Trap"},
            {"doubletap",  "Double Tap Trap"},
            {"speedcola",  "Speed Cola Trap"},
            {"vesper",     "Stamin-Up Trap"},
            {"kn",         "Mule Kick Trap"},
            {"courtyard",  "Courtyard Trap"},
            {"planetrap",  "Plane Trap"},
            {"fantrap",    "Fan Trap"}
        };

        foreach (string trapText in trapData.Values)
        {
            vars.RemoveText(trapText);
        }
    }

    // Save the values with labels to the file
    string[] lines = {
        "Moon Hits: " + vars.boxHitsMoonCount.ToString(),
        "Nacht Hits: " + vars.boxHitsNachtCount.ToString(),
        "Verruckt Hits: " + vars.boxHitsVerrucktCount.ToString(),
        "Rags Slams: " + vars.ragsSlamsCounter.ToString(),
        "Nade Count: " + vars.nadeCounter.ToString(),
        "Valk Count: " + vars.valksCounter.ToString(),
        "Hitmarkers: " + vars.hitmarkerCounter.ToString()
    };
    File.WriteAllLines(vars.boxHitsFilePath, lines);

    string[] wwLines = {
        string.Format("WW Total Hits: {0}", vars.wwBoxHitsTotal),
        string.Format("WW Obtained: {0}", vars.wwObtainedCount),
        string.Format("WW Average: {0}", vars.wwAverageHits)
    };
    File.AppendAllLines(vars.boxHitsFilePath, wwLines);
}