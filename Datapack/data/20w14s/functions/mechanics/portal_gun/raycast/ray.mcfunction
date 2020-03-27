#> Recursive raycast loop

# Increment raycast length
scoreboard players add current_raycast_length 20w14s.prtl_rc 1

# Particles
execute if score raycast_color 20w14s.prtl_rc matches 0..1 run function 20w14s:mechanics/portal_gun/raycast/particles/blue_orange
execute if score raycast_color 20w14s.prtl_rc matches 2..3 run function 20w14s:mechanics/portal_gun/raycast/particles/red_yellow
execute if score raycast_color 20w14s.prtl_rc matches 4..5 run function 20w14s:mechanics/portal_gun/raycast/particles/light_blue_purple

# Check if the block the ray is currently in is a valid block to pass through
execute align xyz unless block ~0.5 ~0.5 ~0.5 #20w14s:portal_raycast run scoreboard players set ray_can_move 20w14s.prtl_rc 0

# Place portal spawn point if we reached the end of the raycast
execute if score ray_can_move 20w14s.prtl_rc matches 0 run function 20w14s:mechanics/portal_gun/raycast/portal_spawn_point/place

# Move ray
execute if score ray_can_move 20w14s.prtl_rc matches 1 if score current_raycast_length 20w14s.prtl_rc < 20w14s.portal_gun_raycast_length global positioned ^ ^ ^0.05 run function 20w14s:mechanics/portal_gun/raycast/ray