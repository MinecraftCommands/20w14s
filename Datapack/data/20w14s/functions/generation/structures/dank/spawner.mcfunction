#> 20w14s:generation/structures/dank/spawner

scoreboard players set $rng.55b8dab15448 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.55b8dab15448 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.55b8dab15448 temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.55b8dab15448 temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.55b8dab15448 temp 8

execute if score $rng.55b8dab15448 temp matches 0..5 run function 20w14s:generation/structures/dank/spawner/zombie
execute if score $rng.55b8dab15448 temp matches 6..8 run function 20w14s:generation/structures/dank/spawner/skeleton
execute if score $rng.55b8dab15448 temp matches 9..11 run function 20w14s:generation/structures/dank/spawner/spider
execute if score $rng.55b8dab15448 temp matches 12..13 run function 20w14s:generation/structures/dank/spawner/witch
execute if score $rng.55b8dab15448 temp matches 14 run function 20w14s:generation/structures/dank/spawner/silverfish
execute if score $rng.55b8dab15448 temp matches 15 run function 20w14s:generation/structures/dank/spawner/creeper

# data modify block ~ ~ ~ Delay set value 1

scoreboard players set $rng.55b8dab15448 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.55b8dab15448 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.55b8dab15448 temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.55b8dab15448 temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.55b8dab15448 temp 8

execute if score $rng.55b8dab15448 temp matches 0 run function 20w14s:generation/structures/dank/spawner/_trap
