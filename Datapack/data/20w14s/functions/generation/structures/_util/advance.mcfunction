#> 20w14s:generation/structures/_util/advance
#
# This function takes a base structure and does all the math for you.
#
# @input
#   storage 20w14s:generation/structures/_util/advance
#       input.name: string
#           The name of the structure.
#       input.integrity: float
#           The integrity of the structure.
#       input.facing: east/south/west/north
#           The direction you're facing when looking at the entry point, if applicable.
#       input.size: [x, y, z]
#           The size of the structure in each dimension x, y, and z.
#       input.offset: [x, y, z]
#           The offset of the entry point in a fixed position (no rotation).
#       input.layers: compound[]
#           name: string
#               The name of the structure for this layer.
#           integrity: float
#               The integrity of the structure for this layer.

# set some constants
scoreboard players set $-1 temp -1

# extract arguments
execute store result score $offset_x temp run data get storage 20w14s:generation/structures/_util/advance input.offset[0]
execute store result score $offset_y temp run data get storage 20w14s:generation/structures/_util/advance input.offset[1]
execute store result score $offset_z temp run data get storage 20w14s:generation/structures/_util/advance input.offset[2]

# remember which direction the command block is facing
scoreboard players set $facing temp -1
execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] run scoreboard players set $facing temp 0
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] run scoreboard players set $facing temp 1
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] run scoreboard players set $facing temp 2
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] run scoreboard players set $facing temp 3
execute if block ~ ~ ~ #20w14s:command_blocks[facing=up] run scoreboard players set $facing temp 5
execute if block ~ ~ ~ #20w14s:command_blocks[facing=down] run scoreboard players set $facing temp 6

# calculate the final rotation
# if it's facing vertical, just leave it as is (no rotation)
# otherwise, if it's facing horizontal, do some math
# TODO We can probably simplify this with modulo. #refactor
scoreboard players set $rot temp 0
# east
execute if score $facing temp matches 0 if data storage 20w14s:generation/structures/_util/advance input{ facing: "south" } run scoreboard players set $rot temp 3
execute if score $facing temp matches 0 if data storage 20w14s:generation/structures/_util/advance input{ facing: "west" } run scoreboard players set $rot temp 2
execute if score $facing temp matches 0 if data storage 20w14s:generation/structures/_util/advance input{ facing: "north" } run scoreboard players set $rot temp 1
# south
execute if score $facing temp matches 1 if data storage 20w14s:generation/structures/_util/advance input{ facing: "east" } run scoreboard players set $rot temp 1
execute if score $facing temp matches 1 if data storage 20w14s:generation/structures/_util/advance input{ facing: "west" } run scoreboard players set $rot temp 3
execute if score $facing temp matches 1 if data storage 20w14s:generation/structures/_util/advance input{ facing: "north" } run scoreboard players set $rot temp 2
# west
execute if score $facing temp matches 2 if data storage 20w14s:generation/structures/_util/advance input{ facing: "east" } run scoreboard players set $rot temp 2
execute if score $facing temp matches 2 if data storage 20w14s:generation/structures/_util/advance input{ facing: "south" } run scoreboard players set $rot temp 1
execute if score $facing temp matches 2 if data storage 20w14s:generation/structures/_util/advance input{ facing: "north" } run scoreboard players set $rot temp 3
# north
execute if score $facing temp matches 3 if data storage 20w14s:generation/structures/_util/advance input{ facing: "east" } run scoreboard players set $rot temp 3
execute if score $facing temp matches 3 if data storage 20w14s:generation/structures/_util/advance input{ facing: "south" } run scoreboard players set $rot temp 2
execute if score $facing temp matches 3 if data storage 20w14s:generation/structures/_util/advance input{ facing: "west" } run scoreboard players set $rot temp 1

# adjust offsets based on the calculated rotation
# clockwise 90
execute if score $rot temp matches 1 run scoreboard players operation $offset_x temp >< $offset_z temp
execute if score $rot temp matches 1 run scoreboard players operation $offset_x temp *= $-1 temp
# clockwise 180
execute if score $rot temp matches 2 run scoreboard players operation $offset_x temp *= $-1 temp
execute if score $rot temp matches 2 run scoreboard players operation $offset_z temp *= $-1 temp
# counterclockwise 90
execute if score $rot temp matches 3 run scoreboard players operation $offset_z temp >< $offset_x temp
execute if score $rot temp matches 3 run scoreboard players operation $offset_z temp *= $-1 temp

# push one block in the horizontal axis corresponding to the facing direction
execute if score $facing temp matches 0 run scoreboard players add $offset_x temp 1
execute if score $facing temp matches 1 run scoreboard players add $offset_z temp 1
execute if score $facing temp matches 2 run scoreboard players remove $offset_x temp 1
execute if score $facing temp matches 3 run scoreboard players remove $offset_z temp 1

# build each layer, starting with the base layer
data modify storage 20w14s:generation/structures/_util/advance input.layers prepend value {}
data modify storage 20w14s:generation/structures/_util/advance input.layers[0].name set from storage 20w14s:generation/structures/_util/advance input.name
data modify storage 20w14s:generation/structures/_util/advance input.layers[0].name set from storage 20w14s:generation/structures/_util/advance input.integrity
function 20w14s:generation/structures/_util/advance/layer

# Clean up the structure block and the redstone block used to load structures.
fill ~ ~ ~ ~ ~1 ~ minecraft:air

# Remove any adjacent command blocks that may have been placed by the structure. This will stop
# another structure from branching in the same spot. Alternatively, we could recall from earlier
# precisely which direction we're facing to accurately replace a single command block... but, eh.
execute if data storage 20w14s:generation/structures {debug: true} run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:purple_carpet replace #20w14s:command_blocks
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #20w14s:command_blocks

# clear input arguments after we're done
data remove storage 20w14s:generation/structures/_util/advance input
