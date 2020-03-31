# Let items know they've stopped being held, so they can do cleanup
execute if score @s 20w14s.prev_held matches 2 run function 20w14s:items/backpack/stopped_holding