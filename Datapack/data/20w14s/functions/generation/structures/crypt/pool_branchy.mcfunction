# Set direction based on command block rotation
execute if block ~ ~ ~ command_block[facing=east] run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"NONE",posX:1}
execute if block ~ ~ ~ command_block[facing=south] run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posZ:1}
execute if block ~ ~ ~ command_block[facing=west] run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:-1}
execute if block ~ ~ ~ command_block[facing=north] run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",posZ:-1}

# Choose structure
function 20w14s:general/random_number
scoreboard players operation rng temp = seed 20w14s.random
scoreboard players operation rng temp /= 2048 const
scoreboard players operation rng temp %= 2048 const
execute if score rng temp matches ..499 run data modify block ~ ~ ~ name set value "20w14s:crypt/choice"
execute if score rng temp matches 500..1499 run data modify block ~ ~ ~ name set value "20w14s:crypt/crossroads"
execute if score rng temp matches 1500.. run data modify block ~ ~ ~ name set value "20w14s:crypt/intersection"

# Or force another descent
execute store result score y temp run data get block ~ ~ ~ y
execute if score y temp matches 54.. run data modify block ~ ~ ~ name set value "20w14s:crypt/descend"

# Random mirroring
scoreboard players operation rng temp %= 2 const
execute if score rng temp matches 0 run data modify block ~ ~ ~ mirror set value "NONE"
execute if score rng temp matches 1 run data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"

# Activate
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
