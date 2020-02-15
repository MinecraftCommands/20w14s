#> 20w14s:generation/structures/spire/check/nearby_spire

# check for any other nearby spires
execute positioned ~-160 -1 ~-160 if entity @e[type=minecraft:area_effect_cloud, dx=320, dy=3, dz=320, tag=20w14s.structure.spire] run scoreboard players set $continue temp 0

# DELETEME
execute positioned ~-160 -1 ~-160 run tellraw @a ["[20w14s:generation/structures/spire/check/nearby_spire] nearby spire: ", {"selector": "@e[type=minecraft:area_effect_cloud, dx=320, dy=3, dz=320, tag=20w14s.structure.spire]"}]
execute if score $continue temp matches 1.. run tellraw @a ["[20w14s:generation/structures/spire/check/nearby_spire] ", {"text": "continue", "color": "green"}]
execute unless score $continue temp matches 1.. run tellraw @a ["[20w14s:generation/structures/spire/check/nearby_spire] ", {"text": "break", "color": "red"}]
execute unless score $continue temp matches 1.. run fill ~ 31 ~ ~ 101 ~ minecraft:black_stained_glass replace minecraft:air
