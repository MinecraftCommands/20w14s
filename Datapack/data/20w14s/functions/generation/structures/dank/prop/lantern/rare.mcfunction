#> 20w14s:generation/structures/dank/prop/lantern/rare

scoreboard players set $rng.483692383f93 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 8
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 16
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 32

function 20w14s:generation/structures/dank/prop/lantern/_inner
