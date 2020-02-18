#> 20w14s:generation/structures/dank/build/ceiling

fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:stone

scoreboard players set $rng.483692383f93 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 8
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 16
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 32

execute if score $rng.483692383f93 temp matches 0 run setblock ~ ~-1 ~ minecraft:soul_fire_lantern[hanging=true]
execute if score $rng.483692383f93 temp matches 1 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:iron_bars
execute if score $rng.483692383f93 temp matches 1 run setblock ~ ~-2 ~ minecraft:soul_fire_lantern[hanging=true]
execute if score $rng.483692383f93 temp matches 2 run fill ~ ~-1 ~ ~ ~-2 ~ minecraft:iron_bars
execute if score $rng.483692383f93 temp matches 2 run setblock ~ ~-3 ~ minecraft:soul_fire_lantern[hanging=true]
execute if score $rng.483692383f93 temp matches 3 run fill ~ ~-1 ~ ~ ~-3 ~ minecraft:iron_bars
execute if score $rng.483692383f93 temp matches 3 run setblock ~ ~-4 ~ minecraft:soul_fire_lantern[hanging=true]
execute if score $rng.483692383f93 temp matches 4.. run setblock ~ ~ ~ minecraft:emerald_ore
