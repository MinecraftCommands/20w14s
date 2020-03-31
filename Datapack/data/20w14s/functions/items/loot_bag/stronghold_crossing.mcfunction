#> 20w14s:items/loot_bag/stronghold_crossing

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/stronghold_crossing
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:gold_ingot"}}] run function 20w14s:items/loot_bag/_sparkles
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:enchanted_book"}}] run function 20w14s:items/loot_bag/_sparkles
