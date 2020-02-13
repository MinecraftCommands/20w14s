#> 20w14s:generation/structures/_util/advance
#
# This function takes a base structure and does all the math for you.
#
# @input
#   storage 20w14s:generation/structures/_util/advance
#       input.name: string
#           The name of the structure to load.
#       input.facing: east/south/west/north
#           The direction you're facing when looking at the entry point, if applicable.
#       input.size: [x, y, z]
#           The size of the structure in each dimension x, y, and z.
#       input.offset: [x, y, z]
#           The offset of the entry point in a fixed position (no rotation).

# set some constants
scoreboard players set $-1 temp -1

# extract arguments
# TODO Remove size argument if it's not being used.
# execute store result score $size_x temp run data get storage 20w14s:generation/structures/_util/advance input.size[0]
# execute store result score $size_y temp run data get storage 20w14s:generation/structures/_util/advance input.size[1]
# execute store result score $size_z temp run data get storage 20w14s:generation/structures/_util/advance input.size[2]
execute store result score $offset_x temp run data get storage 20w14s:generation/structures/_util/advance input.offset[0]
execute store result score $offset_y temp run data get storage 20w14s:generation/structures/_util/advance input.offset[1]
execute store result score $offset_z temp run data get storage 20w14s:generation/structures/_util/advance input.offset[2]

# branch based on the direction the command block is facing
execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] run function 20w14s:generation/structures/_util/advance/east
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] run function 20w14s:generation/structures/_util/advance/south
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] run function 20w14s:generation/structures/_util/advance/west
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] run function 20w14s:generation/structures/_util/advance/north
execute if block ~ ~ ~ #20w14s:command_blocks[facing=up] run function 20w14s:generation/structures/_util/advance/up
execute if block ~ ~ ~ #20w14s:command_blocks[facing=down] run function 20w14s:generation/structures/_util/advance/down

# inject final values into structure block
data modify block ~ ~ ~ name set from storage 20w14s:generation/structures/_util/advance input.name
execute store result block ~ ~ ~ posX int 1.0 run scoreboard players get $offset_x temp
execute store result block ~ ~ ~ posY int 1.0 run scoreboard players get $offset_y temp
execute store result block ~ ~ ~ posZ int 1.0 run scoreboard players get $offset_z temp

# activate the structure block
function 20w14s:generation/structures/_util/activate
