#> 20w14s:generation/structures/_util/debug/blank/proc

setblock ~ ~ ~ minecraft:purple_glazed_terracotta
scoreboard players set $continue temp -2
schedule function 20w14s:generation/structures/_util/debug/blank/reset 1t
