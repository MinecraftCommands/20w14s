#> 20w14s:items/loot_bag/end_city_treasure

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/end_city_treasure
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:emerald"}}] run function 20w14s:items/loot_bag/_sparkles
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:diamond"}}] run function 20w14s:items/loot_bag/_sparkles
