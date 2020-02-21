#> 20w14s:generation/structures/dank/build/doorway/obstacle

scoreboard players set $rng.3f7fb57e980a temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.3f7fb57e980a temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.3f7fb57e980a temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.3f7fb57e980a temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.3f7fb57e980a temp 8
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.3f7fb57e980a temp 16

execute if score $rng.3f7fb57e980a temp matches 0..3 run function 20w14s:generation/structures/dank/build/doorway/obstacle/bars
execute if score $rng.3f7fb57e980a temp matches 4..7 run function 20w14s:generation/structures/dank/build/doorway/obstacle/webs
execute if score $rng.3f7fb57e980a temp matches 8..9 run function 20w14s:generation/structures/dank/build/doorway/obstacle/spruce_door
execute if score $rng.3f7fb57e980a temp matches 10..11 run function 20w14s:generation/structures/dank/build/doorway/obstacle/iron_door
execute if score $rng.3f7fb57e980a temp matches 12..13 run function 20w14s:generation/structures/dank/build/doorway/obstacle/debris
execute if score $rng.3f7fb57e980a temp matches 14..15 run function 20w14s:generation/structures/dank/build/doorway/obstacle/secret
