#> 20w14s:generation/structures/dank/check/pitfall/lower_doorway

scoreboard players set $continue temp 0

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] store success score $continue temp if block ~5 ~-2 ~ #20w14s:structures/dank/usable if block ~5 ~24 ~ #20w14s:structures/dank/usable
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] store success score $continue temp if block ~ ~-2 ~5 #20w14s:structures/dank/usable if block ~ ~24 ~5 #20w14s:structures/dank/usable
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] store success score $continue temp if block ~-5 ~-2 ~ #20w14s:structures/dank/usable if block ~-5 ~24 ~ #20w14s:structures/dank/usable
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] store success score $continue temp if block ~ ~-2 ~-5 #20w14s:structures/dank/usable if block ~ ~24 ~-5 #20w14s:structures/dank/usable

execute if score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/pitfall/lower_doorway
