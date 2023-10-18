local LMT = LibMapThemer

AccurateWorldMap = {
   name = "AccurateWorldMap",
   prefix = "AccurateWorldMap/AccurateWorldMap",
   dependencies = { AWMBlobAssets },
   maps = { },
   renames = { },
}
 
local theme = AccurateWorldMap
local prefix = theme.prefix
local maps = theme.maps
local renames = theme.renames

LMT:CreateRename(renames, "Northern Elsweyr", "Anequina")
LMT:CreateRename(renames, "Southern Elsweyr", "Pellitine")
LMT:CreateRename(renames, "Telvanni Peninsula", "Indoril \nHighlands")
 
maps[439] = { tilePath = prefix.."/tiles/aurbis/Aurbis_", }
 
maps[27] = { tilePath = prefix.."/tiles/tamriel/Tamriel_", maxZoom = 12, }
