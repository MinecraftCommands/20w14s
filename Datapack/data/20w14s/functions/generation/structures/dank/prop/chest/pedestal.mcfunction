#> 20w14s:generation/structures/dank/prop/chest/pedestal

function 20w14s:generation/structures/dank/prop/chest/_place

scoreboard players set $rng.5f1f55fd152d temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 8
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 16
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 32
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.5f1f55fd152d temp 64

execute if score $rng.5f1f55fd152d temp matches 0..47 run function 20w14s:generation/structures/dank/prop/chest/_set/common
execute if score $rng.5f1f55fd152d temp matches 48..71 run function 20w14s:generation/structures/dank/prop/chest/_set/uncommon
execute if score $rng.5f1f55fd152d temp matches 72..83 run function 20w14s:generation/structures/dank/prop/chest/_set/rare
execute if score $rng.5f1f55fd152d temp matches 84..89 run function 20w14s:generation/structures/dank/prop/chest/_set/epic
execute if score $rng.5f1f55fd152d temp matches 90..91 run function 20w14s:generation/structures/dank/prop/chest/_set/legendary
execute if score $rng.5f1f55fd152d temp matches 92..95 run setblock ~ ~ ~ minecraft:potted_fern
execute if score $rng.5f1f55fd152d temp matches 96..99 run setblock ~ ~ ~ minecraft:potted_dead_bush
execute if score $rng.5f1f55fd152d temp matches 100..103 run setblock ~ ~ ~ minecraft:potted_wither_rose
execute if score $rng.5f1f55fd152d temp matches 104..107 run setblock ~ ~ ~ minecraft:soul_fire_lantern
execute if score $rng.5f1f55fd152d temp matches 108.. run setblock ~ ~ ~ minecraft:air
