#> 20w14s:generation/structures/dank/build/doorway/obstacle/secret/chiseled

fill ~ ~1 ~ ~ ~3 ~ minecraft:chiseled_stone_bricks

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run fill ~-1 ~2 ~ ~1 ~2 ~ minecraft:chiseled_stone_bricks
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run fill ~-1 ~2 ~ ~1 ~2 ~ minecraft:chiseled_stone_bricks
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run fill ~ ~2 ~-1 ~ ~2 ~1 minecraft:chiseled_stone_bricks
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run fill ~ ~2 ~-1 ~ ~2 ~1 minecraft:chiseled_stone_bricks

setblock ~ ~2 ~ minecraft:stone
