#> 20w14s:generation/structures/spire/check/lava_pool

# check if we're on a lava ocean
execute store result score $fill_lava temp run fill ~-2 30 ~-2 ~2 31 ~2 minecraft:barrier replace minecraft:lava[level=0]
fill ~-2 30 ~-2 ~2 31 ~2 minecraft:lava[level=0] replace minecraft:barrier

execute unless score $fill_lava temp matches 50.. run scoreboard players set $continue temp 0

# DELETEME
tellraw @a ["[20w14s:generation/structures/spire/check/lava_pool] lava: ", {"score": {"name": "$fill_lava", "objective": "temp"}}, " / 50"]
execute if score $continue temp matches 1.. run tellraw @a ["[20w14s:generation/structures/spire/check/lava_pool] ", {"text": "continue", "color": "green"}]
execute unless score $continue temp matches 1.. run tellraw @a ["[20w14s:generation/structures/spire/check/lava_pool] ", {"text": "break", "color": "red"}]
execute unless score $continue temp matches 1.. run fill ~ 31 ~ ~ 101 ~ minecraft:orange_stained_glass replace minecraft:air
