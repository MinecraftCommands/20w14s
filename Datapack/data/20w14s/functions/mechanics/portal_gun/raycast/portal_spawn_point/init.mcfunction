tag @s remove 20w14s.new_portal_spawn_point

# Tag color
execute if score raycast_color 20w14s.prtl_rc matches 0 run tag @s add 20w14s.blue_portal_spawn_point
execute if score raycast_color 20w14s.prtl_rc matches 1 run tag @s add 20w14s.orange_portal_spawn_point
execute if score raycast_color 20w14s.prtl_rc matches 2 run tag @s add 20w14s.red_portal_spawn_point
execute if score raycast_color 20w14s.prtl_rc matches 3 run tag @s add 20w14s.yellow_portal_spawn_point
execute if score raycast_color 20w14s.prtl_rc matches 4 run tag @s add 20w14s.light_blue_portal_spawn_point
execute if score raycast_color 20w14s.prtl_rc matches 5 run tag @s add 20w14s.purple_portal_spawn_point

# Store rotation
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get player_rot_y 20w14s.prtl_rc
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get player_rot_x 20w14s.prtl_rc

# Copy id
scoreboard players operation @s 20w14s.prtl_spid = raycast_id 20w14s.prtl_rc