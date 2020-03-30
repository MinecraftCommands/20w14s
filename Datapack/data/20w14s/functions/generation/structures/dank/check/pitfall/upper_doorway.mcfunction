#> 20w14s:generation/structures/dank/check/pitfall/upper_doorway

scoreboard players set $continue temp 0

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] store success score $continue temp if block ~5 ~-18 ~ #20w14s:structures/dank/usable if block ~5 ~8 ~ #20w14s:structures/dank/usable
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] store success score $continue temp if block ~ ~-18 ~5 #20w14s:structures/dank/usable if block ~ ~8 ~5 #20w14s:structures/dank/usable
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] store success score $continue temp if block ~-5 ~-18 ~ #20w14s:structures/dank/usable if block ~-5 ~8 ~ #20w14s:structures/dank/usable
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] store success score $continue temp if block ~ ~-18 ~-5 #20w14s:structures/dank/usable if block ~ ~8 ~-5 #20w14s:structures/dank/usable

execute if score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/pitfall/upper_doorway
