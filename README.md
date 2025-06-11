# Livesplit-AutoTimers-BOIII
A multi-functional LiveSplit script for Call of Duty: Black Ops 3 Zombies.

# [Download v3.9](https://github.com/oJumpy/Livesplit-AutoTimers-BOIII/releases/download/v3.9/Black-Ops-3_v3.9.asl)

### [DOA Version download v3.4](https://github.com/oJumpy/Livesplit-AutoTimers-BOIII/releases/download/v3.4/Black-Ops-3-Master.DOA.asl)
#### Recommended DOA Splits
- For optimal functionality with the DOA version, please use the [DOA Splits file](https://github.com/oJumpy/Livesplit-AutoTimers-BOIII/releases/download/v3.4/DOA.Splits.lss). This ensures the timer follows DOA's specific splitting logic. See [Setting up Splits](#setting-up-splits) for installation instructions.

## Setup
1. Right Click LiveSplit → Edit Layout → `+` button → Control → Scriptable Auto Splitter → Browse to `Black-Ops-3-Master.asl` and select it.
1. If you want splits, refer to [Setting up Splits](#setting-up-splits) at this point.
1. Right Click LiveSplit → Compare Against → Select `Game Time`, Look down to where it says: *Best Segments*, *Average Segments*...
1. If you are using BOIII Client, you need to use a specific version of it. [BOIII Community v1.0.6](https://gitlab.com/-/project/69497495/uploads/94f9b379b53f97979f69847a61d1a97d/boiii.exe) 

## Setting up Splits
- Download [Blank Splits to 255](https://github.com/oJumpy/IW7-Zombies-AutoTimers/releases/download/v1/Blank.to.255.lss).
- Right Click LiveSplit → `Open Splits` → `From File...` → Browse to the splits file and select it.

## AutoSplitter Recommendations
- [LiveSplit Components](https://github.com/oJumpy/Livesplit-AutoTimers-BOIII/releases/download/V3.0/Useful.zip)
- [My Layout](https://github.com/oJumpy/IW7-Zombies-AutoTimers/releases/download/v1/recommended_layout.lsl)

![image](https://github.com/user-attachments/assets/bc4814cd-a41c-4bf2-96f1-f2672858ae19)

## Custom Layouts
If you are going to make your own layout, make sure your LiveSplit is comparing against `Game Time` for everything. This includes `Subsplits`, `Splits`, `Timer`, `Detailed Timer`, etc.

For `Timing Method`, I recommend using `Current Timing Method`.

## Coming Soon
- Box hit tracker for all maps, I already got all the addresses, just need to apply the logic.

## Credits
- [Scrappy](https://github.com/Joshr520): Previous auto splitter script for coops.
- [Riot](https://twitch.tv/riot) and Chris4a4: Old Game Timer, Round Timer, Reset Timer, and Trap Timer, which served as base for many of the previous scripts.
- [ROFLailXGOD](https://github.com/ROFLailXGOD/TimerPause): For Livesplit Timer Pause Component


## Known Issues
> [!CAUTION]
> These are some known issues with the timer, and will be fixed in the future.
> ### Saving layouts
> If you save your layout, with some settings enable you will encounter unexpected behavior. Example:
> - Duplicates Reset options and or other settings if enabled.
> - Timer size will get smaller
> ### Solution
> Save your layout only when you first loaded the script or click on `Reset to default` in the bottom right in `Scriptable Auto Splitter`, then save.
> I recommend to never save your layout whenever you enable additional settings.


