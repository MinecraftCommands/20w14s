#> 20w14s:items/loot_bag/open/ocean_monument_raiding_kit

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/ocean_monument_raiding_kit
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:enchanted_book", tag: {StoredEnchantments: [{lvl: 3s}]}}}] run function 20w14s:items/loot_bag/open/_sparkles
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:trident"}}] run function 20w14s:items/loot_bag/open/_fireworks
