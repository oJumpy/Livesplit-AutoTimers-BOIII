state("blackops3", "BO3 Steam")
{
    int levelTime : 0xA5502C0;
    int round_counter : 0xA55BDEC;
    string13 currentMap : 0x940C5E8;
    byte is_paused : 0x347EE08;
    int resetTime : 0x176F9358;
    byte zombie_killed : 0x4A115A8;
    int darknessTime : 0x10B315E4;
        int fixedoffsetDarkness : 0x10;
    int BoxHitsMoon : 0x47CAB3C;
    int BoxHitsNacht : 0x47CB2E4;
    byte36 trapData : 0xA55BDF1;
    byte flogger : 0x4713774;
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
    byte36 trapData : "blackops3.exe", 0xA55BDF1;
    byte flogger : "blackops3.exe", 0x4713774;
}

startup
{
    //Solo Timer
    settings.Add("Solo Timer", true);

    //Coop Timer
    settings.Add("Coop Timer", false);
    settings.SetToolTip("Coop Timer", "Use for Coop, so you can pause the timer");

    //Reset Timer Option (Parent Setting)
    settings.Add("Reset Timer Option", true);

        //Subcategories for Reset Timer Option
        settings.Add("Reset Timer Text", false, "Reset Timer Text", "Reset Timer Option");
        settings.SetToolTip("Reset Timer Text", "Show Raw Reset Values");

        settings.Add("Reset Timer", false, "Reset Timer", "Reset Timer Option");

    //Darkness Timer
    settings.Add("Darkness", false);
    settings.SetToolTip("Darkness", "Show Darkness values");

    //Box Hits
    settings.Add("Box Hits", false);
        settings.Add("Box Hits Nacht", false, "Box Hits Nacht", "Box Hits");
        settings.Add("Box Hits Moon", false, "Box Hits Moon", "Box Hits");
    
    settings.Add("Reset Box Hits", false);

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
        if (lines.Length >= 2)
        {
            vars.boxHitsMoonCount = int.Parse(lines[0]);
            vars.boxHitsNachtCount = int.Parse(lines[1]);
        }
    }
    else
    {
        // Initialize to 0 if the file doesn't exist
        vars.boxHitsMoonCount = 0;
        vars.boxHitsNachtCount = 0;
    }

    // Existing box hits initialization...
    vars.oldBoxHitsMoon = 0;
    vars.oldBoxHitsNacht = 0;
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

            default:
                version = "Unknown";
                break;
        }
    
    refreshRate = 100;
    
    if (settings["Trap Timers"])
    {
        vars.trapStarts = new Dictionary<string, int>();
        foreach (string trapID in new string[] { "bunker", "kinoft", "m8room", "camptrap", "comm", "doc", "fishing", "storage", "flogger", "bridge", "jugtrap", "mkder", "doubletap", "speedcola", "vesper", "kn", "courtyard" })
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

    if (settings["Reset Timer Option"])
    {
        vars.startTime = current.levelTime;
        vars.startReset = current.resetTime;
        vars.elapsedReset = 9999999;
        vars.elapsedTime = 1;
    }
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

    if (settings["Reset Timer Option"])
    {
        if (old.zombie_killed == 0 && current.zombie_killed == 1)
        {
            vars.elapsedTime = vars.startTime - current.levelTime;
            vars.elapsedReset = vars.startReset - current.resetTime;
    
            vars.startTime = current.levelTime;
            vars.startReset = current.resetTime;
        }
    
        //Update Reset Timer Text Component (only if setting is enabled)
        if (settings["Reset Timer Text"])
        {
            vars.resetPerTick = vars.elapsedReset / vars.elapsedTime;
            vars.ticksLeft = (2147483647.0 - current.resetTime) / vars.resetPerTick;
            string resetText = current.resetTime.ToString() + " / 2147483647"; //Raw reset time
            vars.SetText("Reset:", resetText);
        }
        else
        {
            vars.RemoveText("Reset:");
        }
    
        //Update Formatted Reset Timer (only if setting is enabled)
        if (settings["Reset Timer"])
        {
            vars.resetPerTick = vars.elapsedReset / vars.elapsedTime;
            vars.ticksLeft = (2147483647.0 - current.resetTime) / vars.resetPerTick;
    
            //Calculate the time from ticksLeft
            double totalMilliseconds = vars.ticksLeft * 50;
    
            //Calculate hours, minutes, seconds, and milliseconds manually
            int hours = (int)(totalMilliseconds / (1000 * 60 * 60));
            int minutes = (int)((totalMilliseconds % (1000 * 60 * 60)) / (1000 * 60));
            int seconds = (int)((totalMilliseconds % (1000 * 60)) / 1000);
            int milliseconds = (int)(totalMilliseconds % 1000);
    
            //Format the time as hhh:mm:ss.fff using string.Format
            string formattedResetText = string.Format("{0:D3}:{1:D2}:{2:D2}.{3:D3}", hours, minutes, seconds, milliseconds);
    
            vars.SetText("Reset Timer:", formattedResetText);
        }
        else
        {
            vars.RemoveText("Reset Timer:");
        }
    }

    //Darkness
    if (settings["Darkness"])
        {
            vars.DarknesstrueTime = current.darknessTime - current.fixedoffsetDarkness;
            string resetText = current.darknessTime.ToString() + " / 4194303"; //Raw reset time
            vars.SetText("Darkness:", resetText);
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

    if (settings["Reset Box Hits"])
    {
        vars.boxHitsMoonCount = 0;
        vars.boxHitsNachtCount = 0;
        settings["Reset Box Hits"] = false; // Reset the button state

        // Save the reset values to file
        string[] lines = { vars.boxHitsMoonCount.ToString(), vars.boxHitsNachtCount.ToString() };
        File.WriteAllLines(vars.boxHitsFilePath, lines);
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
            {"courtyard",  new Dictionary<string, object> { {"value", 224}, {"displayName", "Courtyard Trap"} }}
        };

        int byteOffset = 0;
        int bitMask = 0;

        foreach (string trapID in data.Keys)
        {
            if (settings[trapID])
            {
                var trapInfo = data[trapID];
                int trapValue = (int)trapInfo["value"];
                string trapDisplayName = (string)trapInfo["displayName"];

                byteOffset = trapValue / 8;
                bitMask = 0x80 >> trapValue % 8;

                // Check if the trap has been activated
                if ((old.trapData[byteOffset] & bitMask) < (current.trapData[byteOffset] & bitMask))
                {
                    vars.trapStarts[trapID] = current.levelTime; // Update individual trap start time
                }

                // Calculate the remaining time for the trap
                int remainingTime = 2020 - (current.levelTime - vars.trapStarts[trapID]);
                if (remainingTime < 0)
                {
                    remainingTime = 0;
                }

                // Convert remaining time to m:ss:ff format
                int totalMilliseconds = remainingTime * 50;
                int minutes = totalMilliseconds / (1000 * 60);
                int seconds = (totalMilliseconds % (1000 * 60)) / 1000;
                int hundredths = (totalMilliseconds % 1000) / 10;

                // Format the time as m:ss:ff
                string formattedTime = string.Format("{0}:{1:D2}:{2:D2}", minutes, seconds, hundredths);

                // Display the trap timer as a text component
                vars.SetText(trapDisplayName, formattedTime);
            }
            else
            {
                // Remove the text component if the trap is disabled
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
        vars.RemoveText("Flogger Trap:");
    }
}

split
{
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

    print("Current Map: " + current.currentMap);

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
        if (current.round_counter == 0)
        {
            vars.timer_start = 0;
            vars.split_index = 0;
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
    if (settings["Coop Timer"])
    {
        if (current.round_counter == 0 && old.round_counter != 0)
        {
            vars.timer_start = 0;
            vars.split_index = 1;
            return true;
        }
    }
    else if (settings["Solo Timer"])
    {
        if (current.round_counter == 0 && old.round_counter != 0)
        {
            vars.split_index = 0;
            return true;
        }
    }
    return false;
}

exit
{
    if (settings["Reset Timer Text"])
    {
        vars.RemoveText("Reset:");
    }
    if (settings["Reset Timer"])
    {
        vars.RemoveText("Reset Timer:");
    }
    if (settings["Darkness"])
    {
        vars.RemoveText("Darkness:");
    }
    if (settings["Box Hits Nacht"])
    {
        vars.RemoveText("Box hits Nacht:");
    }
    if (settings["Box Hits Moon"])
    {
        vars.RemoveText("Box hits Moon:");
    }

    if (settings["Trap Timers"])
    {
        var data = new Dictionary<string, string>
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
            {"courtyard",  "Courtyard Trap"}
        };

        foreach (string trapID in data.Keys)
        {
            vars.RemoveText(data[trapID]);
        }
    }
}

shutdown
{
    if (settings["Reset Timer Text"])
    {
        vars.RemoveText("Reset:");
    }
    if (settings["Reset Timer"])
    {
        vars.RemoveText("Reset Timer:");
    }
    if (settings["Darkness"])
    {
        vars.RemoveText("Darkness:");
    }
    if (settings["Box Hits Nacht"])
    {
        vars.RemoveText("Box hits Nacht:");
    }
    if (settings["Box Hits Moon"])
    {
        vars.RemoveText("Box hits Moon:");
    }

    if (settings["Trap Timers"])
    {
        var data = new Dictionary<string, string>
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
            {"courtyard",  "Courtyard Trap"}
        };

        foreach (string trapID in data.Keys)
        {
            vars.RemoveText(data[trapID]);
        }
    }

    string[] lines = { vars.boxHitsMoonCount.ToString(), vars.boxHitsNachtCount.ToString() };
    File.WriteAllLines(vars.boxHitsFilePath, lines);
}