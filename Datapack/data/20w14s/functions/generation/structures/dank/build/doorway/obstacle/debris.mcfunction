#> 20w14s:generation/structures/dank/build/doorway/obstacle/debris

# ideas:
# - cracked stone bricks -> gravel
# - stone bricks -> cracked stone bricks
# - mossy stone brick -> mossy cobble

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run fill ~ ~ ~ ~ ~2 ~ minecraft:gravel
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~1 ~ minecraft:andesite_stairs[half=top,facing=west]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run fill ~ ~ ~ ~ ~2 ~ minecraft:gravel
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~1 ~ minecraft:andesite_stairs[half=top,facing=east]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run fill ~ ~ ~ ~ ~2 ~ minecraft:gravel
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~ ~1 ~ minecraft:andesite_stairs[half=top,facing=north]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run fill ~ ~ ~ ~ ~2 ~ minecraft:gravel
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~ ~1 ~ minecraft:andesite_stairs[half=top,facing=south]
