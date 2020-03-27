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
execute if score rng temp matches 0..49 run data modify block ~ ~ ~ name set value "20w14s:crypt/choice"
execute if score rng temp matches 50..74 run data modify block ~ ~ ~ name set value "20w14s:crypt/crossroads"
execute if score rng temp matches 75..149 run data modify block ~ ~ ~ name set value "20w14s:crypt/intersection"
execute if score rng temp matches 150..349 run data modify block ~ ~ ~ name set value "20w14s:crypt/hall"
execute if score rng temp matches 350..399 run data modify block ~ ~ ~ name set value "20w14s:crypt/descend"
execute if score rng temp matches 400..699 run data modify block ~ ~ ~ name set value "20w14s:crypt/long"
execute if score rng temp matches 700..774 run data modify block ~ ~ ~ name set value "20w14s:crypt/pit"
execute if score rng temp matches 775..924 run data modify block ~ ~ ~ name set value "20w14s:crypt/short"
execute if score rng temp matches 925..1174 run data modify block ~ ~ ~ name set value "20w14s:crypt/stairs"
execute if score rng temp matches 1175..1249 run data modify block ~ ~ ~ name set value "20w14s:crypt/corner"
execute if score rng temp matches 1250..1324 run data modify block ~ ~ ~ name set value "20w14s:crypt/corner_left"
execute if score rng temp matches 1325..1474 run data modify block ~ ~ ~ name set value "20w14s:crypt/spawner_room"
execute if score rng temp matches 1475..1624 run data modify block ~ ~ ~ name set value "20w14s:crypt/shrine"
execute if score rng temp matches 1625..1824 run data modify block ~ ~ ~ name set value "20w14s:crypt/view"
execute if score rng temp matches 1825..1974 run data modify block ~ ~ ~ name set value "20w14s:crypt/altar"
execute if score rng temp matches 1975..2047 run data modify block ~ ~ ~ name set value "20w14s:crypt/dead_end"

# Random mirroring
scoreboard players operation rng temp %= 2 const
execute if score rng temp matches 0 run data modify block ~ ~ ~ mirror set value "NONE"
execute if score rng temp matches 1 run data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"

# Activate
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
