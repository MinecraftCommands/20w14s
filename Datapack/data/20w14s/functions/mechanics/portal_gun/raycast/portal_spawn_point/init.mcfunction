tag @s remove 20w14s.new_portal_spawn_point

# Store rotation
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get player_rot_y 20w14s.prtl_rc
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get player_rot_x 20w14s.prtl_rc

# Copy id
scoreboard players operation @s 20w14s.prtl_spid = raycast_id 20w14s.prtl_rc