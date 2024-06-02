# Accurate World Map : Gold Road Edition

<p align="center">
  <img src="https://raw.githubusercontent.com/XiokroDarc/AccurateWorldMap/main/previews/Banner.png" width="800">
</p>

Accurate World Map : Gold Road Edition is an addon for the Elder Scrolls Online (ESO) that replaces the in-game world map with a higher quality, and more lore accurate one.

Originally made by Vylaera & Thal-J, now reworked and maintained by Xiokro (me)

## Features

- Lore Friendly, vanilla-style map
- Locations relocated to lore accurate place
- Lore accurate renames of zones
- Descriptions for various zones
- Wayshrine visibility toggle
- Display zone names on map

## Comparison
<p align="center">
  <img src="https://raw.githubusercontent.com/XiokroDarc/AccurateWorldMap/main/previews/Comparison_Aurbis.gif" width="400">
  <img src="https://raw.githubusercontent.com/XiokroDarc/AccurateWorldMap/main/previews/Comparison_Tamriel.gif" width="400">
</p>

## Before Installing Notes
- After the Necrom Chapter the entire codebase was reworked, and most ugly logic code is now in LibMapThemer, if there is a non-visual bug within AccurateWorldMap it's probably from LMT and should be reported [there](https://github.com/XiokroDarc/LibMapThemer/issues).
- Any bugs found in general should be reported to me and not Thal-J or Vylaera

## Dependencies
#### Hard Requirements
Required directly by either AWM or LMT
- [LibMapThemer](https://github.com/XiokroDarc/LibMapThemer)
- [LibGPS](https://www.esoui.com/downloads/info601-LibGPS.html)
- [LibZone](https://www.esoui.com/downloads/info2171-LibZone.html)
- [LibMapPing](https://www.esoui.com/downloads/info1302-LibMapPing.html)

#### Soft Requirements
Required by libraries that this addon or LMT uses
- [LibChatMessage](https://www.esoui.com/downloads/info2382-LibChatMessage.html)
- [LibDebugLogger](https://www.esoui.com/downloads/info2275-LibDebugLogger.html)

## Installation
- Make Sure ESO is closed, the theme may not fully load if ESO is running, even after a /reloadui
- Make sure you have [LibMapThemer](https://github.com/XiokroDarc/LibMapThemer) and their dependencies installed
- Install addon into ESO addon directory
- Enjoy

## Notes
- After installing, the world map will be completely different and almost nothing will be in the same place as before. This is intentional, and may/will break many addons that rely on the placement of the wayshrines.
- Player icons may not align correctly on the world map. This is not a game breaking feature, however until a reliable solution is found, the bug will remain.

## Compatibility
Many addons that add pins to vanilla locations on the world map are not compatible, this is because Accurate World Map moves zones and pins from their vanilla locations and those addons require vanilla positioning.

#### Compatible
- TrueExploration by Shinni
- DarkUI by Sharlikran
- Map Pins by Hoft
- Any addon that doesn't effect the map or wayshrines

#### Partial Compatibility / Unknown
- Votan's Improved Locations by Votan
- More that idk about

#### Not Compatible
- GuildShrines by Valve (the user not the company)
- LoreBooks by Kyoma
- Skyshards by Assembler Maniac
- Destinations by Sharlikran
- Lost Treasurew by Sharlikran
- Any addon that effects the map or wayshrines in any major way

## Known Issues
- PvP battle marks dont respect map changes, this is a LibMapThemer issue
- Various markers may appear in incorrect locations, all these are known and being worked on.
- English only for descriptions and renames.

## Thanks To
- Vylaera & Thal-J for initially creating the addon
- Highly Detailed World Map for the initial spark of map addons
- Anybody who initial help with AccurateWorldMap

## Maintained By
<p align="center">
  <img src="https://raw.githubusercontent.com/XiokroDarc/AccurateWorldMap/main/previews/Xio.png" width="400">
</p>


