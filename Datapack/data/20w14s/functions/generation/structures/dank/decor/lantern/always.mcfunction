#> 20w14s:generation/structures/dank/decor/lantern/always

scoreboard players set $rng.483692383f93 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.483692383f93 temp 2

function 20w14s:generation/structures/dank/decor/lantern/_inner
