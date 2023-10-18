--local LMT = LibMapThemer
local LAM = LibAddonMenu2
--local theme = AccurateWorldMap
local theme = LibMapThemer:LoadTheme(AccurateWorldMap)
local panelName = "AccurateWorldMap_Settings"

local panelData = {
   type = "panel",
   name = "Accurate World Map",
   displayName = "Accurate World Map",
   author = "|C8587FF@Thal-J|r (EU) & |C7851A9@XiokroDarc|r (NA) & |C42ffbd@Vylaera|r (NA)",
   registerForRefresh = true,
   registerForDefaults = true,
   slashCommand = "/accurateworldmap",
   website = "https://www.esoui.com/downloads/info3377-AccurateWorldMap.html#info",
   --feedback = "https://www.esoui.com/portal.php?id=XXX&a=bugreport",
   --donation = "",
}

local indent = "    "
local optionsData = {
   {
      type = "header",
      name = "Themes",
      width = "full",
   },
   {
      type = "dropdown",
      name = "Map Theme",
      tooltip = "Choose the map theme.",
      warning = "Disable theme before uninstalling",
      choices = LibMapThemer:GetThemesWithDependency("AccurateWorldMap"),
      getFunc = function() return LibMapThemer:GetCurrentThemeName() end,
      setFunc = function(value) LibMapThemer:SetCurrentThemeByName(value) end,
   },
   

   {
      type = "checkbox",
      name = "Show Tamriel Names",
      tooltip = "Show Tamriel zones names on the map",
      getFunc = function() return theme:GetOptions().showTamrielZoneNames end,
      setFunc = function(value) theme:GetOptions().showTamrielZoneNames = value end
   },
   {
      type = "checkbox",
      name = "Show Aurbis Names",
      tooltip = "Show Aurbis zones names on the map",
      getFunc = function() return theme:GetOptions().showAurbisZoneNames end,
      setFunc = function(value) theme:GetOptions().showAurbisZoneNames = value end
   },
   {
      type = "checkbox",
      name = "Disable Renames",
      warning = "May break some themes",
      tooltip = "Disables renaming of zones",
      getFunc = function() return theme:GetOptions().disableRenames end,
      setFunc = function(value) theme:GetOptions().disableRenames = value end
   },
   {
      type = "checkbox",
      name = "Zone Story Index",
      tooltip = "Numbers story line zones",
      disabled = function() return theme:GetOptions().disableRenames end,
      getFunc = function() return theme:GetOptions().storyIndexes end,
      setFunc = function(value) theme:GetOptions().storyIndexes = value end
   },


   {
      type = "dropdown",
      name = "Font Style",
      tooltip = "Theme Font Style",
      choices = LibMapThemer:GetValidFonts(),
      getFunc = function() return theme:GetOptions().fontName end,
      setFunc = function(value) theme:GetOptions().fontName = value end,
   },
   {
      type = "slider",
      name = "Font Size",
      tooltip = "Theme Font Size",
      min = 8, max = 54,
      getFunc = function() return theme:GetOptions().fontSize end,
      setFunc = function(value) theme:GetOptions().fontSize = LibMapThemer:ClampFont(value) end
   },


   
   {
      type = "header",
      name = "Tamriel Fast Travel Nodes",
      width = "full",
   },
   {
      type = "checkbox",
      name = "Show All",
      warning = "Disable to use options",
      tooltip = "Shows all pins that are on the Tamriel map",
      getFunc = function() return theme:GetOptions().pois.showAll end,
      setFunc = function(value) theme:GetOptions().pois.showAll = value end
   },
   {
      type = "checkbox",
      name = indent.."Show Major Settlements",
      tooltip = "Shows all major settlements on the map",
      disabled = function() return theme:GetOptions().pois.showAll end,
      getFunc = function() return theme:GetOptions().pois.majorSettlements end,
      setFunc = function(value) theme:GetOptions().pois.majorSettlements = value end,
   },
   {
      type = "checkbox",
      name = indent.."Show Guildtrader Shrines",
      tooltip = "Shows wayshrines next to guild traders on the map",
      disabled = function() return theme:GetOptions().pois.showAll end,
      getFunc = function() return theme:GetOptions().pois.guildShrines end,
      setFunc = function(value) theme:GetOptions().pois.guildShrines = value end,
   },
   {
      type = "checkbox",
      name = indent.."Show Owned Houses",
      tooltip = "Shows any house you own on the Tamriel map",
      disabled = function() return theme:GetOptions().pois.showAll end,
      getFunc = function() return theme:GetOptions().pois.ownedHouses end,
      setFunc = function(value) theme:GetOptions().pois.ownedHouses = value end
   },
   {
      type = "checkbox",
      name = indent.."Show Unowned Houses",
      tooltip = "Shows any house you don't own on the Tamriel map",
      disabled = function() return theme:GetOptions().pois.showAll end,
      getFunc = function() return theme:GetOptions().pois.unownedHouses end,
      setFunc = function(value) theme:GetOptions().pois.unownedHouses = value end
   },
   {
      type = "checkbox",
      name = indent.."Show Trials",
      tooltip = "Shows found trials on the Tamriel map",
      disabled = function() return theme:GetOptions().pois.showAll end,
      getFunc = function() return theme:GetOptions().pois.trials end,
      setFunc = function(value) theme:GetOptions().pois.trials = value end
   },
   {
      type = "checkbox",
      name = indent.."Show Dungeons",
      tooltip = "Shows found dungeons on the Tamriel map",
      disabled = function() return theme:GetOptions().pois.showAll end,
      getFunc = function() return theme:GetOptions().pois.dungeons end,
      setFunc = function(value) theme:GetOptions().pois.dungeons = value end
   },
   {
      type = "checkbox",
      name = indent.."Show Group Arenas",
      tooltip = "Shows 4 man arenas",
      disabled = function() return theme:GetOptions().pois.showAll end,
      getFunc = function() return theme:GetOptions().pois.groupArenas end,
      setFunc = function(value) theme:GetOptions().pois.groupArenas = value end,
   },
   {
      type = "checkbox",
      name = indent.."Show Solo Arenas",
      tooltip = "Shows solo arenas",
      disabled = function() return theme:GetOptions().pois.showAll end,
      getFunc = function() return theme:GetOptions().pois.soloArenas end,
      setFunc = function(value) theme:GetOptions().pois.soloArenas = value end,
   },
}

EVENT_MANAGER:RegisterForEvent(theme:GetName(), EVENT_ADD_ON_LOADED, function (_, addonName)
   if (addonName ~= theme:GetName()) then return end
   EVENT_MANAGER:UnregisterForEvent(addonName, EVENT_ADD_ON_LOADED)
   LAM:RegisterAddonPanel(panelName, panelData)
   LAM:RegisterOptionControls(panelName, optionsData)
   LibMapThemer:SetCurrentThemeByName(theme:GetName())
end)

CALLBACK_MANAGER:RegisterCallback("OnWorldMapChanged", function()
   theme:SetRenamesDisabled(theme:GetOptions().disableRenames)
   local map = theme:GetCurrentMap()
   if (map) then 
      if (map:GetMapId() == 27)  then map:SetNameVisibility(theme:GetOptions().showTamrielZoneNames) end
      if (map:GetMapId() == 439) then map:SetNameVisibility(theme:GetOptions().showAurbisZoneNames) end
   end
end)