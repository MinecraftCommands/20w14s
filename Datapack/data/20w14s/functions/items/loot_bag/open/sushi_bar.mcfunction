#> 20w14s:items/loot_bag/open/sushi_bar

loot spawn ~ ~ ~ loot 20w14s:chests/loot_bags/sushi_bar
execute if entity @e[type=minecraft:item, distance=..0.1, nbt={Item: {id: "minecraft:emerald"}}] run function 20w14s:items/loot_bag/open/_emerald
