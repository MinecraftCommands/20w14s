#> 20w14s:generation/structures/dank/check/high_halls/upper_doorway

# y-10, z+5
## y-1, z+5
# y+8, z+5

# y-10, z+13
## y-1, z+13
# y+8, z+13

# x+8, y-10, z+13
## x+8, y-1, z+13
# x+8, y+8, z+13

# x+8, y-10, z+21
## x+8, y-1, z+21
# x+8, y+8, z+21

scoreboard players set $continue temp 0

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] store success score $continue temp if block ~5 ~-10 ~ #20w14s:structures/dank/usable if block ~5 ~8 ~ #20w14s:structures/dank/usable if block ~13 ~-10 ~ #20w14s:structures/dank/usable if block ~13 ~8 ~ #20w14s:structures/dank/usable if block ~13 ~-10 ~-8 #20w14s:structures/dank/usable if block ~13 ~8 ~-8 #20w14s:structures/dank/usable if block ~21 ~-10 ~-8 #20w14s:structures/dank/usable if block ~21 ~8 ~-8 #20w14s:structures/dank/usable

execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] store success score $continue temp if block ~ ~-10 ~5 #20w14s:structures/dank/usable if block ~ ~8 ~5 #20w14s:structures/dank/usable if block ~ ~-10 ~13 #20w14s:structures/dank/usable if block ~ ~8 ~13 #20w14s:structures/dank/usable if block ~8 ~-10 ~13 #20w14s:structures/dank/usable if block ~8 ~8 ~13 #20w14s:structures/dank/usable if block ~8 ~-10 ~21 #20w14s:structures/dank/usable if block ~8 ~8 ~21 #20w14s:structures/dank/usable

execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] store success score $continue temp if block ~-5 ~-10 ~ #20w14s:structures/dank/usable if block ~-5 ~8 ~ #20w14s:structures/dank/usable if block ~-13 ~-10 ~ #20w14s:structures/dank/usable if block ~-13 ~8 ~ #20w14s:structures/dank/usable if block ~-13 ~-10 ~8 #20w14s:structures/dank/usable if block ~-13 ~8 ~8 #20w14s:structures/dank/usable if block ~-21 ~-10 ~8 #20w14s:structures/dank/usable if block ~-21 ~8 ~8 #20w14s:structures/dank/usable

execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] store success score $continue temp if block ~ ~-10 ~-5 #20w14s:structures/dank/usable if block ~ ~8 ~-5 #20w14s:structures/dank/usable if block ~ ~-10 ~-13 #20w14s:structures/dank/usable if block ~ ~8 ~-13 #20w14s:structures/dank/usable if block ~-8 ~-10 ~-13 #20w14s:structures/dank/usable if block ~-8 ~8 ~-13 #20w14s:structures/dank/usable if block ~-8 ~-10 ~-21 #20w14s:structures/dank/usable if block ~-8 ~8 ~-21 #20w14s:structures/dank/usable

execute if score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/high_halls/upper_doorway
