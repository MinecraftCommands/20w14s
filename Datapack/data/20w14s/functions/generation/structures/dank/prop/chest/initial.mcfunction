#> 20w14s:generation/structures/dank/prop/chest/initial

function 20w14s:generation/structures/dank/prop/chest/_place

scoreboard players set $rng.9c6ff378493d temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.9c6ff378493d temp 1

execute if score $rng.9c6ff378493d temp matches 0 run data modify block ~ ~ ~ LootTable set value "20w14s:chests/dank/initial"
execute if score $rng.9c6ff378493d temp matches 1.. run setblock ~ ~ ~ minecraft:air
