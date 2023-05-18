dofile_once("data/scripts/perks/perk.lua")

function OnPlayerSpawned( player_entity ) -- This runs when player entity has been created
	GamePrint("Extra-Hard Mode Enabled")
    local x, y = EntityGetTransform(player_entity)
    local tele = perk_spawn(x, y, "TELEPORTITIS")
    local tele_dodge = perk_spawn(x, y, "TELEPORTITIS_DODGE")
    perk_pickup(tele, player_entity, EntityGetName(tele), false, false, false)
    perk_pickup(tele_dodge, player_entity, EntityGetName(tele_dodge), false, false, false)
end

print("Teleportigen init done")
