AWMBlobAssets = {
  name = "AWMBlobAssets",
  prefix = "AccurateWorldMap/AWMBlobAssets",
  dependencies = { LibMapThemer_PoiData, LibMapThemer_RenameData },
  maps = { },
}
local theme = AWMBlobAssets
local maps = theme.maps

-------------
-- TAMRIEL --
maps[27] = { zones = { }, pois = { }, maxZoom = 48, }

------------
-- AURBIS --
maps[439] = { zones = { }, }