#> 20w14s:items/loot_bag/blue_shinies

scoreboard players set $rng.c82da5ae0ff7 temp 0
execute if predicate 20w14s:chance_90 run scoreboard players set $rng.c82da5ae0ff7 temp 1

execute if score $rng.c82da5ae0ff7 temp matches 0 run function 20w14s:items/loot_bag/blue_shinies/boom
execute unless score $rng.c82da5ae0ff7 temp matches 0 run function 20w14s:items/loot_bag/blue_shinies/diamond
