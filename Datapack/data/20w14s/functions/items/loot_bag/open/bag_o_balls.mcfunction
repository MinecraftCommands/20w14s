#> 20w14s:items/loot_bag/open/bag_o_balls

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/bag_o_balls
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:ender_eye"}}] run function 20w14s:items/loot_bag/open/_sparkles
