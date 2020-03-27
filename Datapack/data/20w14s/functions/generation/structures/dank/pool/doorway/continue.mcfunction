#> 20w14s:generation/structures/dank/pool/doorway/continue

data modify storage 20w14s:generation/structures/_util/branch __input__ set value {table: '20w14s:structures/dank/pool/doorway'}
function 20w14s:generation/structures/dank/pool/_branch

# If we branched, choose a random obstacle for the doorway.
execute if score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/doorway/obstacle

# Otherwise, turn into a wall.
execute unless score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/doorway/wall.colliding
