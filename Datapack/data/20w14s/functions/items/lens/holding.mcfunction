# Apply shader if I just started holding
execute unless score @s 20w14s.prev_held matches 4 run function 20w14s:items/lens/apply_shader_first
