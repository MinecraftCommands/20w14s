#> 20w14s:items/loot_bag/open/beacon_building_kit

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/beacon_building_kit
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:diamond_block"}}] run function 20w14s:items/loot_bag/open/_sparkles
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:netherite_block"}}] run function 20w14s:items/loot_bag/open/_fireworks
