# For random structures (doesn't use seed)
function 20w14s:general/random_number
scoreboard players operation rng temp = seed 20w14s.random
scoreboard players operation rng temp /= 2048 const
scoreboard players operation rng temp %= 2048 const

# Chunk-aligned features
fill ~ 0 ~ ~15 0 ~15 acacia_slab[type=double] replace bedrock
execute if score rng temp matches 2040..2048 at @s run function 20w14s:generation/structures/tall_villager_house

# Surface features
execute if score rng temp matches ..100 run function 20w14s:generation/ascend_to_surface/start
execute if score rng temp matches ..9 at @s run function 20w14s:generation/structures/void_platform
execute if score rng temp matches 10..39 at @s if block ~ ~-1 ~ grass_block run function 20w14s:generation/structures/graveyard
execute if score rng temp matches 40..43 at @s run function 20w14s:generation/structures/volcano
execute if score rng temp matches 44..49 at @s run function 20w14s:generation/structures/pufferfish_praise_parliament
execute if score rng temp matches 50..95 at @s run function 20w14s:generation/structures/crypt/start