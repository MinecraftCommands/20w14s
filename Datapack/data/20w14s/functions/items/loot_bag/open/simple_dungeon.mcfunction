#> 20w14s:items/loot_bag/open/simple_dungeon

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/simple_dungeon
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:gold_ingot"}}] run function 20w14s:items/loot_bag/open/_sparkles
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:golden_apple"}}] run function 20w14s:items/loot_bag/open/_sparkles
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:enchanted_golden_apple"}}] run function 20w14s:items/loot_bag/open/_fireworks
