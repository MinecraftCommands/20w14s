# Chunk-aligned features
execute if score rng temp matches 2046..2048 at @s run function 20w14s:generation/structures/tall_villager_house

# Surface features
execute if score rng temp matches ..100 run function 20w14s:generation/ascend_to_surface/start
execute if score rng temp matches 00..09 at @s run function 20w14s:generation/structures/void_platform
execute if score rng temp matches 10..39 at @s if block ~ ~-1 ~ #20w14s:ground run function 20w14s:generation/structures/graveyard
execute if score rng temp matches 40..41 at @s if score height temp matches 50..75 if block ~ ~-1 ~ #20w14s:ground run function 20w14s:generation/structures/volcano
execute if score rng temp matches 42..45 at @s if score height temp matches 50..75 if block ~ ~-1 ~ #20w14s:ground run function 20w14s:generation/structures/pufferfish_praise_parliament
execute if score rng temp matches 46..52 at @s if score height temp matches 50..75 if block ~ ~-1 ~ #20w14s:ground run function 20w14s:generation/structures/crypt/start
execute if score rng temp matches 53..65 at @s if block ~ ~-1 ~ #20w14s:ground run function 20w14s:mobs/giant/spawn
execute if score rng temp matches 66..73 at @s if block ~ ~-1 ~ #20w14s:ground run function 20w14s:generation/structures/overgrown_base
execute if score rng temp matches 74..80 at @s if block ~ ~-1 ~ #20w14s:ground run function 20w14s:generation/structures/cat_temple
execute if score rng temp matches 95..100 at @s if block ~ ~-1 ~ #20w14s:structures/dank/usable run function 20w14s:generation/structures/dank/start
