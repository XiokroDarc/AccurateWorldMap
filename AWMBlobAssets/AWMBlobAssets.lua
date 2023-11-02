local themeName = "AWMBlobAssets"

_G[themeName] = {
  name = themeName,
  prefix = "AccurateWorldMap/AWMBlobAssets",
  --dependencies = { LibMapThemer_Core },
  maps = { },
}
local theme = _G[themeName]
local maps = theme.maps

-------------
-- TAMRIEL --
maps[27] = { 
   zones = { }, 
   pois = { }, 
}

------------
-- AURBIS --
maps[439] = { 
   customMaxZoom = 6,
   zones = { }, 
}