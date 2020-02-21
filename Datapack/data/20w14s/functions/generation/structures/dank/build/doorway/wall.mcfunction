#> 20w14s:generation/structures/dank/build/doorway/wall

# NOTE Adjust layers and their ordering to better randomize the middle 2 blocks.
data modify storage 20w14s:generation/structures/_util/advance input set value { name: "20w14s:dank/props/wall/base", anchor: "north", size: [ 3, 4, 1 ], offset: [ -1, 0, 0 ], nudge: 0, passive: true }
data modify storage 20w14s:generation/structures/_util/advance input.layers set value []
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/props/wall/treasure2", integrity: 0.005f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/props/wall/treasure", integrity: 0.05f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/props/wall/mossy", integrity: 0.5f }
data modify storage 20w14s:generation/structures/_util/advance input.layers append value { name: "20w14s:dank/props/wall/cracked", integrity: 0.4f }
function 20w14s:generation/structures/_util/advance

# fill in any air left by the structure and/or redstone block
fill ~ ~ ~ ~ ~1 ~ minecraft:stone replace minecraft:air
