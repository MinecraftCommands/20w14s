#> 20w14s:generation/structures/dank/pool/_check_all

# NOTE This could be optimized for each pool individually, at the cost of convenience.

function 20w14s:generation/structures/_util/branch

execute if data storage 20w14s:generation/structures/_util/branch __output__{structure: 'wall'} run function 20w14s:generation/structures/dank/build/doorway/wall.dead_end
execute if data storage 20w14s:generation/structures/_util/branch __output__{structure: 'single/doorway'} run function 20w14s:generation/structures/dank/check/single/doorway
execute if data storage 20w14s:generation/structures/_util/branch __output__{structure: 'spiraling_rooms/lower_doorway'} run function 20w14s:generation/structures/dank/check/spiraling_rooms/lower_doorway
execute if data storage 20w14s:generation/structures/_util/branch __output__{structure: 'spiraling_rooms/upper_doorway'} run function 20w14s:generation/structures/dank/check/spiraling_rooms/upper_doorway
execute if data storage 20w14s:generation/structures/_util/branch __output__{structure: 'pitfall/lower_doorway'} run function 20w14s:generation/structures/dank/check/pitfall/lower_doorway
execute if data storage 20w14s:generation/structures/_util/branch __output__{structure: 'pitfall/upper_doorway'} run function 20w14s:generation/structures/dank/check/pitfall/upper_doorway
execute if data storage 20w14s:generation/structures/_util/branch __output__{structure: 'high_halls/lower_doorway'} run function 20w14s:generation/structures/dank/check/high_halls/lower_doorway
execute if data storage 20w14s:generation/structures/_util/branch __output__{structure: 'high_halls/upper_doorway'} run function 20w14s:generation/structures/dank/check/high_halls/upper_doorway
execute if data storage 20w14s:generation/structures/_util/branch __output__{structure: 'arcade/doorway'} run function 20w14s:generation/structures/dank/check/arcade/doorway
