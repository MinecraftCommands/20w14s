scoreboard players set tipped temp 0
execute if data entity @s Potion run scoreboard players set tipped temp 1

# Handle normal arrows
execute if score tipped temp matches 0 run summon item ~ ~ ~ {Tags:["20w14s.initialised"],Item:{id:"minecraft:arrow",Count:1},Motion:[0.0,0.2,0.0]}

# Handle tipped arrows
execute if score tipped temp matches 1 run summon item ~ ~ ~ {Tags:["20w14s.new_temp","20w14s.initialised"],Item:{id:"minecraft:tipped_arrow",Count:1,tag:{Potion:"minecraft:long_invisibility"}},Motion:[0.0,0.2,0.0]}
execute if score tipped temp matches 1 run data modify entity @e[type=item,tag=20w14s.new_temp,limit=1,sort=nearest] Item.tag.Potion set from entity @s Potion
execute if score tipped temp matches 1 run tag @e[type=item,tag=20w14s.new_temp] remove 20w14s.new_temp

kill @s