#> 20w14s:generation/structures/dank/pedestal/chest/safe

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] run setblock ~ ~1 ~ minecraft:command_block[facing=east]
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] run setblock ~ ~1 ~ minecraft:command_block[facing=south]
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] run setblock ~ ~1 ~ minecraft:command_block[facing=west]
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] run setblock ~ ~1 ~ minecraft:command_block[facing=north]

execute positioned ~ ~1 ~ run function 20w14s:generation/structures/dank/chest/pedestal
