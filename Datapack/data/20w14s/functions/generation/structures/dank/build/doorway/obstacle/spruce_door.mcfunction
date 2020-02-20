#> 20w14s:generation/structures/dank/build/doorway/obstacle/spruce_door

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~ ~ minecraft:spruce_door[facing=south,half=lower]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~1 ~ minecraft:spruce_door[facing=south,half=upper]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~2 ~ minecraft:chiseled_stone_bricks

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~ ~ minecraft:spruce_door[facing=north,half=lower]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~1 ~ minecraft:spruce_door[facing=north,half=upper]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~2 ~ minecraft:chiseled_stone_bricks

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~ ~ ~ minecraft:spruce_door[facing=east,half=lower]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~ ~1 ~ minecraft:spruce_door[facing=east,half=upper]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~ ~2 ~ minecraft:chiseled_stone_bricks

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~ ~ ~ minecraft:spruce_door[facing=west,half=lower]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~ ~1 ~ minecraft:spruce_door[facing=west,half=upper]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~ ~2 ~ minecraft:chiseled_stone_bricks
