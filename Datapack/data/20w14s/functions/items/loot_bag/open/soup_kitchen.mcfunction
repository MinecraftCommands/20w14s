#> 20w14s:items/loot_bag/open/soup_kitchen

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/soup_kitchen
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:emerald"}}] run function 20w14s:items/loot_bag/open/_emerald
