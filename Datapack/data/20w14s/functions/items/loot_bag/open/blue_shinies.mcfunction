#> 20w14s:items/loot_bag/open/blue_shinies

scoreboard players set $rng.3b78f918026f temp 0
execute if predicate 20w14s:chance_90 run scoreboard players set $rng.3b78f918026f temp 1

execute if score $rng.3b78f918026f temp matches 0 run function 20w14s:items/loot_bag/open/blue_shinies/boom
execute unless score $rng.3b78f918026f temp matches 0 run function 20w14s:items/loot_bag/open/blue_shinies/diamond
