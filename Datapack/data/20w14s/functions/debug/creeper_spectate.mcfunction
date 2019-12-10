# Summon creeper at my location/rotation
summon creeper ~ ~ ~ {NoAI:1b,Tags:[temp_spectate]}
tp @e[type=creeper,tag=temp_spectate] @s

# Shader death trick (make sure doImmediateRespawn is on)
gamemode spectator @s
spectate @e[type=creeper,tag=temp_spectate,limit=1]
kill @s
gamemode adventure @s

# Teleport back, clean up
tp @s @e[type=creeper,tag=temp_spectate,limit=1]
kill @e[type=creeper,tag=temp_spectate]
