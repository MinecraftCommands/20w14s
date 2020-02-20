#> 20w14s:generation/structures/dank/build/doorway/obstacle/secret/skull

fill ~ ~ ~ ~ ~2 ~ minecraft:stone_bricks

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~2 ~1 minecraft:polished_andesite_stairs[half=top,facing=north]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~3 ~1 minecraft:skeleton_skull[rotation=8]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~2 ~-1 minecraft:polished_andesite_stairs[half=top,facing=south]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~3 ~-1 minecraft:skeleton_skull[rotation=0]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~1 ~2 ~ minecraft:polished_andesite_stairs[half=top,facing=west]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~1 ~3 ~ minecraft:skeleton_skull[rotation=4]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~-1 ~2 ~ minecraft:polished_andesite_stairs[half=top,facing=east]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~-1 ~3 ~ minecraft:skeleton_skull[rotation=12]
