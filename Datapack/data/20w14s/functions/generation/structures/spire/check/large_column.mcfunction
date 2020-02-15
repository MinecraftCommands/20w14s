#> 20w14s:generation/structures/spire/check/large_column

# check a larger column of air
execute store result score $fill_air temp run fill ~-4 32 ~-4 ~4 96 ~4 minecraft:barrier replace minecraft:air
fill ~-4 32 ~-4 ~4 96 ~4 minecraft:air replace minecraft:barrier
execute store result score $fill_cave_air temp run fill ~-4 32 ~-4 ~4 96 ~4 minecraft:barrier replace minecraft:cave_air
fill ~-4 32 ~-4 ~4 96 ~4 minecraft:cave_air replace minecraft:barrier
scoreboard players operation $fill_air_total temp = $fill_air temp
scoreboard players operation $fill_air_total temp += $fill_cave_air temp

# allow up to 20 blocks of leeway
execute unless score $fill_air_total temp matches 5225.. run scoreboard players set $continue temp 0

# DELETEME
tellraw @a ["[20w14s:generation/structures/spire/check/large_column] air: ", {"score": {"name": "$fill_air", "objective": "temp"}}]
tellraw @a ["[20w14s:generation/structures/spire/check/large_column] cave air: ", {"score": {"name": "$fill_cave_air", "objective": "temp"}}]
tellraw @a ["[20w14s:generation/structures/spire/check/large_column] total: ", {"score": {"name": "$fill_air_total", "objective": "temp"}}, " / 5225 (+40)"]
execute if score $continue temp matches 1.. run tellraw @a ["[20w14s:generation/structures/spire/check/large_column] ", {"text": "continue", "color": "green"}]
execute unless score $continue temp matches 1.. run tellraw @a ["[20w14s:generation/structures/spire/check/large_column] ", {"text": "break", "color": "red"}]
execute unless score $continue temp matches 1.. run fill ~ 31 ~ ~ 96 ~ minecraft:white_stained_glass replace minecraft:air
