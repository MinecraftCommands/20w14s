scoreboard players operation id temp = @s 20w14s.id
scoreboard players operation snake_tail_length temp = @s 20w14s.tail

# AEC to keep track of block
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["20w14s.command_snake_tail","20w14s.new","20w14s.initialised"]}
execute as @e[type=area_effect_cloud,tag=20w14s.new,limit=1] run function 20w14s:mobs/command_snake/tail_initiate

# Remove tail end
execute as @e[type=area_effect_cloud,tag=20w14s.command_snake_tail] if score @s 20w14s.id = id temp at @s run function 20w14s:mobs/command_snake/tail_reduce

# Set block at current pos facing backwards
execute if entity @s[y_rotation=179..181] run setblock ~ ~ ~ chain_command_block[facing=south]
execute if entity @s[y_rotation=-91..-89] run setblock ~ ~ ~ chain_command_block[facing=west]
execute if entity @s[y_rotation=-1..1] run setblock ~ ~ ~ chain_command_block[facing=north]
execute if entity @s[y_rotation=89..91] run setblock ~ ~ ~ chain_command_block[facing=east]
execute if entity @s[x_rotation=-91..-89] run setblock ~ ~ ~ chain_command_block[facing=down]
execute if entity @s[x_rotation=89..91] run setblock ~ ~ ~ chain_command_block[facing=up]

# Summon feelers, kill ones in blocks, move to one nearest to player
summon area_effect_cloud ~ ~ ~-1 {Tags:["20w14s.antenna","20w14s.antenna_north","20w14s.initialised"],Rotation:[180f,00f]}
summon area_effect_cloud ~1 ~ ~ {Tags:["20w14s.antenna","20w14s.antenna_east","20w14s.initialised"],Rotation:[-90f,0f]}
summon area_effect_cloud ~ ~ ~1 {Tags:["20w14s.antenna","20w14s.antenna_south","20w14s.initialised"],Rotation:[0f,0f]}
summon area_effect_cloud ~-1 ~ ~ {Tags:["20w14s.antenna","20w14s.antenna_west","20w14s.initialised"],Rotation:[90f,0f]}
summon area_effect_cloud ~ ~1 ~ {Tags:["20w14s.antenna","20w14s.antenna_up","20w14s.initialised"],Rotation:[0f,-90f]}
summon area_effect_cloud ~ ~-1 ~ {Tags:["20w14s.antenna","20w14s.antenna_down","20w14s.initialised"],Rotation:[0f,90f]}

execute as @e[type=area_effect_cloud,tag=20w14s.antenna] at @s unless block ~ ~ ~ #20w14s:snake_breakable run kill @s
execute at @a[gamemode=!spectator,limit=1,sort=nearest] as @e[type=area_effect_cloud,tag=20w14s.antenna,sort=nearest,limit=1] run function 20w14s:mobs/command_snake/choose_antenna
execute at @e[type=area_effect_cloud,tag=20w14s.antenna_chosen,limit=1,sort=nearest] run tp @s ~ ~-0.75 ~ ~ ~

kill @e[type=area_effect_cloud,tag=20w14s.antenna]

# Deactivate if no nearby players
execute unless entity @a[gamemode=!spectator,distance=..100] run tag @s remove 20w14s.active
