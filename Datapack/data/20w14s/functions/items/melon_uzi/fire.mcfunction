# Effects
playsound minecraft:block.pumpkin.carve master @a ~ ~ ~ 2 2
execute anchored eyes run particle dust 0.8 1 0.8 1 ^-0.4 ^-0.2 ^0.5 0 0 0 0 1

# Fire melon seed
summon area_effect_cloud ~ ~ ~ {Tags:["20w14s.temp_vector_getter"]}
execute rotated as @s positioned 0.0 0.0 0.0 as @e[type=area_effect_cloud,tag=20w14s.temp_vector_getter] run function 20w14s:items/melon_uzi/get_vector 

execute anchored eyes run summon snowball ^-0.4 ^-0.3 ^0.5 {shake:1b,Tags:["20w14s.temp_melon_seed","20w14s.melon_seed_needs_air_merge"],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:33}}}
execute store result entity @e[type=snowball,tag=20w14s.temp_melon_seed,sort=nearest,limit=1] Motion[0] double 0.00003051757812 run scoreboard players get x temp
execute store result entity @e[type=snowball,tag=20w14s.temp_melon_seed,sort=nearest,limit=1] Motion[1] double 0.00003051757812 run scoreboard players get y temp
execute store result entity @e[type=snowball,tag=20w14s.temp_melon_seed,sort=nearest,limit=1] Motion[2] double 0.00003051757812 run scoreboard players get z temp
tag @e[type=snowball,tag=20w14s.temp_melon_seed] remove 20w14s.temp_melon_seed
schedule function 20w14s:items/melon_uzi/air_merge 2t append