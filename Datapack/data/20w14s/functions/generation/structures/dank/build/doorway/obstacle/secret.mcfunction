#> 20w14s:generation/structures/dank/build/doorway/obstacle/secret

execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "north"} run fill ~-1 ~ ~ ~1 ~3 ~ minecraft:stone
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "south"} run fill ~-1 ~ ~ ~1 ~3 ~ minecraft:stone
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "west"} run fill ~ ~ ~-1 ~ ~3 ~1 minecraft:stone
execute if data storage 20w14s:generation/structures/_util/advance temp{facing: "east"} run fill ~ ~ ~-1 ~ ~3 ~1 minecraft:stone

scoreboard players set $rng.156b3622bbb5 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.156b3622bbb5 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.156b3622bbb5 temp 2

execute if score $rng.156b3622bbb5 temp matches 0 run function 20w14s:generation/structures/dank/build/doorway/obstacle/secret/chiseled
execute if score $rng.156b3622bbb5 temp matches 1 run function 20w14s:generation/structures/dank/build/doorway/obstacle/secret/skull
execute if score $rng.156b3622bbb5 temp matches 2 run function 20w14s:generation/structures/dank/build/doorway/obstacle/secret/emerald_x
execute if score $rng.156b3622bbb5 temp matches 3 run function 20w14s:generation/structures/dank/build/doorway/obstacle/secret/diamond_trap
