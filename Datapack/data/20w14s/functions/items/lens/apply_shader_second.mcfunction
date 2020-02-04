# Second part of applying shader

tag @s remove 20w14s.temp_having_shader_applied

# Find my spider
scoreboard players operation id temp = @s 20w14s.id
execute as @e[type=spider,tag=20w14s.temp_spectate_spider,sort=nearest,limit=1] if score @s 20w14s.id = id temp run tag @s add 20w14s.my_spectate_spider

# Set back gamemode, position, and remove spider
gamemode survival @s
tp @s @e[type=spider,tag=20w14s.my_spectate_spider,sort=nearest,limit=1]
kill @e[type=spider,tag=20w14s.my_spectate_spider]
execute at @s run forceload remove ~ ~

tellraw @s {"text":"COMING 2018","bold":true,"color":"aqua"}