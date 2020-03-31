#> 20w14s:items/loot_bag/open/shipwreck_treasure

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/shipwreck_treasure
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:diamond"}}] run function 20w14s:items/loot_bag/open/_sparkles
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:experience_bottle"}}] run function 20w14s:items/loot_bag/open/_sparkles
