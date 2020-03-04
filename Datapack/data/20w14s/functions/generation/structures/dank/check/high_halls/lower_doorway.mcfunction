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

scoreboard players set $continue temp 0

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] store success score $continue temp if block ~5 ~-2 ~ #20w14s:structures/dank/usable if block ~5 ~16 ~ #20w14s:structures/dank/usable if block ~13 ~-2 ~ #20w14s:structures/dank/usable if block ~13 ~16 ~ #20w14s:structures/dank/usable if block ~5 ~-2 ~-8 #20w14s:structures/dank/usable if block ~5 ~16 ~-8 #20w14s:structures/dank/usable if block ~13 ~-2 ~8 #20w14s:structures/dank/usable if block ~13 ~16 ~8 #20w14s:structures/dank/usable

execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] store success score $continue temp if block ~ ~-2 ~5 #20w14s:structures/dank/usable if block ~ ~16 ~5 #20w14s:structures/dank/usable if block ~ ~-2 ~13 #20w14s:structures/dank/usable if block ~ ~16 ~13 #20w14s:structures/dank/usable if block ~8 ~-2 ~5 #20w14s:structures/dank/usable if block ~8 ~16 ~5 #20w14s:structures/dank/usable if block ~-8 ~-2 ~13 #20w14s:structures/dank/usable if block ~-8 ~16 ~13 #20w14s:structures/dank/usable

execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] store success score $continue temp if block ~-5 ~-2 ~ #20w14s:structures/dank/usable if block ~-5 ~16 ~ #20w14s:structures/dank/usable if block ~-13 ~-2 ~ #20w14s:structures/dank/usable if block ~-13 ~16 ~ #20w14s:structures/dank/usable if block ~-5 ~-2 ~8 #20w14s:structures/dank/usable if block ~-5 ~16 ~8 #20w14s:structures/dank/usable if block ~-13 ~-2 ~-8 #20w14s:structures/dank/usable if block ~-13 ~16 ~-8 #20w14s:structures/dank/usable

execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] store success score $continue temp if block ~ ~-2 ~-5 #20w14s:structures/dank/usable if block ~ ~16 ~-5 #20w14s:structures/dank/usable if block ~ ~-2 ~-13 #20w14s:structures/dank/usable if block ~ ~16 ~-13 #20w14s:structures/dank/usable if block ~-8 ~-2 ~-5 #20w14s:structures/dank/usable if block ~-8 ~16 ~-5 #20w14s:structures/dank/usable if block ~8 ~-2 ~-13 #20w14s:structures/dank/usable if block ~8 ~16 ~-13 #20w14s:structures/dank/usable

execute if score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/high_halls/lower_doorway
