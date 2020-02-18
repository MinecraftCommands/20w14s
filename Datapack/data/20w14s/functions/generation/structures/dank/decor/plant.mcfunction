#> 20w14s:generation/structures/dank/decor/plant

scoreboard players set $rng.27cf3dd6d2f2 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.27cf3dd6d2f2 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.27cf3dd6d2f2 temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.27cf3dd6d2f2 temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.27cf3dd6d2f2 temp 8

execute if score $rng.27cf3dd6d2f2 temp matches 0 run setblock ~ ~ ~ minecraft:wither_rose
execute if score $rng.27cf3dd6d2f2 temp matches 1..4 run setblock ~ ~ ~ minecraft:dead_bush
execute if score $rng.27cf3dd6d2f2 temp matches 5..8 run setblock ~ ~ ~ minecraft:large_fern[half=lower]
execute if score $rng.27cf3dd6d2f2 temp matches 5..8 run setblock ~ ~1 ~ minecraft:large_fern[half=upper]
execute if score $rng.27cf3dd6d2f2 temp matches 9.. run setblock ~ ~ ~ minecraft:tall_grass[half=lower]
execute if score $rng.27cf3dd6d2f2 temp matches 9.. run setblock ~ ~1 ~ minecraft:tall_grass[half=upper]
