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

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] if block ~5 ~-10 ~ #20w14s:structures/dank/usable if block ~5 ~8 ~ #20w14s:structures/dank/usable if block ~13 ~-10 ~ #20w14s:structures/dank/usable if block ~13 ~8 ~ #20w14s:structures/dank/usable if block ~13 ~-10 ~-8 #20w14s:structures/dank/usable if block ~13 ~8 ~-8 #20w14s:structures/dank/usable if block ~21 ~-10 ~-8 #20w14s:structures/dank/usable if block ~21 ~8 ~-8 #20w14s:structures/dank/usable run function 20w14s:generation/structures/dank/build/high_halls/upper_doorway

execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] if block ~ ~-10 ~5 #20w14s:structures/dank/usable if block ~ ~8 ~5 #20w14s:structures/dank/usable if block ~ ~-10 ~13 #20w14s:structures/dank/usable if block ~ ~8 ~13 #20w14s:structures/dank/usable if block ~8 ~-10 ~13 #20w14s:structures/dank/usable if block ~8 ~8 ~13 #20w14s:structures/dank/usable if block ~8 ~-10 ~21 #20w14s:structures/dank/usable if block ~8 ~8 ~21 #20w14s:structures/dank/usable run function 20w14s:generation/structures/dank/build/high_halls/upper_doorway

execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] if block ~-5 ~-10 ~ #20w14s:structures/dank/usable if block ~-5 ~8 ~ #20w14s:structures/dank/usable if block ~-13 ~-10 ~ #20w14s:structures/dank/usable if block ~-13 ~8 ~ #20w14s:structures/dank/usable if block ~-13 ~-10 ~8 #20w14s:structures/dank/usable if block ~-13 ~8 ~8 #20w14s:structures/dank/usable if block ~-21 ~-10 ~8 #20w14s:structures/dank/usable if block ~-21 ~8 ~8 #20w14s:structures/dank/usable run function 20w14s:generation/structures/dank/build/high_halls/upper_doorway

execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] if block ~ ~-10 ~-5 #20w14s:structures/dank/usable if block ~ ~8 ~-5 #20w14s:structures/dank/usable if block ~ ~-10 ~-13 #20w14s:structures/dank/usable if block ~ ~8 ~-13 #20w14s:structures/dank/usable if block ~-8 ~-10 ~-13 #20w14s:structures/dank/usable if block ~-8 ~8 ~-13 #20w14s:structures/dank/usable if block ~-8 ~-10 ~-21 #20w14s:structures/dank/usable if block ~-8 ~8 ~-21 #20w14s:structures/dank/usable run function 20w14s:generation/structures/dank/build/high_halls/upper_doorway
