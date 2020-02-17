#> 20w14s:generation/structures/dank/chest/pedestal

function 20w14s:generation/structures/dank/chest/_place

scoreboard players set $rng.5f1f55fd152d temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 8
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 16

execute if score $rng.5f1f55fd152d temp matches 0..11 run function 20w14s:generation/structures/dank/chest/_set/common
execute if score $rng.5f1f55fd152d temp matches 12..17 run function 20w14s:generation/structures/dank/chest/_set/uncommon
execute if score $rng.5f1f55fd152d temp matches 18..19 run function 20w14s:generation/structures/dank/chest/_set/rare
execute if score $rng.5f1f55fd152d temp matches 20 run setblock ~ ~ ~ minecraft:potted_fern
execute if score $rng.5f1f55fd152d temp matches 21 run setblock ~ ~ ~ minecraft:potted_dead_bush
execute if score $rng.5f1f55fd152d temp matches 22 run setblock ~ ~ ~ minecraft:potted_wither_rose
execute if score $rng.5f1f55fd152d temp matches 23 run setblock ~ ~ ~ minecraft:lantern
execute if score $rng.5f1f55fd152d temp matches 24.. run setblock ~ ~ ~ minecraft:air
