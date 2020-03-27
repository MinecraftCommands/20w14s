#> 20w14s:generation/structures/dank/pool/initial_doorway/continue

data modify storage 20w14s:generation/structures/_util/branch __input__ set value {table: '20w14s:structures/dank/pool/initial_doorway'}
function 20w14s:generation/structures/dank/pool/_branch

# If we branched, block off the doorway with iron bars.
execute if score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/doorway/obstacle/bars

# Otherwise, turn into a wall.
execute unless score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/doorway/wall.colliding
