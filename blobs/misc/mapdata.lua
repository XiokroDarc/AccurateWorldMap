local theme = AccurateWorldMap
local maps = theme.maps
local tamriel = maps[27]
local prefix = theme.prefix
local subfolder = "/blobs/misc/"


-- EarthForge --
tamriel.zones[103] = {
   disableZoneNames = true,
   textureFile = prefix..subfolder.."blob-earthforge.dds",
   bounds = { xN = 0.35253, yN = 0.29174, widthN = 0.01477, heightN = 0.01477, },
   hitbox = {
      { xN = 0.6148, yN = 0.1143, },
      { xN = 0.5273, yN = 0.1056, },
      { xN = 0.3655, yN = 0.1580, },
      { xN = 0.3349, yN = 0.2455, },
      { xN = 0.3743, yN = 0.4117, },
      { xN = 0.3437, yN = 0.5866, },
      { xN = 0.2737, yN = 0.7178, },
      { xN = 0.3480, yN = 0.8534, },
      { xN = 0.6498, yN = 0.9583, },
      { xN = 0.7547, yN = 0.4510, },
      { xN = 0.6498, yN = 0.2149, },   
   }
}


-- Jerall Mountains --
tamriel.zones[1056] = {
   disableZoneNames = true,
   textureFile = prefix..subfolder.."blob-jerallmountains.dds",
   bounds = { xN = 0.61584, yN = 0.40026, widthN = 0.01232, heightN = 0.01232, },
   offsets = { yN = 0.00061 },
   hitbox = {
      { xN = 0.6880, yN = 0.0193, },
      { xN = 0.5098, yN = 0.0560, },
      { xN = 0.4101, yN = 0.2447, },
      { xN = 0.3210, yN = 0.2867, },
      { xN = 0.2214, yN = 0.2657, },
      { xN = 0.1742, yN = 0.3496, },
      { xN = 0.2109, yN = 0.6013, },
      { xN = 0.0956, yN = 0.7428, },
      { xN = 0.1218, yN = 0.8477, },
      { xN = 0.2476, yN = 0.8267, },
      { xN = 0.4154, yN = 0.8739, },
      { xN = 0.6408, yN = 0.9787, },
      { xN = 0.7509, yN = 0.9787, },
      { xN = 0.8086, yN = 0.7376, },
      { xN = 0.7457, yN = 0.6013, },
      { xN = 0.7614, yN = 0.2814, },
      { xN = 0.8715, yN = 0.0717, },
      { xN = 0.8505, yN = 0.0245, },   
   }
}

-- Blackwood Borderlands --
tamriel.zones[1061] = {
   disableZoneNames = true,
   textureFile = prefix..subfolder.."blob-blackwoodborderlands.dds",
   bounds = { xN = 0.71264, yN = 0.6455, widthN = 0.01867, heightN = 0.01867, },
   hitbox = {
      { xN = 0.0681, yN = 0.2895, },
      { xN = 0.1097, yN = 0.3760, },
      { xN = 0.0924, yN = 0.4867, },
      { xN = 0.2792, yN = 0.5352, },
      { xN = 0.3276, yN = 0.6182, },
      { xN = 0.4107, yN = 0.6874, },
      { xN = 0.5698, yN = 0.6424, },
      { xN = 0.6424, yN = 0.8016, },
      { xN = 0.8569, yN = 0.7289, },
      { xN = 0.8915, yN = 0.6113, },
      { xN = 0.8639, yN = 0.3310, },
      { xN = 0.9642, yN = 0.2584, },
      { xN = 0.8881, yN = 0.1546, },
      { xN = 0.7462, yN = 0.1546, },
      { xN = 0.6597, yN = 0.0889, },
      { xN = 0.5802, yN = 0.1166, },
      { xN = 0.5456, yN = 0.1719, },
      { xN = 0.1892, yN = 0.1996, },   
   }
}

-- Halls of Colossus --
tamriel.zones[1588] = {
   disableZoneNames = true,
   textureFile = prefix..subfolder.."blob-hallsofcolossus.dds",
   bounds = { xN = 0.5194, yN = 0.74072, widthN = 0.015747, heightN = 0.015747, },
   offsets = { xN = 0.003051758, yN = 0.00402832, widthN = 0.005981445, heightN = 0.005981445, },
   hitbox = {
      { xN = 0.2598, yN = 0.1154, },
      { xN = 0.0517, yN = 0.5998, },
      { xN = 0.0640, yN = 0.8254, },
      { xN = 0.2404, yN = 0.9731, },
      { xN = 0.5357, yN = 0.8705, },
      { xN = 0.8106, yN = 0.8910, },
      { xN = 0.8967, yN = 0.8254, },
      { xN = 0.9336, yN = 0.6860, },
      { xN = 0.8598, yN = 0.4604, },
      { xN = 0.8680, yN = 0.3004, },
      { xN = 0.8270, yN = 0.2060, },
      { xN = 0.5727, yN = 0.0543, },
      { xN = 0.2937, yN = 0.0748, },   
   }
}

--[[
-- Ancient City of Rockgrove -- --
maps[2004] = { parentId = 27, maxZoom = 5, } 
--maps[2004].pois[468] = { showInMap = true, xN = 0.312, yN = 0.15, } -- rockgrove
tamriel.pois[468] = { xN = 0.705, yN = 0.765, }
tamriel.zones[2004] = {
   namesHidden = true,
   blob = {
      textureFile = prefix..subfolder.."blob-rockgrove.dds",
      bounds = { xN = 0.6937, yN = 0.7609, },
   }
}
--]]


--[[
-- Sunspire Temple Grounds --
maps[1649] = { parentId = 27, maxZoom = 5, } 
tamriel.pois[399] = { xN = 0.506, yN = 0.713, }
tamriel.zones[1649] = {
   hideName = true,
   blob = {
      textureFile = prefix..subfolder.."blob-sunspire.dds",
      bounds = { xN = 0.4909, yN = 0.7066 },
   }
}
--]]