#> 20w14s:generation/structures/dank/prop/chest/floor

function 20w14s:generation/structures/dank/prop/chest/_place

scoreboard players set $rng.c82da5ae0ff7 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 8
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 16
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 32
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c82da5ae0ff7 temp 64

execute if score $rng.c82da5ae0ff7 temp matches 0..23 run function 20w14s:generation/structures/dank/prop/chest/_set/common
execute if score $rng.c82da5ae0ff7 temp matches 24..35 run function 20w14s:generation/structures/dank/prop/chest/_set/uncommon
execute if score $rng.c82da5ae0ff7 temp matches 36..41 run function 20w14s:generation/structures/dank/prop/chest/_set/rare
execute if score $rng.c82da5ae0ff7 temp matches 42..44 run function 20w14s:generation/structures/dank/prop/chest/_set/epic
execute if score $rng.c82da5ae0ff7 temp matches 45 run function 20w14s:generation/structures/dank/prop/chest/_set/legendary
execute if score $rng.c82da5ae0ff7 temp matches 46..51 run function 20w14s:generation/structures/dank/prop/chest/_set/trap
execute if score $rng.c82da5ae0ff7 temp matches 52.. run setblock ~ ~ ~ minecraft:air
