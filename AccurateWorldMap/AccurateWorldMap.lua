local LMT = LibMapThemer
local LAM = LibAddonMenu2
local theme = AccurateWorldMap

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
      choices = LMT:GetThemesWithDependency("AccurateWorldMap"),
      getFunc = function() return LMT:GetCurrentThemeName() end,
      setFunc = function(value) LMT:SetCurrentThemeByName(value) end,
   },
   {
      type = "checkbox",
      name = "Show Tamriel Names",
      tooltip = "Show Tamriel zones names on the map",
      getFunc = function() return LMT:GetOptions().showTamrielZoneNames end,
      setFunc = function(value) LMT:GetOptions().showTamrielZoneNames = value end
   },
   {
      type = "checkbox",
      name = "Show Aurbis Names",
      tooltip = "Show Aurbis zones names on the map",
      getFunc = function() return LMT:GetOptions().showAurbisZoneNames end,
      setFunc = function(value) LMT:GetOptions().showAurbisZoneNames = value end
   },
   {
      type = "checkbox",
      name = "Disable Renames",
      tooltip = "Disables renaming of zones",
      getFunc = function() return LMT:GetOptions().disableRenames end,
      setFunc = function(value) LMT:GetOptions().disableRenames = value end
   },
   {
      type = "checkbox",
      name = "Disable POI Glow",
      tooltip = "Disables glow around POI",
      getFunc = function() return LMT:GetOptions().pois.disableGlow end,
      setFunc = function(value) LMT:GetOptions().pois.disableGlow = value end
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
      getFunc = function() return LMT:GetOptions().pois.showAll end,
      setFunc = function(value) LMT:GetOptions().pois.showAll = value end
   },
   {
      type = "checkbox",
      name = indent.."Show Major Settlements",
      tooltip = "Shows all major settlements on the map",
      disabled = function() return LMT:GetOptions().pois.showAll end,
      getFunc = function() return LMT:GetOptions().pois.majorSettlements end,
      setFunc = function(value) LMT:GetOptions().pois.majorSettlements = value end,
   },
   {
      type = "checkbox",
      name = indent.."Show Guildtrader Shrines",
      tooltip = "Shows wayshrines next to guild traders on the map",
      disabled = function() return LMT:GetOptions().pois.showAll end,
      getFunc = function() return LMT:GetOptions().pois.guildShrines end,
      setFunc = function(value) LMT:GetOptions().pois.guildShrines = value end,
   },
   {
      type = "checkbox",
      name = indent.."Show Owned Houses",
      tooltip = "Shows any house you own on the Tamriel map",
      disabled = function() return LMT:GetOptions().pois.showAll end,
      getFunc = function() return LMT:GetOptions().pois.ownedHouses end,
      setFunc = function(value) LMT:GetOptions().pois.ownedHouses = value end
   },
   {
      type = "checkbox",
      name = indent.."Show Unowned Houses",
      tooltip = "Shows any house you don't own on the Tamriel map",
      disabled = function() return LMT:GetOptions().pois.showAll end,
      getFunc = function() return LMT:GetOptions().pois.unownedHouses end,
      setFunc = function(value) LMT:GetOptions().pois.unownedHouses = value end
   },
   {
      type = "checkbox",
      name = indent.."Show Trials",
      tooltip = "Shows found trials on the Tamriel map",
      disabled = function() return LMT:GetOptions().pois.showAll end,
      getFunc = function() return LMT:GetOptions().pois.trials end,
      setFunc = function(value) LMT:GetOptions().pois.trials = value end
   },
   {
      type = "checkbox",
      name = indent.."Show Dungeons",
      tooltip = "Shows found dungeons on the Tamriel map",
      disabled = function() return LMT:GetOptions().pois.showAll end,
      getFunc = function() return LMT:GetOptions().pois.dungeons end,
      setFunc = function(value) LMT:GetOptions().pois.dungeons = value end
   },
   {
      type = "checkbox",
      name = indent.."Show Group Arenas",
      tooltip = "Shows 4 man arenas",
      disabled = function() return LMT:GetOptions().pois.showAll end,
      getFunc = function() return LMT:GetOptions().pois.groupArenas end,
      setFunc = function(value) LMT:GetOptions().pois.groupArenas = value end,
   },
   {
      type = "checkbox",
      name = indent.."Show Solo Arenas",
      tooltip = "Shows solo arenas",
      disabled = function() return LMT:GetOptions().pois.showAll end,
      getFunc = function() return LMT:GetOptions().pois.soloArenas end,
      setFunc = function(value) LMT:GetOptions().pois.soloArenas = value end,
   },
}

EVENT_MANAGER:RegisterForEvent(theme.name, EVENT_ADD_ON_LOADED, function (_, addonName)
   if (addonName ~= theme.name) then return end
   EVENT_MANAGER:UnregisterForEvent(addonName, EVENT_ADD_ON_LOADED)
   LAM:RegisterAddonPanel(panelName, panelData)
   LAM:RegisterOptionControls(panelName, optionsData)
   LMT:SetCurrentThemeByName(theme.name)
end)

CALLBACK_MANAGER:RegisterCallback("OnWorldMapChanged", function()
   local theme = LMT:GetCurrentTheme()
   if (theme) then theme:DisableRenames(LMT:GetOptions().disableRenames) end

   local map = LMT:GetCurrentMap()
   if (map) then 
      if (map:GetMapId() == 27) then map:SetZoneNameVisibility(LMT:GetOptions().showTamrielZoneNames) end
      if (map:GetMapId() == 439) then map:SetZoneNameVisibility(LMT:GetOptions().showAurbisZoneNames) end
   end
end)