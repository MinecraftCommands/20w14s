#> 20w14s:generation/structures/dank/chest/_set/trap/chest

execute if block ~ ~ ~ minecraft:chest[facing=east] run setblock ~ ~ ~ minecraft:trapped_chest[facing=east]{ LootTable: 'minecraft:chests/buried_treasure' }
execute if block ~ ~ ~ minecraft:chest[facing=south] run setblock ~ ~ ~ minecraft:trapped_chest[facing=south]{ LootTable: 'minecraft:chests/buried_treasure' }
execute if block ~ ~ ~ minecraft:chest[facing=west] run setblock ~ ~ ~ minecraft:trapped_chest[facing=west]{ LootTable: 'minecraft:chests/buried_treasure' }
execute if block ~ ~ ~ minecraft:chest[facing=north] run setblock ~ ~ ~ minecraft:trapped_chest[facing=north]{ LootTable: 'minecraft:chests/buried_treasure' }

fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:tnt replace #20w14s:structures/dank/usable