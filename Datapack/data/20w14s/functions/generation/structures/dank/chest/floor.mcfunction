#> 20w14s:generation/structures/dank/chest/floor

function 20w14s:generation/structures/dank/chest/_place

scoreboard players set $rng.c82da5ae0ff7 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 8
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 16

execute if score $rng.c82da5ae0ff7 temp matches 0..5 run function 20w14s:generation/structures/dank/chest/_set/common
execute if score $rng.c82da5ae0ff7 temp matches 6..8 run function 20w14s:generation/structures/dank/chest/_set/uncommon
execute if score $rng.c82da5ae0ff7 temp matches 9 run function 20w14s:generation/structures/dank/chest/_set/rare
execute if score $rng.c82da5ae0ff7 temp matches 10 run function 20w14s:generation/structures/dank/chest/_set/trap
execute if score $rng.c82da5ae0ff7 temp matches 11.. run setblock ~ ~ ~ minecraft:air
