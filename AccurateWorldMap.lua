local LAM = LibAddonMenu2
local LMT = LibMapThemer
local theme = LMT:CreateTheme(_G["AccurateWorldMap"])

local panelName, panelData = theme:GetLAMPanelData()

--Indents
local idnt = "    "
--Options
local optionsData = {
   {
      type = "header",
      name = "Options",
      width = "full",
   },
   {
      type = "checkbox",
      name = "Show Aurbis Names",
      tooltip = "Show Aurbis zones names on the map",
      getFunc = function ( ) return theme:GetOptions().aurbisZoneNames end,
      setFunc = function (value) theme:GetOptions().aurbisZoneNames = value end
   },   
   {
      type = "checkbox",
      name = "Show Tamriel Names",
      tooltip = "Show Tamriel zones names on the map",
      getFunc = function ( ) return theme:GetOptions().tamrielZoneNames end,
      setFunc = function ( value ) theme:GetOptions().tamrielZoneNames = value end
   },
   {
      type = "checkbox",
      name = "Show Story Indexes",
      tooltip = "Show optional story index tag",
      disabled = function ( ) return not theme:GetOptions().tamrielZoneNames end,
      getFunc = function ( ) return theme:GetOptions().storyIndexes end,
      setFunc = function (value) theme:GetOptions().storyIndexes = value end
   },
   {
      type = "checkbox",
      name = "Show Renames",
      tooltip = "Shows renaming of zone",
      getFunc = function ( ) return theme:GetOptions().renames end,
      setFunc = function (value) theme:GetOptions().renames = value end
   },
   {
      type = "checkbox",
      name = "Show Descriptions",
      tooltip = "Show descriptions of zones",
      getFunc = function ( ) return theme:GetOptions().mapDescriptions end,
      setFunc = function (value) theme:GetOptions().mapDescriptions = value end
   },
   {
      type = "checkbox",
      name = "Show Zone Hover Fades",
      tooltip = "Show a fade when hovering over the map",
      getFunc = function ( ) return theme:GetOptions().hoverFadeEffect end,
      setFunc = function (value) theme:GetOptions().hoverFadeEffect = value end
   },
   {
      type = "checkbox",
      name = "Disable POI Glow",
      tooltip = "Disables glow around POI",
      getFunc = function ( ) return theme:GetOptions().disablePoiGlow end,
      setFunc = function (value) theme:GetOptions().disablePoiGlow = value end
   },

   {
      type = "checkbox",
      name = "Show All Pois",
      warning = "Disable to use below options",
      tooltip = "Shows all pins that are on the Tamriel map (default settings)",
      getFunc = function ( ) return theme:GetOptions().showAllPois end,
      setFunc = function (value) theme:GetOptions().showAllPois = value end
   },
   {
      type = "header",
      name = "Poi Visibility Settings",
      width = "full",
   },
   {
      type = "checkbox",
      name = idnt.."Show Major Settlements",
      tooltip = "Shows all major settlements on the map",
      disabled = function ( ) return theme:GetOptions().showAllPois end,
      getFunc = function ( ) return theme:GetOptions().pois.majorSettlements end,
      setFunc = function (value) theme:GetOptions().pois.majorSettlements = value end,
   },
   {
      type = "checkbox",
      name = idnt.."Show Guildtrader Shrines",
      tooltip = "Shows wayshrines next to guild traders on the map",
      disabled = function ( ) return theme:GetOptions().showAllPois end,
      getFunc = function ( ) return theme:GetOptions().pois.guildShrines end,
      setFunc = function (value) theme:GetOptions().pois.guildShrines = value end,
   },
   {
      type = "checkbox",
      name = idnt.."Show Owned Houses",
      tooltip = "Shows any house you own on the Tamriel map",
      disabled = function ( ) return theme:GetOptions().showAllPois end,
      getFunc = function ( ) return theme:GetOptions().pois.ownedHouses end,
      setFunc = function (value) theme:GetOptions().pois.ownedHouses = value end
   },
   {
      type = "checkbox",
      name = idnt.."Show Unowned Houses",
      tooltip = "Shows any house you don't own on the Tamriel map",
      disabled = function ( ) return theme:GetOptions().showAllPois end,
      getFunc = function ( ) return theme:GetOptions().pois.unownedHouses end,
      setFunc = function (value) theme:GetOptions().pois.unownedHouses = value end
   },
   {
      type = "checkbox",
      name = idnt.."Show Solo Arenas",
      tooltip = "Shows solo arenas",
      disabled = function ( ) return theme:GetOptions().showAllPois end,
      getFunc = function ( ) return theme:GetOptions().pois.soloArenas end,
      setFunc = function (value) theme:GetOptions().pois.soloArenas = value end,
   },
   {
      type = "checkbox",
      name = idnt.."Show Group Arenas",
      tooltip = "Shows 4 man arenas",
      disabled = function ( ) return theme:GetOptions().showAllPois end,
      getFunc = function ( ) return theme:GetOptions().pois.groupArenas end,
      setFunc = function (value) theme:GetOptions().pois.groupArenas = value end,
   },
   {
      type = "checkbox",
      name = idnt.."Show Dungeons",
      tooltip = "Shows found dungeons on the Tamriel map",
      disabled = function ( ) return theme:GetOptions().showAllPois end,
      getFunc = function ( ) return theme:GetOptions().pois.dungeons end,
      setFunc = function (value) theme:GetOptions().pois.dungeons = value end
   },
   {
      type = "checkbox",
      name = idnt.."Show Trials",
      tooltip = "Shows found trials on the Tamriel map",
      disabled = function ( ) return theme:GetOptions().showAllPois end,
      getFunc = function ( ) return theme:GetOptions().pois.trials end,
      setFunc = function (value) theme:GetOptions().pois.trials = value end
   },
}

EVENT_MANAGER:RegisterForEvent(theme:GetName(), EVENT_ADD_ON_LOADED, function (_, addonName)
   if (addonName ~= theme:GetName()) then return end
   EVENT_MANAGER:UnregisterForEvent(addonName, EVENT_ADD_ON_LOADED)
   LAM:RegisterAddonPanel(panelName, panelData)
   LAM:RegisterOptionControls(panelName, optionsData)
   theme:Enable()
end)
