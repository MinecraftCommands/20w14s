#> 20w14s:generation/structures/dank/prop/chest/_set/trap/chest

execute if block ~ ~ ~ minecraft:chest[facing=east] run fill ~-1 ~-2 ~-1 ~ ~-2 ~1 minecraft:tnt replace #20w14s:structures/dank/usable
execute if block ~ ~ ~ minecraft:chest[facing=east] run setblock ~ ~ ~ minecraft:trapped_chest[facing=east]{ LootTable: '20w14s:chests/dank/trap' }

execute if block ~ ~ ~ minecraft:chest[facing=south] run fill ~-1 ~-2 ~-1 ~1 ~-2 ~ minecraft:tnt replace #20w14s:structures/dank/usable
execute if block ~ ~ ~ minecraft:chest[facing=south] run setblock ~ ~ ~ minecraft:trapped_chest[facing=south]{ LootTable: '20w14s:chests/dank/trap' }

execute if block ~ ~ ~ minecraft:chest[facing=west] run fill ~ ~-2 ~-1 ~1 ~-2 ~1 minecraft:tnt replace #20w14s:structures/dank/usable
execute if block ~ ~ ~ minecraft:chest[facing=west] run setblock ~ ~ ~ minecraft:trapped_chest[facing=west]{ LootTable: '20w14s:chests/dank/trap' }

execute if block ~ ~ ~ minecraft:chest[facing=north] run fill ~-1 ~-2 ~ ~1 ~-2 ~1 minecraft:tnt replace #20w14s:structures/dank/usable
execute if block ~ ~ ~ minecraft:chest[facing=north] run setblock ~ ~ ~ minecraft:trapped_chest[facing=north]{ LootTable: '20w14s:chests/dank/trap' }
