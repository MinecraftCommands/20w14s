# Let items know they've stopped being held, so they can do cleanup
execute if score @s 20w14s.prev_held matches 1 run function 20w14s:items/backpack/stopped_holding
execute if score @s 20w14s.prev_held matches 2 run function 20w14s:items/diamond_axe/stopped_holding
execute if score @s 20w14s.prev_held matches 3 run function 20w14s:items/umbrella/stopped_holding
execute if score @s 20w14s.prev_held matches 4 run function 20w14s:items/lens/stopped_holding
