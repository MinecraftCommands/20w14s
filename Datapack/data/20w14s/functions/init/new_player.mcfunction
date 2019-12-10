# Assign ID
scoreboard players add .next 20w14s.id 1
scoreboard players operation @s 20w14s.id = .next 20w14s.id


tellraw @s {"text":"You are playing snapshot 20w14✧","color":"aqua"}
tag @s add 20w14s.initialised