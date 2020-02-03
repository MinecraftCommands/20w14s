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
execute if score rng temp matches 0..99 run data modify block ~ ~ ~ name set value "20w14s:crypt/choice"
execute if score rng temp matches 100..299 run data modify block ~ ~ ~ name set value "20w14s:crypt/crossroads"
execute if score rng temp matches 300..399 run data modify block ~ ~ ~ name set value "20w14s:crypt/intersection"
execute if score rng temp matches 400..499 run data modify block ~ ~ ~ name set value "20w14s:crypt/hall"
execute if score rng temp matches 500..699 run data modify block ~ ~ ~ name set value "20w14s:crypt/descend"
execute if score rng temp matches 700..799 run data modify block ~ ~ ~ name set value "20w14s:crypt/long"
execute if score rng temp matches 800..899 run data modify block ~ ~ ~ name set value "20w14s:crypt/pit"
execute if score rng temp matches 900..999 run data modify block ~ ~ ~ name set value "20w14s:crypt/short"
execute if score rng temp matches 1000..1099 run data modify block ~ ~ ~ name set value "20w14s:crypt/stairs"
execute if score rng temp matches 1100..1199 run data modify block ~ ~ ~ name set value "20w14s:crypt/corner"
execute if score rng temp matches 1200..1299 run data modify block ~ ~ ~ name set value "20w14s:crypt/corner_left"
execute if score rng temp matches 1300..1449 run data modify block ~ ~ ~ name set value "20w14s:crypt/spawner_room"
execute if score rng temp matches 1450..1649 run data modify block ~ ~ ~ name set value "20w14s:crypt/shrine"
execute if score rng temp matches 1650..1749 run data modify block ~ ~ ~ name set value "20w14s:crypt/view"
execute if score rng temp matches 1750..1949 run data modify block ~ ~ ~ name set value "20w14s:crypt/altar"
execute if score rng temp matches 1950..2047 run data modify block ~ ~ ~ name set value "20w14s:crypt/dead_end"

# Random mirroring
scoreboard players operation rng temp %= 2 const
execute if score rng temp matches 0 run data modify block ~ ~ ~ mirror set value "NONE"
execute if score rng temp matches 1 run data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"

# Activate
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
