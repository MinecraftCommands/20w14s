#> 20w14s:generation/structures/dank/build/doorway/obstacle/bars

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run fill ~ ~ ~-1 ~ ~2 ~-1 minecraft:iron_bars[west=true,east=true]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run fill ~ ~ ~1 ~ ~2 ~1 minecraft:iron_bars[west=true,east=true]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run fill ~-1 ~ ~ ~-1 ~2 ~ minecraft:iron_bars[north=true,south=true]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run fill ~1 ~ ~ ~1 ~2 ~ minecraft:iron_bars[north=true,south=true]
