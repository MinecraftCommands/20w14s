#> 20w14s:generation/structures/_util/advance/layer

# Clear space first to avoid bugs with replacing blocks.
fill ~ ~ ~ ~ ~1 ~ minecraft:air

# place the structure block with the calculated rotation
execute if score $rot temp matches 0 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "NONE" }
execute if score $rot temp matches 1 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "CLOCKWISE_90" }
execute if score $rot temp matches 2 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "CLOCKWISE_180" }
execute if score $rot temp matches 3 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{ mode: "LOAD", rotation: "COUNTERCLOCKWISE_90" }

# inject final values into structure block
data modify block ~ ~ ~ name set from storage 20w14s:generation/structures/_util/advance input.layers[0].name
data modify block ~ ~ ~ integrity set from storage 20w14s:generation/structures/_util/advance input.layers[0].integrity
execute store result block ~ ~ ~ posX int 1.0 run scoreboard players get $offset_x temp
execute store result block ~ ~ ~ posY int 1.0 run scoreboard players get $offset_y temp
execute store result block ~ ~ ~ posZ int 1.0 run scoreboard players get $offset_z temp

# remove this layer from the input
data remove storage 20w14s:generation/structures/_util/advance input.layers[0]

# TODO Implement random mirror/flip? #enhance
# scoreboard players operation rng temp %= 2 const
# execute if score rng temp matches 0 run data modify block ~ ~ ~ mirror set value "NONE"
# execute if score rng temp matches 1 run data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"

# Activate the structure block to place the structure.
setblock ~ ~1 ~ minecraft:redstone_block

# ~o~ Magic happens, and the structure is loaded synchronously. ~o~

# continue if there are more layers
execute if data storage 20w14s:generation/structures/_util/advance input.layers[] run function 20w14s:generation/structures/_util/advance/layer
