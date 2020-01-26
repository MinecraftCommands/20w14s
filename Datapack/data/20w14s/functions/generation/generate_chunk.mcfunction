# For random structures (doesn't use seed)
function 20w14s:general/random_number
scoreboard players operation rng temp = seed 20w14s.random
scoreboard players operation rng temp /= 2048 const
scoreboard players operation rng temp %= 2048 const

# Chunk-aligned features
fill ~ 0 ~ ~15 4 ~15 acacia_slab[type=double] replace bedrock
execute if score rng temp matches 100..110 at @s run function 20w14s:generation/structures/tall_villager_house

# Surface features
# TODO: Spreadplayers to surface might lag if there's water
spreadplayers ~1 ~1 0 1 false @s
execute if score rng temp matches ..19 at @s run function 20w14s:generation/structures/void_platform
execute if score rng temp matches 20..99 at @s if block ~ ~-1 ~ grass_block run function 20w14s:generation/structures/graveyard
execute if score rng temp matches 100..120 at @s run function 20w14s:generation/structures/volcano