#> 20w14s:generation/structures/dank/build/doorway/wall

# TODO Randomize the blocks. #enhance
execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] run fill ~ ~ ~-1 ~ ~3 ~1 minecraft:stone
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] run fill ~ ~ ~-1 ~ ~3 ~1 minecraft:stone
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] run fill ~-1 ~ ~ ~1 ~3 ~ minecraft:stone
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] run fill ~-1 ~ ~ ~1 ~3 ~ minecraft:stone
