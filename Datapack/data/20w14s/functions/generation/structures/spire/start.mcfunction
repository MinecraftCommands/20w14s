#> 20w14s:generation/structures/spire/start

# DELETEME
tellraw @a ["[20w14s:generation/structures/spire/start] ", {"text": "start", "color": "aqua"}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2 1

summon minecraft:area_effect_cloud ~ 0 ~ {Duration: 2147483647, Tags: ["20w14s.structure.spire"], CustomName: '{"text": "20w14s.structure.spire", "color": "light_purple"}'}

# TODO the real structure; ideas:
# - choose a random starting (middle) point between 60-80 using 60 + (rng % 20)
# - build a base organic, stalag-like column that slopes outward in both directions (up/down)
# - place the starting structure/entrance at the same middle point
# - starting structure will have different pools for top vs bottom (up vs down)
fill ~ 31 ~ ~ 96 ~ minecraft:soul_sand
fill ~-1 64 ~-1 ~1 66 ~1 minecraft:glowstone
