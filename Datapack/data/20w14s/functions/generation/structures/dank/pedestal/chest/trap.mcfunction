#> 20w14s:generation/structures/dank/pedestal/chest/trap

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] run setblock ~ ~1 ~ minecraft:trapped_chest[facing=east]{ LootTable: 'minecraft:chests/buried_treasure' }
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] run setblock ~ ~1 ~ minecraft:trapped_chest[facing=south]{ LootTable: 'minecraft:chests/buried_treasure' }
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] run setblock ~ ~1 ~ minecraft:trapped_chest[facing=west]{ LootTable: 'minecraft:chests/buried_treasure' }
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] run setblock ~ ~1 ~ minecraft:trapped_chest[facing=north]{ LootTable: 'minecraft:chests/buried_treasure' }

setblock ~ ~-1 ~ minecraft:tnt
fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:tnt replace #20w14s:structures/dank/usable
