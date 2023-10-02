local LMT = LibMapThemer

AccurateWorldMap = {
   name = "AccurateWorldMap",
   dependencies = { AWMBlobAssets },
   maps = { },
   renames = { },
}
 
local theme = AccurateWorldMap
local prefix = theme.name
local maps = theme.maps
local renames = theme.renames

renames["Northern Elsweyr"]   = "Anequina"
renames["Southern Elsweyr"]   = "Pellitine"
renames["Telvanni Peninsula"] = "Indoril \nHighlands"
 
maps[439] = { tilePath = prefix.."/tiles/aurbis/Aurbis_", }
 
maps[27] = { tilePath = prefix.."/tiles/tamriel/Tamriel_", maxZoom = 12, }

LMT:LoadTheme(AccurateWorldMap)
