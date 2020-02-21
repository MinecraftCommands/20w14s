#> 20w14s:generation/structures/dank/check/arcade/doorway

scoreboard players set $continue temp 0

execute if block ~ ~ ~ #20w14s:command_blocks[facing=east] run function 20w14s:generation/structures/dank/check/arcade/doorway/east
execute if block ~ ~ ~ #20w14s:command_blocks[facing=south] run function 20w14s:generation/structures/dank/check/arcade/doorway/south
execute if block ~ ~ ~ #20w14s:command_blocks[facing=west] run function 20w14s:generation/structures/dank/check/arcade/doorway/west
execute if block ~ ~ ~ #20w14s:command_blocks[facing=north] run function 20w14s:generation/structures/dank/check/arcade/doorway/north

execute if score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/arcade/doorway
