# Teleport player using different offsets when teleporting to specific portal types
execute if score portal_out_direction 20w14s.prtl_tp matches 0..3 run teleport @s ~ ~-1 ~
execute if score portal_out_direction 20w14s.prtl_tp matches 4..7 run teleport @s ~ ~-1.5 ~
execute if score portal_out_direction 20w14s.prtl_tp matches 8..11 run teleport @s ~ ~ ~