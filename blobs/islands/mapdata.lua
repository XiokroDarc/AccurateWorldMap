local theme = AccurateWorldMap
local maps = theme.maps
local tamriel = maps[27]
local prefix = theme.prefix
local subfolder = "/blobs/islands/"

-- Eyevea --
tamriel.zones[108] = {
   disableZoneNames = true,
   textureFile = prefix..subfolder.."blob-eyevea.dds",
   bounds = { xN = 0.13671, yN = 0.58471, widthN = 0.019042969, heightN = 0.019042969},
   hitbox = {
      { xN = 0.1507, yN = 0.1973, },
      { xN = 0.0441, yN = 0.4244, },
      { xN = 0.0475, yN = 0.5465, },
      { xN = 0.0848, yN = 0.6924, },
      { xN = 0.2408, yN = 0.8145, },
      { xN = 0.3697, yN = 0.8348, },
      { xN = 0.7903, yN = 0.8077, },
      { xN = 0.8819, yN = 0.7602, },
      { xN = 0.9870, yN = 0.6042, },
      { xN = 0.9429, yN = 0.4685, },
      { xN = 0.8920, yN = 0.3362, },
      { xN = 0.7733, yN = 0.1056, },   
   }
}

-- Stirk --
tamriel.zones[415] = {
   disableZoneNames = true,
   textureFile = prefix..subfolder.."blob-stirk.dds",
   bounds = { xN = 0.31127, yN = 0.5708, widthN = 0.016723633, heightN = 0.016723633, },
   hitbox = {
      { xN = 0.5130, yN = 0.0121, },
      { xN = 0.3333, yN = 0.1086, },
      { xN = 0.1208, yN = 0.3288, },
      { xN = 0.0745, yN = 0.4176, },
      { xN = 0.1517, yN = 0.8386, },
      { xN = 0.3255, yN = 0.9545, },
      { xN = 0.4955, yN = 0.9892, },
      { xN = 0.7233, yN = 0.9892, },
      { xN = 0.8817, yN = 0.9467, },
      { xN = 0.9242, yN = 0.8733, },
      { xN = 0.9551, yN = 0.3597, },
      { xN = 0.6963, yN = 0.1395, },
      { xN = 0.6229, yN = 0.0005, },   
   }
}

-- Tideholm --
--[[
maps[1684] = { parentMapId = 27 }
tamriel.zones[1684] = {
   disableZoneNames = true,
   textureFile = prefix..subfolder.."blob-tideholm.dds",
   bounds = { xN = 0.623, yN = 0.7663, widthN = 0.007, heightN = 0.007 },
   hitbox = {
      { xN = 0.000, yN = 0.000 },
      { xN = 0.000, yN = 0.999 },
      { xN = 0.999, yN = 0.999 },
      { xN = 0.999, yN = 0.000 },
   },
}
--]]

-- Grayhome --
tamriel.zones[1864] = { 
   disableZoneNames = true,
   textureFile = prefix..subfolder.."blob-grayhome.dds",
   bounds = { xN = 0.30175, yN = 0.16748, widthN = 0.017578125, heightN = 0.017578125, },
   hitbox = {
      { xN = 0.4011, yN = 0.0344, },
      { xN = 0.1899, yN = 0.1468, },
      { xN = 0.0833, yN = 0.2460, },
      { xN = 0.0282, yN = 0.4702, },
      { xN = 0.0392, yN = 0.5694, },
      { xN = 0.3332, yN = 0.8927, },
      { xN = 0.5720, yN = 0.9295, },
      { xN = 0.7080, yN = 0.7605, },
      { xN = 0.7007, yN = 0.6282, },
      { xN = 0.9432, yN = 0.6282, },
      { xN = 0.9762, yN = 0.5510, },
      { xN = 0.8623, yN = 0.2644, },
      { xN = 0.4802, yN = 0.0513, },   
   }
}


-- Sword's Rest Isle  --
tamriel.zones[2143] = {
   disableZoneNames = true,
   textureFile = prefix..subfolder.."blob-swordsrestisle.dds",
   bounds = { xN = 0.09387, yN = 0.42419, widthN = 0.012329102, heightN = 0.012329102},
   hitbox = {
      { xN = 0.4815, yN = 0.0905, },
      { xN = 0.1799, yN = 0.2008, },
      { xN = 0.0699, yN = 0.4313, },
      { xN = 0.0751, yN = 0.7089, },
      { xN = 0.3685, yN = 0.9761, },
      { xN = 0.4942, yN = 0.7089, },
      { xN = 0.8714, yN = 0.7666, },
      { xN = 0.9290, yN = 0.6356, },
      { xN = 0.8662, yN = 0.2479, },   
   }
}

-- Norg-Tzel / Swamp Island --
tamriel.zones[1552] = {
   disableZoneNames = true,
   textureFile = prefix..subfolder.."blob-swampisland.dds",
   bounds = { xN = 0.802, yN = 0.78088, widthN = 0.01232, heightN = 0.01232, },
   hitbox = {
      { xN = 0.1655, yN = 0.0209, },
      { xN = 0.0607, yN = 0.0995, },
      { xN = 0.0135, yN = 0.4718, },
      { xN = 0.4067, yN = 0.9698, },
      { xN = 0.8838, yN = 0.7811, },
      { xN = 0.9624, yN = 0.6395, },
      { xN = 0.9519, yN = 0.5347, },
      { xN = 0.7842, yN = 0.4193, },
      { xN = 0.3228, yN = 0.1729, },
      { xN = 0.3175, yN = 0.0419, },   
   }
}

--[[
-- Tempest Island --
maps[292] = { parentId = 27 }
tamriel.pois[188] = { xN = 0.283, yN = 0.617 }
tamriel.zones[292] = {
   hideName = true,
   blob = {
      textureFile = prefix.."/blobs/aldmeri/blob-tempestisland.dds",
      bounds = { xN = 0.277, yN = 0.6104, },
   },
}
--]]

--[[
-- Firemoth Island --
maps[1248] = { parentId = 27 }
tamriel.zones[1248] = {
   namesHidden = true,
   blob = {
      textureFile = prefix..subfolder.."blob-firemothisland.dds",
      bounds = { xN = 0.7024, yN = 0.3831, },
   },
}
--]]

--[[
-- Wasten Coraldale --
tamriel.zones[1469] = {
   textureFile = prefix.."/blobs/aldmeri/blob-wastencoraldale.dds",
   bounds = { xN = 0.0168, yN = 0.7641, },
}
--]]


--[[
-- Isle of Balfiera --
tamriel.zones[1997] = {
   namesHidden = true,
   blob = {
      textureFile = prefix.."/blobs/daggerfall/blob-balfiera.dds",
      bounds = { xN = 0.1535, yN = 0.3662, },
   },
}
--]]