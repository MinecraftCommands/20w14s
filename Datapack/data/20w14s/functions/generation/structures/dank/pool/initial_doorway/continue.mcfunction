#> 20w14s:generation/structures/dank/pool/initial_doorway/continue

# Roll RNG using predicates.
scoreboard players set $rng.74e674a0cd9a temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.74e674a0cd9a temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.74e674a0cd9a temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.74e674a0cd9a temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.74e674a0cd9a temp 8

# Choose a structure to build next based on RNG.
execute if score $rng.74e674a0cd9a temp matches 0..1 run function 20w14s:generation/structures/dank/check/spiraling_rooms/lower_doorway
execute if score $rng.74e674a0cd9a temp matches 2..3 run function 20w14s:generation/structures/dank/check/spiraling_rooms/upper_doorway
execute if score $rng.74e674a0cd9a temp matches 4..5 run function 20w14s:generation/structures/dank/check/pitfall/lower_doorway
execute if score $rng.74e674a0cd9a temp matches 6..7 run function 20w14s:generation/structures/dank/check/pitfall/upper_doorway
execute if score $rng.74e674a0cd9a temp matches 8..9 run function 20w14s:generation/structures/dank/check/high_halls/lower_doorway
execute if score $rng.74e674a0cd9a temp matches 10..11 run function 20w14s:generation/structures/dank/check/high_halls/upper_doorway
execute if score $rng.74e674a0cd9a temp matches 12..15 run function 20w14s:generation/structures/dank/check/arcade/doorway
