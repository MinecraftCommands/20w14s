#> 20w14s:generation/structures/_util/debug/actually_check

# TODO Use scores instead of items. #optimize
execute store success score $continue temp run clear @p minecraft:diamond 1
execute if score $continue temp matches ..0 run scoreboard players set $continue temp -1
execute if data storage 20w14s:generation/structures/_util/debug temp{blank: true} run function 20w14s:generation/structures/_util/debug/blank/proc
