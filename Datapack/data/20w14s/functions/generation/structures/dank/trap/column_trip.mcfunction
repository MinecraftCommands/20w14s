#> 20w14s:generation/structures/dank/trap/column_trip

scoreboard players set $rng.068cd737bcfa temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.068cd737bcfa temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.068cd737bcfa temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.068cd737bcfa temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.068cd737bcfa temp 8

execute if score $rng.068cd737bcfa temp matches 0 run function 20w14s:generation/structures/dank/trap/column_trip/set
execute if score $rng.068cd737bcfa temp matches 1.. run setblock ~ ~ ~ minecraft:air
