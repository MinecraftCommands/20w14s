#> 20w14s:generation/structures/dank/build/doorway/obstacle/secret

# NOTE We need to fake the command block because it's already been overwritten.
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run setblock ~ ~ ~ minecraft:repeating_command_block[facing=north]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run setblock ~ ~ ~ minecraft:repeating_command_block[facing=south]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run setblock ~ ~ ~ minecraft:repeating_command_block[facing=west]
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run setblock ~ ~ ~ minecraft:repeating_command_block[facing=east]
function 20w14s:generation/structures/dank/build/doorway/wall

scoreboard players set $rng.156b3622bbb5 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.156b3622bbb5 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.156b3622bbb5 temp 2

execute if score $rng.156b3622bbb5 temp matches 0 run function 20w14s:generation/structures/dank/build/doorway/obstacle/secret/chiseled
execute if score $rng.156b3622bbb5 temp matches 1 run function 20w14s:generation/structures/dank/build/doorway/obstacle/secret/skull
execute if score $rng.156b3622bbb5 temp matches 2 run function 20w14s:generation/structures/dank/build/doorway/obstacle/secret/emerald_x
execute if score $rng.156b3622bbb5 temp matches 3 run function 20w14s:generation/structures/dank/build/doorway/obstacle/secret/diamond_trap
