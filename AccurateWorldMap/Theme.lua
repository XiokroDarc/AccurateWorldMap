local themeName = "AccurateWorldMap"


_G[ themeName ] = {
   name = themeName,
   displayName = "Accurate World Map",
   author = "|C8587FF@Thal-J|r (EU) & |C7851A9@XiokroDarc|r & |C42ffbd@Vylaera|r (NA)",
   version = 2311030011,
   prefix = "AccurateWorldMap/AccurateWorldMap",
   dependencies = { LibMapThemer_Core, AWMBlobAssets },
   maps = { },
   renames = { },
   mapDescriptions = { },
   overrides = { },
   callbacks = { },
   options = {
      --fontName = "Univers67",
      --fontColor = { 1.0, 1.0, 1.0, 1.0, },
      --fontSize = 18,
      aurbisZoneNames = true,
      tamrielZoneNames = true,
      renames = true,
      mapDescriptions = true,
      storyIndexes = false,
      hoverFadeEffect = true,
      disablePoiGlow = false,
      showAllPois = true,
      pois = {
         majorSettlements = true,
         guildShrines = false,
         ownedHouses = true,
         unownedHouses = false,
         trials = false,
         dungeons = false,
         groupArenas = false,
         soloArenas = false,
      },
   },
   ["IsRenamesEnabled"] = function ( self )
      return self:GetOptions().renames
   end,
   ["IsMapDescriptionsEnabled"] = function ( self )
      return self:GetOptions().mapDescriptions
   end,
   ["IsStoryIndexesEnabled"] = function ( self )
      return self:GetOptions().storyIndexes
   end,
   zoneColors = { 0, 1, 0, 1 }
}
local theme = _G[ themeName ]
local prefix = theme.prefix
local maps = theme.maps
local renames = theme.renames
local mapDescriptions = theme.mapDescriptions
local overrides = theme.overrides
local callbacks = theme.callbacks


---[[
maps[ 439 ] = { 
   tilePath = prefix.."/tiles/aurbis/Aurbis_",
   ["IsZoneNamesEnabled"] = function ( self )
      return self:GetOptions().aurbisZoneNames
   end
}

maps[ 27 ] = { 
   tilePath = prefix.."/tiles/tamriel/Tamriel_",
   ["IsZoneNamesEnabled"] = function ( self )
      return self:GetOptions().tamrielZoneNames
   end
}
--]]

---[[
local AWM_MouseOverGrungeTex = CreateControl( "AWM_MouseOverGrungeTex", ZO_WorldMap, CT_TEXTURE )
AWM_MouseOverGrungeTex:SetTexture( prefix.."/misc/gamepad_shadow.dds" )
AWM_MouseOverGrungeTex:SetAlpha( 0.45 ) -- or 0.65
AWM_MouseOverGrungeTex:SetDrawTier( 0 )
AWM_MouseOverGrungeTex:SetDrawLayer( 1 )
AWM_MouseOverGrungeTex:SetHidden( false )

---[[
callbacks[ "OnWorldMapChanged" ] = function ( self )
   local mapWidth, mapHeight = ZO_WorldMapContainer:GetDimensions()
   AWM_MouseOverGrungeTex:ClearAnchors()
   AWM_MouseOverGrungeTex:SetAnchor( TOPLEFT, ZO_WorldMap, TOPLEFT, 0, 0 )
   AWM_MouseOverGrungeTex:SetDimensions( mapWidth, mapHeight )
   AWM_MouseOverGrungeTex:SetHidden( true )
end
--]]
 
overrides[ "GetMapMouseoverInfo" ] = function ( self, output, ... ) 
   output = _G[ "LibMapThemer_Overrides" ][ "overrides" ][ "GetMapMouseoverInfo" ]( self, output, ... )
   local visible = (self:GetOptions().hoverFadeEffect and output[1] and output[1] ~= '') --or AWM_MouseOverGrungeTex:GetText() ~= ''
   AWM_MouseOverGrungeTex:SetHidden( not visible )
   return output
end
---[[
renames[ "Northern Elsweyr" ]    = "Anequina"
renames[ "Southern Elsweyr" ]    = "Pellitine"
renames[ "Telvanni Peninsula" ]  = "Indoril Highlands"
renames[ "Clockwork City" ]      = "The Clockwork City"
renames[ "High Isle and Amenos" ]= "High Isle"  
--]]

-- TODO ADD NECROM DESCRIPTIONS
---[[
mapDescriptions[ "Apocrypha" ] = "Hermaeus Mora's infinite realm of forbidden knowledge is described as a turbulent mire, glistening against the writhing brightness of a green sky, where every tome reveals secrets damning and inhumane, catalogued in chaos."
mapDescriptions[ "Telvanni Peninsula" ] = "This region, also known as Alguradan, is the traditional homeland of Morrowind's Great House Indoril. Many Dunmer pilgrims travel this land, to pay respect at the City of the Dead, Necrom."
mapDescriptions[ "Stirk" ] = "In the past, the lonesome island of Stirk has claimed by Valenwood, the Gold Coast, Hammerfell, and even the Ayleids. Now though, it's no-man's-land."
mapDescriptions[ "Galen" ] = "Galen is the westernmost island of the Systres archipelago, controlled by House Monard. Galen has been the home of the druids for thousands of years after their voluntary exile from High Rock."
mapDescriptions[ "Eyevea" ]   = "Originally an island belonging to the Summerset Isles, Eyevea now serves as the home of the Mages Guild."
mapDescriptions[ "Deshaan" ]  = "The fertile valleys of Deshaan are home to lush fungal forests, deep kwama mines, and broad pastures where netches and guar graze."
mapDescriptions[ "Betnikh" ]  = "Originally called Betony, this isle was conquered by the Seamount Orcs, who then renamed it to Betnikh."
mapDescriptions[ "Tamriel" ]  = "In the ancient tongues, the land called 'Tamriel' means 'Dawn's Beauty'."
mapDescriptions[ "Auridon" ]  = "The second largest of the Summerset Isles, Auridon has always served the High Elves as a buffer between their serene archipelago and the turmoil of Tamriel."
mapDescriptions[ "Silatar" ]  = "The picturesque island estate of Silatar is rumoured to have been created out of pure Magicka, and has been passed down amongst the nobles of Summerset for generations."
mapDescriptions[ "Artaeum" ]  = "Home to the Psijic Order, this island was formerly part of the Summerset Isles, but disappeared from Nirn several centuries ago under mysterious circumstances."
mapDescriptions[ "The Rift" ] = "The southeastern hold of Skyrim, The Rift is a temperate region northwest of the intersection between the Jerall Mountains and the Velothi Mountains - which house the gateway to Morrowind."
mapDescriptions[ "Wrothgar" ] = "The Wrothgar Mountains have been home to northern Tamriel's Orcs since the beginning of recorded is history."
mapDescriptions[ "Grayhome" ] = "The frozen island of Grayhome is home to an ornate castle, formerly occupied by the Gray Host."
mapDescriptions[ "Icereach" ] = "These frigid isles serves as the seat of power for the cruel Icereach Coven."
mapDescriptions[ "Cyrodiil" ] = "With the Empire's collapse, armies of the Dominion, Covenant, and Pact have all invaded the Heartlands of Cyrodiil, vying for the Imperial throne."
mapDescriptions[ "Murkmire" ] = "Legend holds that the region informally known as Murkmire once extended much further south before it sank beneath the waves."
mapDescriptions[ "Tideholm" ] = "This unassuming island off the southern coast of Elsweyr is known to house the ancient ruins of Fort Vashr - a former Dragonguard stronghold."
mapDescriptions[ "Craglorn" ] = "Though occasionally crossed by caravans and Covenant troops going to and from Cyrodiil, this wild region of eastern Hammerfell is otherwise a virtual no-man's-land."
mapDescriptions[ "Fargrave" ] = "The princeless realm of Fargrave is known as 'The Celestial Palanquin' - a place where mortal and Daedra alike are free to do whatever they please."
mapDescriptions[ "Eastmarch" ]   = "Eastmarch is the first of Old Holds - the earliest regions of Skyrim settled by the Nords when they arrived from Atmora."
mapDescriptions[ "The Reach" ]   = "The rocky highlands of the Reach contains savage predators, perilous Dwarven ruins, and hostile Reach clans."
mapDescriptions[ "Blackwood" ]   = "Straddling the great Niben River and extending east into the bogs of the Argonian homeland, the Blackwood region serves as the maritime gate to Cyrodiil."
mapDescriptions[ "Glenumbra" ]   = "Glenumbra is the westernmost peninsula of High Rock and contains the city-states of Daggerfall and Camlorn."
mapDescriptions[ "Bal Foyen" ]   = "This region is known as Bal Foyen, a wild expanse of marshland and volcanic landscapes, now being used to farm saltrice by the Dark Elves' former Argonian slaves."
mapDescriptions[ "Shadowfen" ]   = "Shadowfen has had more contact with Tamrielic civilisation than most of Black Marsh, primarily due to the activities of the Dunmeri slavers who once operated here."
mapDescriptions[ "Norg-Tzel" ]   = "Norg-Tzel, which means 'forbidden place' in the Argonian tongue, has much the same climate and terrain as the region of Black Marsh known as Murkmire."
mapDescriptions[ "Grahtwood" ]   = "This region is the southern heart of the Wood Elves' great forest, and home to more of the gigantic graht-oaks than any other part of Valenwood."
mapDescriptions[ "Bangkorai" ]   = "This region takes its name from its most famous feature, the Bangkorai Pass, which has served as High Rock's defense against the wild raiders of Hammerfell for generations."
mapDescriptions[ "Gold Coast" ]  = "The Gold Coast has always served as Cyrodiil's gateway to the Abecean Sea, but with the Alliance War, the region has gone its own way."
mapDescriptions[ "Fort Grief" ]  = "Fort Grief sits on an island at the mouth of the Niben Bay. It once was a command center for the Imperial Legion, but has since it fell into disuse and disrepair."
mapDescriptions[ "Stormhaven" ]  = "Stormhaven is the geographic center of High Rock, and also the home of the great trading city of Wayrest, capital of the Daggerfall Covenant."
mapDescriptions[ "Rivenspire" ]  = "This northwestern region of High Rock contains some of the province's most dramatic terrain, including towering, flinty crags, windswept moors, and narrow canyons."
mapDescriptions[ "Stonefalls" ]  = "This ashy region of Morrowind known as Stonefalls was where the recent invading army from Akavir met its bloody end."
mapDescriptions[ "The Alik'r" ]  = "The Alik'r may be rich in mineral resources, but its fierce creatures and harsh terrain are too daunting for most."
mapDescriptions[ "Hew's Bane" ]  = "Prince Hew claimed this Hammerfell peninsula for his own, but when all of his ambitious endeavors ended in failure, the region acquired the nickname Hew's Bane."
mapDescriptions[ "Greenshade" ]  = "Greenshade is a land of flowing rivers and fertile plains that occupies the southwest portion of Valenwood."
mapDescriptions[ "Dranil Kir" ]  = "This small, stormy isle amongst the Summerset Isles is known by the locals as Dranil Kir. Some have rumoured it to have been supernaturally protected by magical means."
mapDescriptions[ "Blackreach" ]  = "Blackreach, a legendary and long-forgotten realm that extends beneath Skyrim - and perhaps beyond."
mapDescriptions[ "Stros M'Kai" ] = "The island of Stros M'Kai was one of the first regions settled by the Redguards when they sailed east from their lost homeland of Yokuda."
mapDescriptions[ "Vvardenfell" ] = "The sprawling volcanic island of Vvardenfell dominates northern Morrowind, with the ever-smoldering peak of Red Mountain at its centre."
mapDescriptions[ "Malabal Tor" ] = "Malabal Tor is the northwest region of Valenwood, on the coast of the Abecean Sea and the Strid River estuary."
mapDescriptions[ "Coldharbour" ] = "The dreadful Oblivion plane of Coldharbour is Molag Bal's realm of death, despair, and infinite cruelty."
mapDescriptions[ "The Deadlands" ]  = "The Deadlands is Mehrunes Dagon's realm of unending destruction, fire and storm and disaster personified."
mapDescriptions[ "Western Skyrim" ] = "Western Skyrim is a cold and unforgiving land, which consists of the holds of Haafingar, Karthald, and Hjaalmarch."
mapDescriptions[ "Bleakrock Isle" ] = "Bleakrock Isle may seem like a quaint fishing island but its strategic importance cannot be understated - sitting in the mouth of the Yorgrim River, it acts as a chokepoint for all vessels entering or leaving the port of Windhelm, and is a gateway east to Morrowind."
mapDescriptions[ "Reaper's March" ] = "Once known simply as Northern Valenwood, this region that borders Cyrodiil and Elsweyr has seen much bloody warfare."
mapDescriptions[ "Summerset Isle" ] = "The land called Summerset is the birthplace of civilisation and magic as we know it in Tamriel."
mapDescriptions[ "Clockwork City" ] = "Clockwork City is the mysterious mechanical realm of Sotha Sil, one of the living gods of the Tribunal - it's purpose is unknown."
mapDescriptions[ "Firemoth Island" ]   = "The Firemoth islets seem to float like forgotten derelicts on the surface of the Inner Sea, shrouded in mists that hide all manner of crimes and corruption."
mapDescriptions[ "The Earth Forge" ]   = "Situated in the Druadach Mountains between The Reach and Bangkorai, the Earth Forge is home to a secret Dwemer ruin. Now though, it is maintained by the Fighters Guild."
mapDescriptions[ "Wasten Coraldale" ]  = "The offshore island of Wasten Coraldale is famous for its Hanging Gardens and fertile grottos, where sea creatures of all sorts spawn and thrive."
mapDescriptions[ "Northern Elsweyr" ]  = "The region of Anequina derives its name from the dusty Ne-Quin-Al desert, which lies in its heart."
mapDescriptions[ "Southern Elsweyr" ]  = "Consisting of the southern-most tip of Elsweyr, the Quin'rawl peninsula has a complex history that stretches back into antiquity."
mapDescriptions[ "Isle of Balfiera" ]  = "Balfiera Isle is the ancestral home of Clan Direnni, and the site of the the oldest structure on Tamriel - the Adamantine Tower."
mapDescriptions[ "Khenarthi's Roost" ] = "This island off the southern coast of Elsweyr is named after the Khajiiti goddess of weather and the sky, who is usually represented as a great hawk."
mapDescriptions[ "Sword's Rest Isle" ] = "This island, also known as Emeric's Retreat, is used as a getaway by High King Emeric for when he wants to escape the pressures of running the Daggerfall Covenant."
mapDescriptions[ "High Isle and Amenos" ] = "High Isle is the largest of the Systres Archipelago, and serves as the center of politics and commerce for the region - predominantly from the port city of Gonfalon Bay."
--]]
