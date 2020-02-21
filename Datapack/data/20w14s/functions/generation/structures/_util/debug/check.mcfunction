#> 20w14s:generation/structures/_util/debug/check

scoreboard players set $continue temp 1
execute if data storage 20w14s:generation/structures {debug: true} run function 20w14s:generation/structures/_util/debug/actually_check
