#> 20w14s:generation/structures/dank/build/doorway/obstacle/iron_door/_trap

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~2 ~-1 minecraft:tnt
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~2 ~1 minecraft:tnt
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~-1 ~2 ~ minecraft:tnt
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~1 ~2 ~ minecraft:tnt
