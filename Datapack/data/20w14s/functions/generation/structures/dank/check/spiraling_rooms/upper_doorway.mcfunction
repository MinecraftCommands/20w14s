#> 20w14s:generation/structures/dank/check/spiraling_rooms/upper_doorway

scoreboard players set $continue temp 0

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] store success score $continue temp if block ~5 ~8 ~ #20w14s:structures/dank/usable if block ~5 ~-10 ~ #20w14s:structures/dank/usable if block ~13 ~4 ~-8 #20w14s:structures/dank/usable if block ~13 ~-6 ~-8 #20w14s:structures/dank/usable
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] store success score $continue temp if block ~ ~8 ~5 #20w14s:structures/dank/usable if block ~ ~-10 ~5 #20w14s:structures/dank/usable if block ~8 ~4 ~13 #20w14s:structures/dank/usable if block ~8 ~-6 ~13 #20w14s:structures/dank/usable
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] store success score $continue temp if block ~-5 ~8 ~ #20w14s:structures/dank/usable if block ~-5 ~-10 ~ #20w14s:structures/dank/usable if block ~-13 ~4 ~8 #20w14s:structures/dank/usable if block ~-13 ~-6 ~8 #20w14s:structures/dank/usable
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] store success score $continue temp if block ~ ~8 ~-5 #20w14s:structures/dank/usable if block ~ ~-10 ~-5 #20w14s:structures/dank/usable if block ~-8 ~4 ~-13 #20w14s:structures/dank/usable if block ~-8 ~-6 ~-13 #20w14s:structures/dank/usable

execute if score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/spiraling_rooms/upper_doorway
