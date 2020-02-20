#> 20w14s:generation/structures/dank/pool/doorway/continue

# Roll RNG using predicates.
scoreboard players set $rng.e326ae65068f temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.e326ae65068f temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.e326ae65068f temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.e326ae65068f temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.e326ae65068f temp 8
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.e326ae65068f temp 16
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.e326ae65068f temp 32
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.e326ae65068f temp 64
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.e326ae65068f temp 128

# Choose a structure to build next based on RNG.
execute if score $rng.e326ae65068f temp matches 0..99 run function 20w14s:generation/structures/dank/check/single/doorway
execute if score $rng.e326ae65068f temp matches 100..119 run function 20w14s:generation/structures/dank/check/spiraling_rooms/lower_doorway
execute if score $rng.e326ae65068f temp matches 120..139 run function 20w14s:generation/structures/dank/check/spiraling_rooms/upper_doorway
execute if score $rng.e326ae65068f temp matches 140..159 run function 20w14s:generation/structures/dank/check/pitfall/lower_doorway
execute if score $rng.e326ae65068f temp matches 160..179 run function 20w14s:generation/structures/dank/check/pitfall/upper_doorway
execute if score $rng.e326ae65068f temp matches 180..184 run function 20w14s:generation/structures/dank/check/high_halls/lower_doorway
execute if score $rng.e326ae65068f temp matches 185..189 run function 20w14s:generation/structures/dank/check/high_halls/upper_doorway
execute if score $rng.e326ae65068f temp matches 190..199 run function 20w14s:generation/structures/dank/check/arcade/doorway
execute if score $rng.e326ae65068f temp matches 200.. run function 20w14s:generation/structures/dank/build/doorway/wall.dead_end

# If we branched to another room, choose a random doorway obstacle.
execute if score $continue temp matches 1.. unless score $rng.e326ae65068f temp matches 200.. run function 20w14s:generation/structures/dank/build/doorway/obstacle
