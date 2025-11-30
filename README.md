# md-houserobberies version 2.9
Forked from <a href="https://github.com/Mustachedom/md-houserobberies">md-houserobberies version 2.8 on GitHub</a>

## What's New in 2.9

## Requires 
- Qb-Core or Qbox 
- [ps-ui](https://github.com/Project-Sloth/ps-ui)
- [k4mb1 free shells](https://forum.cfx.re/t/free-props-starter-shells-for-housing-scripts/4826922)

# False Alarm System

## Overview
The false alarm system allows players to trigger fake robbery alerts at houses to divert police attention. This can be used strategically to create diversions while robbing other locations or to simply mess with law enforcement.

## How It Works

### Configuration
Located in `config.lua`:
```lua
Config.FalseAlarm = {
    enabled = true,              -- Enable/disable false alarm system
    item = 'alarm_trigger',      -- Item name needed to trigger false alarms
    range = 150.0,               -- Distance from player to trigger alarm at a house
    duration = 120000,           -- How long police are diverted (2 minutes in ms)
    policeAlert = true,          -- Should this alert police?
    usageChance = 85,            -- Chance the item doesn't break when used (85% keep item)
}
```

### Using the False Alarm Device

1. **Obtain the Device**: Players need to acquire the `alarm_trigger` item
2. **Get Near a House**: Stand within 150 meters of a house that is NOT currently being robbed
3. **Use the Device**: Use the alarm_trigger item from your inventory
4. **Wait for Setup**: A 5-second progress bar will complete the setup
5. **Alert Triggered**: Police will receive a robbery alert at that location

### Item Statistics
- **Item Name**: `alarm_trigger`
- **Label**: "False Alarm Device"
- **Weight**: 500
- **Description**: "A device that can trigger false alarms at houses to divert police attention"
- **Image**: alarm_trigger.png (you'll need to add this image)

### Success/Failure
- **85% chance**: The device works and can be used again
- **15% chance**: The device burns out and is consumed

### Installation

1. Add the item to your items file (see `install/qbitems.md` or `install/oxitems.md`)
2. Add the item image `alarm_trigger.png` to your inventory images folder
3. Configure settings in `config.lua` under `Config.FalseAlarm`
4. Restart the resource

### Strategic Uses
- **Diversion**: Trigger an alarm on one side of the map while robbing houses elsewhere
- **Training**: Help police practice responding to calls
- **Trolling**: Simply mess with law enforcement
- **Escape**: Trigger nearby alarms when fleeing to confuse police

### Police Response
- Police will receive the same dispatch alert as a real robbery
- The alert system respects your Config.Dispatch setting (ps-dispatch, cd_dispatch, etc.)
- All on-duty officers will be notified

### Logs
All false alarm triggers are logged with:
- Player ID
- Player name
- House ID where alarm was triggered
- Timestamp

## Tips
- Use false alarms before starting a real robbery to overwhelm police
- Trigger multiple false alarms in sequence to maximize confusion
- The 15% failure rate means you should carry multiple devices
- False alarms only work on houses that aren't already being robbed

## Balancing
Server owners can adjust:
- `usageChance`: Higher = device lasts longer, Lower = more expensive to use
- `range`: How close you need to be to a house
- `policeAlert`: Turn off to disable police notifications (for testing)
- `enabled`: Disable the entire system if needed


### 🔬 r14-Evidence Integration
- Added configurable evidence system support (`Config.Evidence = true/false`)
- Creates **lock tampering evidence** when breaking into houses
- Leaves **fingerprint evidence** when entering houses
- Leaves **fingerprint evidence** when stealing loot
- Police can now collect and analyze forensic evidence from crime scenes

### 🚨 False Alarm System
- **NEW**: Trigger false robbery alerts to divert police attention!
- Use the `alarm_trigger` item near any house (within 150m)
- Creates full dispatch alerts to police - same as real robberies
- 85% chance device survives use, 15% chance it burns out
- Fully configurable in `Config.FalseAlarm`
- Perfect for creating diversions or general chaos
- All false alarms are logged for admin tracking

### 💀 Death Exit System
- **NEW**: Automatic ejection from house if player dies inside
- If you die inside a robbery, you're automatically teleported outside after 2 seconds
- Prevents being stuck dead in the interior
- Works with any death cause (NPCs, other players, suicide, etc.)
- Notification shown when ejected: "You were found outside the house..."
- Tracking variables reset automatically

### 🏠 Built-in Interior System
- **qb-interior is now merged directly into the script** - no external dependency needed!
- All 6 robbery shells built-in (Caravan, Lester, Trevor, House Robbery, Modern Motel, Michael)
- Includes 11 additional shells for compatibility with other scripts
- Provides full qb-interior exports for other resources
- Other scripts can call `exports['md-houserobberies']` instead of qb-interior
- Uses `provide 'qb-interior'` so existing scripts work without modification

### ⚙️ Enhanced Configuration
- `Config.Evidence` - Toggle r14-evidence integration on/off
- `Config.UseQBInterior` - Built-in interior system (always available)
- `Config.InteriorShells` - Easy shell mapping per tier
- `Config.FalseAlarm` - Configure false alarm device settings (range, usage chance, etc.)
- Dynamic shell loading system for better performance

### 📦 What You Can Remove
- ❌ qb-interior (now built-in)
- ❌ @qb-core/shared/locale.lua (not needed)

### 🔧 Technical Improvements
- Cleaner, more maintainable code structure
- Reduced external dependencies
- Better error handling and validation
- Optimized interior spawning/despawning
- Full backwards compatibility maintained

## md-houserobberies version '2.8'
If you need support, go here. Don't spam other discords with my issues. its rude
<div align="center">
  
  <a href="https://discord.gg/sAMzrB4DDx">Mustache Scripts Discord</a><br>
</div>


## Dependencies :

- [qb-core](https://github.com/qbcore-framework/qb-core)

- [ps-ui](https://github.com/Project-Sloth/ps-ui)

- [k4mb1 free shells](https://forum.cfx.re/t/free-props-starter-shells-for-housing-scripts/4826922)

- [ability to read a readme](https://www.hookedonphonics.com/)

## How to install like a boss
**step 1**

- delete qb-houserobbery

**step 2**
- Open the install folder
- **if** you use ox_inventory upload the items from the oxitems.md
- **if** you use any other inventory upload the items from the qbitems.md
- **NEW**: Don't forget the `alarm_trigger` item for the false alarm system!

**step 3**

- Add `alarm_trigger.png` image to your inventory images folder

**step 4**

- Modify `md-houserobberies/config.lua` to your liking


<h1>Fivemerr</h1>
This is NOT a requirement but something I personally use and believe in.


- to integrate with fivemerr make sure you have  ```set fivemerrLogs "API_KEY"```   in your server.cfg
   
- Head to /server/bridge.lua and line 3 turn local logs = true
  
- profit

Why integrate with Fivemerr? Its a great place to store logs as it doesnt rely on discord webhooks and its far easier to search through

As well as a place to offload images and videos from fivem that doesnt rely on discord since discord API will be automatically deleting images and videos after a certain amount of time If you need an invite to their server look below
- [Fivemerr Discord](https://discord.com/invite/fivemerr)
- [Fivemerr Docs](https://docs.fivemerr.com/)
