#> 20w14s:items/loot_bag/grannys_oven

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/grannys_oven
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:emerald"}}] run function 20w14s:items/loot_bag/_emerald
