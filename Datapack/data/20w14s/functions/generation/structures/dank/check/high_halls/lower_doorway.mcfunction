#> 20w14s:generation/structures/dank/check/high_halls/lower_doorway

# x+5, y-2
## x+5, y+7
# x+5, y+16

# x+13, y-2
## x+13, y+7
# x+13, y+16

# x+5, y-2, z-8
## x+5, y+7, z-8
# x+5, y+16, z-8

# x+13, y-2, z+8
## x+13, y+7, z+8
# x+13, y+16, z+8

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] if block ~5 ~-2 ~ #20w14s:structures/dank/usable if block ~5 ~16 ~ #20w14s:structures/dank/usable if block ~13 ~-2 ~ #20w14s:structures/dank/usable if block ~13 ~16 ~ #20w14s:structures/dank/usable if block ~5 ~-2 ~-8 #20w14s:structures/dank/usable if block ~5 ~16 ~-8 #20w14s:structures/dank/usable if block ~13 ~-2 ~8 #20w14s:structures/dank/usable if block ~13 ~16 ~8 #20w14s:structures/dank/usable run function 20w14s:generation/structures/dank/build/high_halls/lower_doorway

execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] if block ~ ~-2 ~5 #20w14s:structures/dank/usable if block ~ ~16 ~5 #20w14s:structures/dank/usable if block ~ ~-2 ~13 #20w14s:structures/dank/usable if block ~ ~16 ~13 #20w14s:structures/dank/usable if block ~8 ~-2 ~5 #20w14s:structures/dank/usable if block ~8 ~16 ~5 #20w14s:structures/dank/usable if block ~-8 ~-2 ~13 #20w14s:structures/dank/usable if block ~-8 ~16 ~13 #20w14s:structures/dank/usable run function 20w14s:generation/structures/dank/build/high_halls/lower_doorway

execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] if block ~-5 ~-2 ~ #20w14s:structures/dank/usable if block ~-5 ~16 ~ #20w14s:structures/dank/usable if block ~-13 ~-2 ~ #20w14s:structures/dank/usable if block ~-13 ~16 ~ #20w14s:structures/dank/usable if block ~-5 ~-2 ~8 #20w14s:structures/dank/usable if block ~-5 ~16 ~8 #20w14s:structures/dank/usable if block ~-13 ~-2 ~-8 #20w14s:structures/dank/usable if block ~-13 ~16 ~-8 #20w14s:structures/dank/usable run function 20w14s:generation/structures/dank/build/high_halls/lower_doorway

execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] if block ~ ~-2 ~-5 #20w14s:structures/dank/usable if block ~ ~16 ~-5 #20w14s:structures/dank/usable if block ~ ~-2 ~-13 #20w14s:structures/dank/usable if block ~ ~16 ~-13 #20w14s:structures/dank/usable if block ~-8 ~-2 ~-5 #20w14s:structures/dank/usable if block ~-8 ~16 ~-5 #20w14s:structures/dank/usable if block ~8 ~-2 ~-13 #20w14s:structures/dank/usable if block ~8 ~16 ~-13 #20w14s:structures/dank/usable run function 20w14s:generation/structures/dank/build/high_halls/lower_doorway
