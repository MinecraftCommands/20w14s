#> 20w14s:items/loot_bag/bottomless_bomb_in_a_bag

scoreboard players set $rng.0b85b30803af temp 0
execute if predicate 20w14s:chance_02 run scoreboard players set $rng.0b85b30803af temp 1

execute if score $rng.0b85b30803af temp matches 0 run function 20w14s:items/loot_bag/bottomless_bomb_in_a_bag/pass
execute unless score $rng.0b85b30803af temp matches 0 run function 20w14s:items/loot_bag/bottomless_bomb_in_a_bag/fail
