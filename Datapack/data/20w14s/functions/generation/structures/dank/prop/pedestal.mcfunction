#> 20w14s:generation/structures/dank/prop/pedestal

scoreboard players set $rng.c612834c511a temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.c612834c511a temp 1

execute if score $rng.c612834c511a temp matches 0 run function 20w14s:generation/structures/dank/prop/pedestal/skull
execute if score $rng.c612834c511a temp matches 1 run function 20w14s:generation/structures/dank/prop/pedestal/chest

fill ~ ~ ~ ~ ~ ~ minecraft:chiseled_stone_bricks replace #20w14s:command_blocks
