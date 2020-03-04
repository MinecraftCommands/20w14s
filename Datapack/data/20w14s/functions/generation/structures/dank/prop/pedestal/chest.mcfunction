#> 20w14s:generation/structures/dank/prop/pedestal/chest

scoreboard players set $rng.f2e86487f3df temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.f2e86487f3df temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.f2e86487f3df temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.f2e86487f3df temp 4

execute if score $rng.f2e86487f3df temp matches 0..6 run function 20w14s:generation/structures/dank/prop/pedestal/chest/safe
execute if score $rng.f2e86487f3df temp matches 7 run function 20w14s:generation/structures/dank/prop/pedestal/chest/trap
