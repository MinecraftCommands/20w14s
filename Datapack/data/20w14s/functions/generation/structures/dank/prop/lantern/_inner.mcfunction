#> 20w14s:generation/structures/dank/prop/lantern/_inner

execute if score $rng.483692383f93 temp matches 0 run setblock ~ ~ ~ minecraft:soul_fire_lantern[hanging=true]
execute if score $rng.483692383f93 temp matches 1 run fill ~ ~ ~ ~ ~ ~ minecraft:iron_bars
execute if score $rng.483692383f93 temp matches 1 run setblock ~ ~-1 ~ minecraft:soul_fire_lantern[hanging=true]
execute if score $rng.483692383f93 temp matches 2 run fill ~ ~ ~ ~ ~-1 ~ minecraft:iron_bars
execute if score $rng.483692383f93 temp matches 2 run setblock ~ ~-2 ~ minecraft:soul_fire_lantern[hanging=true]
execute if score $rng.483692383f93 temp matches 3 run fill ~ ~ ~ ~ ~-2 ~ minecraft:iron_bars
execute if score $rng.483692383f93 temp matches 3 run setblock ~ ~-3 ~ minecraft:soul_fire_lantern[hanging=true]
