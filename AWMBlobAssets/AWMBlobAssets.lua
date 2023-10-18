AWMBlobAssets = {
  name = "AWMBlobAssets",
  prefix = "AccurateWorldMap/AWMBlobAssets",
  dependencies = { LibMapThemer_DataMerge },
  maps = { },
}
local theme = AWMBlobAssets
local maps = theme.maps

-------------
-- TAMRIEL --
maps[27] = { 
   zones = { }, 
   pois = { }, 
   maxZoom = 48, 
   namesVisible = true, 
}

------------
-- AURBIS --
maps[439] = { zones = { }, maxZoom = 4, }