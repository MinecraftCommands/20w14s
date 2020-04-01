#> 20w14s:items/loot_bag/open/wither_prep_kit

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/wither_prep_kit
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:enchanted_book", tag: {StoredEnchantments: [{lvl: 5s}]}}}] run function 20w14s:items/loot_bag/open/_sparkles
