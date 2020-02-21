# Apply rotation
execute if score portal_out_direction 20w14s.prtl_tp matches 0..3 if score player_out_y_rotation 20w14s.prtl_tp matches 90 run teleport @s ~ ~ ~ ~90 ~
execute if score portal_out_direction 20w14s.prtl_tp matches 0..3 if score player_out_y_rotation 20w14s.prtl_tp matches 180 run teleport @s ~ ~ ~ ~180 ~
execute if score portal_out_direction 20w14s.prtl_tp matches 0..3 if score player_out_y_rotation 20w14s.prtl_tp matches 270 run teleport @s ~ ~ ~ ~270 ~

execute if score portal_in_direction 20w14s.prtl_tp matches 4..7 if score portal_out_direction 20w14s.prtl_tp matches 0 run teleport @s ~ ~ ~ 180 ~
execute if score portal_in_direction 20w14s.prtl_tp matches 4..7 if score portal_out_direction 20w14s.prtl_tp matches 1 run teleport @s ~ ~ ~ 270 ~
execute if score portal_in_direction 20w14s.prtl_tp matches 4..7 if score portal_out_direction 20w14s.prtl_tp matches 2 run teleport @s ~ ~ ~ 0 ~
execute if score portal_in_direction 20w14s.prtl_tp matches 4..7 if score portal_out_direction 20w14s.prtl_tp matches 3 run teleport @s ~ ~ ~ 90 ~

execute if score portal_in_direction 20w14s.prtl_tp matches 8..11 if score portal_out_direction 20w14s.prtl_tp matches 0 run teleport @s ~ ~ ~ 180 ~
execute if score portal_in_direction 20w14s.prtl_tp matches 8..11 if score portal_out_direction 20w14s.prtl_tp matches 1 run teleport @s ~ ~ ~ 270 ~
execute if score portal_in_direction 20w14s.prtl_tp matches 8..11 if score portal_out_direction 20w14s.prtl_tp matches 2 run teleport @s ~ ~ ~ 0 ~
execute if score portal_in_direction 20w14s.prtl_tp matches 8..11 if score portal_out_direction 20w14s.prtl_tp matches 3 run teleport @s ~ ~ ~ 90 ~