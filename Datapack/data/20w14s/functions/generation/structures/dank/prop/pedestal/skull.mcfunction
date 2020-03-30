#> 20w14s:generation/structures/dank/prop/pedestal/skull

scoreboard players set $rng.40d5a91bd863 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.40d5a91bd863 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.40d5a91bd863 temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.40d5a91bd863 temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.40d5a91bd863 temp 8
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.40d5a91bd863 temp 16
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.40d5a91bd863 temp 32

execute if score $rng.40d5a91bd863 temp matches 0..19 run function 20w14s:generation/structures/dank/prop/pedestal/skull/skeleton
execute if score $rng.40d5a91bd863 temp matches 20..27 run function 20w14s:generation/structures/dank/prop/pedestal/skull/zombie
execute if score $rng.40d5a91bd863 temp matches 28..30 run function 20w14s:generation/structures/dank/prop/pedestal/skull/creeper
execute if score $rng.40d5a91bd863 temp matches 31 run function 20w14s:generation/structures/dank/prop/pedestal/skull/wither
