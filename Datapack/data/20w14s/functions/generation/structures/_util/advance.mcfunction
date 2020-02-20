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
#       input.anchor: east/south/west/north/up/down/none
#           The direction in which the entry point is facing in the base structure, or `none` if
#           this is not relevant for the structure being placed.
#       input.size: [x, y, z]
#           The size of the structure in each dimension x, y, and z.
#       input.offset: [x, y, z]
#           The offset of the entry point in a fixed position (no rotation).
#       input.layers: compound[]
#           name: string
#               The name of the structure for this layer.
#           integrity: float
#               The integrity of the structure for this layer.
#       input.nudge: int
#           By how many blocks to push the structure in the direction the command block is facing.
#           Defaults to `1` under the assumption that this is a branching structure.
#       input.passive: boolean
#           Whether to avoid blanking nearby command blocks. The default behaviour is to assume
#           the structure being placed is a branching structure containing auto command blocks at
#           each exit point, and to proceed blanking the one we are entering from. Pass `false` to
#           override this behaviour, which can be useful for procedural sub-structures.

# set some constants
scoreboard players set $-1 temp -1
scoreboard players set $4 temp 4

# extract arguments
execute store result score $offset_x temp run data get storage 20w14s:generation/structures/_util/advance input.offset[0]
execute store result score $offset_y temp run data get storage 20w14s:generation/structures/_util/advance input.offset[1]
execute store result score $offset_z temp run data get storage 20w14s:generation/structures/_util/advance input.offset[2]

# remember which direction the command block is facing
execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] run data modify storage 20w14s:generation/structures/_util/advance temp.facing set value "east"
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] run data modify storage 20w14s:generation/structures/_util/advance temp.facing set value "south"
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] run data modify storage 20w14s:generation/structures/_util/advance temp.facing set value "west"
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] run data modify storage 20w14s:generation/structures/_util/advance temp.facing set value "north"
execute if block ~ ~ ~ #20w14s:command_blocks[facing=up] run data modify storage 20w14s:generation/structures/_util/advance temp.facing set value "up"
execute if block ~ ~ ~ #20w14s:command_blocks[facing=down] run data modify storage 20w14s:generation/structures/_util/advance temp.facing set value "down"

# calculate the final rotation
# start with the base rotation according to the command block's facing direction
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run scoreboard players set $rot temp 0
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run scoreboard players set $rot temp 1
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run scoreboard players set $rot temp 2
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run scoreboard players set $rot temp 3
# then wrap (in reverse) according to the base rotation of the entry point
execute if data storage 20w14s:generation/structures/_util/advance input{anchor: "east"} run scoreboard players add $rot temp 2
execute if data storage 20w14s:generation/structures/_util/advance input{anchor: "south"} run scoreboard players add $rot temp 1
execute if data storage 20w14s:generation/structures/_util/advance input{anchor: "west"} run scoreboard players add $rot temp 0
execute if data storage 20w14s:generation/structures/_util/advance input{anchor: "north"} run scoreboard players add $rot temp 3
# use modulo to wrap around
scoreboard players operation $rot temp %= $4 temp

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

# calculate nudge distance
execute if data storage 20w14s:generation/structures/_util/advance input.nudge store result score $nudge temp run data get storage 20w14s:generation/structures/_util/advance input.nudge
execute unless data storage 20w14s:generation/structures/_util/advance input.nudge run scoreboard players set $nudge temp 1

# push along the horizontal axis corresponding to the command block's facing direction
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run scoreboard players operation $offset_x temp += $nudge temp
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run scoreboard players operation $offset_z temp += $nudge temp
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run scoreboard players operation $offset_x temp -= $nudge temp
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run scoreboard players operation $offset_z temp -= $nudge temp

# build each layer, starting with the base layer
data modify storage 20w14s:generation/structures/_util/advance input.layers prepend value {}
data modify storage 20w14s:generation/structures/_util/advance input.layers[0].name set from storage 20w14s:generation/structures/_util/advance input.name
data modify storage 20w14s:generation/structures/_util/advance input.layers[0].name set from storage 20w14s:generation/structures/_util/advance input.integrity
function 20w14s:generation/structures/_util/advance/layer

# Clean up the structure block and the redstone block used to load structures.
execute if block ~ ~ ~ minecraft:structure_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~1 ~ minecraft:redstone_block run setblock ~ ~1 ~ minecraft:air

# Remove any adjacent command blocks that may have been placed by the structure. This will stop
# another structure from branching in the same spot. Alternatively, we could recall from earlier
# precisely which direction we're facing to accurately replace a single command block... but, eh.
execute if data storage 20w14s:generation/structures {debug: true} unless data storage 20w14s:generation/structures/_util/advance input.passive run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:purple_carpet replace #20w14s:command_blocks
execute unless data storage 20w14s:generation/structures/_util/advance input.passive run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #20w14s:command_blocks

# clear input arguments after we're done
data remove storage 20w14s:generation/structures/_util/advance input
