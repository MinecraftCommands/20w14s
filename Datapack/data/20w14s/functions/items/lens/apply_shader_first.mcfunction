# First part of applying shader

# Summon spider at my location/rotation
summon spider ~ ~ ~ {NoAI:1b,Tags:["20w14s.temp_spectate_spider"],DeathLootTable:"minecraft:empty",Silent:1b}
scoreboard players operation @e[type=spider,tag=20w14s.temp_spectate_spider,sort=nearest,limit=1] 20w14s.id = @s 20w14s.id
tp @e[type=spider,tag=20w14s.temp_spectate_spider] @s
forceload add ~ ~

# Spectate it
gamemode spectator @s
spectate @e[type=spider,tag=20w14s.temp_spectate_spider,sort=nearest,limit=1]

# Death bug trick
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule showDeathMessages false
kill @s
gamerule doImmediateRespawn false
gamerule keepInventory false
gamerule showDeathMessages true

# Change gamemode, return to location, and remove spider in a tick's time
tag @s add 20w14s.temp_having_shader_applied
schedule function 20w14s:items/lens/refind_spectators 8t