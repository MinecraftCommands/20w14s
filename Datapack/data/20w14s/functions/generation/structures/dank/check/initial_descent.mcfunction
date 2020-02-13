#> 20w14s:generation/structures/dank/check/initial_descent

scoreboard players set $continue temp 0

execute store success score $continue temp if block ~ ~-1 ~ #20w14s:structures/dank/usable if block ~ ~-32 ~ #20w14s:structures/dank/usable

execute if score $continue temp matches 1.. run function 20w14s:generation/structures/dank/build/initial_descent
