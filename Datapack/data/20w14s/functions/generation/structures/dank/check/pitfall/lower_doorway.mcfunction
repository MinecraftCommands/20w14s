#> 20w14s:generation/structures/dank/check/pitfall/lower_doorway

scoreboard players set $continue temp 0

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] run function 20w14s:generation/structures/dank/check/pitfall/lower_doorway/east
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] run function 20w14s:generation/structures/dank/check/pitfall/lower_doorway/south
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] run function 20w14s:generation/structures/dank/check/pitfall/lower_doorway/west
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] run function 20w14s:generation/structures/dank/check/pitfall/lower_doorway/north

execute if score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/pitfall/lower_doorway
