function OnPlayerSpawned( player_entity ) -- This runs when player entity has been created
	GamePrint("GOOD LUCK")
    local x, y = EntityGetTransform(player_entity)
    local tele = perk_spawn(x, y, "TELEPORTITIS")
    local tele_dodge = perk_spawn(x, y, "TELEPORTITIS_DODGE")
    perk_pickup(perk, player_entity, EntityGetName(tele), false, false, false)
    perk_pickup(perk, player_entity, EntityGetName(tele_dodge), false, false, false)
end

function OnMagicNumbersAndWorldSeedInitialized() -- this is the last point where the Mod* API is available. after this materials.xml will be loaded.
	local x = ProceduralRandom(0,0)
	print( "===================================== random " .. tostring(x) )
end

print("Teleportigen init done")
