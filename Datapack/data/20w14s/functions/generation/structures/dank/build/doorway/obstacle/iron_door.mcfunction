#> 20w14s:generation/structures/dank/build/doorway/obstacle/iron_door

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~ ~ minecraft:iron_door[facing=south,half=lower]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~1 ~ minecraft:iron_door[facing=south,half=upper]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~2 ~ minecraft:chiseled_stone_bricks
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~2 ~1 minecraft:spruce_button[face=wall,facing=south]

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~ ~ minecraft:iron_door[facing=north,half=lower]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~1 ~ minecraft:iron_door[facing=north,half=upper]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~2 ~ minecraft:chiseled_stone_bricks
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~2 ~-1 minecraft:spruce_button[face=wall,facing=north]

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~ ~ ~ minecraft:iron_door[facing=east,half=lower]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~ ~1 ~ minecraft:iron_door[facing=east,half=upper]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~ ~2 ~ minecraft:chiseled_stone_bricks
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~1 ~2 ~ minecraft:spruce_button[face=wall,facing=east]

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~ ~ ~ minecraft:iron_door[facing=west,half=lower]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~ ~1 ~ minecraft:iron_door[facing=west,half=upper]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~ ~2 ~ minecraft:chiseled_stone_bricks
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~-1 ~2 ~ minecraft:spruce_button[face=wall,facing=west]

scoreboard players set $rng.a52522d9ea7f temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.a52522d9ea7f temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.a52522d9ea7f temp 2
execute if score $rng.a52522d9ea7f temp matches 0 run function 20w14s:generation/structures/dank/build/doorway/obstacle/iron_door/_trap
