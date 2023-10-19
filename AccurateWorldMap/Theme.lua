local LMT = LibMapThemer

local themeName = "AccurateWorldMap"

_G[themeName] = {
   name = themeName,
   prefix = "AccurateWorldMap/AccurateWorldMap",
   dependencies = { AWMBlobAssets },
   maps = { },
   renames = { },
}
 
local theme = _G[themeName]
local prefix = theme.prefix
local maps = theme.maps
local renames = theme.renames

renames["Northern Elsweyr"] = "Anequina"
renames["Southern Elsweyr"] = "Pellitine"
renames["Telvanni Peninsula"] =  "Indoril \nHighlands"
 
maps[439] = { tilePath = prefix.."/tiles/aurbis/Aurbis_", }
 
maps[27] = { tilePath = prefix.."/tiles/tamriel/Tamriel_", maxZoom = 12, }
