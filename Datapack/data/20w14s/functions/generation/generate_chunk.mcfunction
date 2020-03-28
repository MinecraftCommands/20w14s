# Breakable bedrock (conveniently keeps track of generated chunks)
fill ~ 0 ~ ~15 0 ~15 end_stone_bricks replace bedrock

# For random structures (doesn't use seed)
function 20w14s:general/random_number
scoreboard players operation rng temp = seed 20w14s.random
scoreboard players operation rng temp /= 2048 const
scoreboard players operation rng temp %= 2048 const

# Dimension-specific stuff
execute if predicate 20w14s:in_overworld run function 20w14s:generation/generate_overworld_chunk
execute if predicate 20w14s:in_nether run function 20w14s:generation/generate_nether_chunk
