# Remove tail and slime
scoreboard players operation id temp = @s 20w14s.id
execute as @e[type=area_effect_cloud,tag=20w14s.command_snake_tail] if score @s 20w14s.id = id temp at @s run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=20w14s.command_snake_tail] if score @s 20w14s.id = id temp run kill @s
execute as @e[type=slime,tag=20w14s.command_snake_slime] if score @s 20w14s.id = id temp run tp @s ~ ~-731 ~

# Remove head
setblock ~ ~0.51 ~ air
tp @s ~ ~-731 ~

# Summon items
summon item ~ ~ ~ {Motion:[0.1,0.2,0.0],Item:{id:"chain_command_block",Count:1}}
summon item ~ ~ ~ {Motion:[0.0,0.2,0.1],Item:{id:"chain_command_block",Count:1}}
summon item ~ ~ ~ {Motion:[-0.1,0.2,-0.1],Item:{id:"chain_command_block",Count:1}}

# Effects
playsound entity.iron_golem.death master @a
particle cloud ~ ~ ~ 0.3 0.3 0.3 0.2 20