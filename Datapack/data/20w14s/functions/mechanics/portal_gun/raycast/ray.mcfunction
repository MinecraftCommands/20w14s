#> Recursive raycast loop

# Increment raycast length
scoreboard players add current_raycast_length 20w14s.prtl_gun 1

# Particles
execute if score raycast_color 20w14s.prtl_gun matches 0 run particle minecraft:dust 0.003 0.447 0.823 0.25 ~ ~ ~ 0.0001 0.0001 0.0001 0.001 1 force
execute if score raycast_color 20w14s.prtl_gun matches 1 run particle minecraft:dust 1 0.623 0 0.25 ~ ~ ~ 0.0001 0.0001 0.0001 0.001 1 force

# Check if the block the ray is currently in is a valid block to pass through
# TODO: Replace with a block tag
execute align xyz unless block ~0.5 ~0.5 ~0.5 minecraft:air run scoreboard players set ray_can_move 20w14s.prtl_gun 0

# Place portal spawn point if we reached the end of the raycast
execute if score ray_can_move 20w14s.prtl_gun matches 0 run function 20w14s:mechanics/portal_gun/raycast/portal_spawn_point/place

# Move ray
execute if score ray_can_move 20w14s.prtl_gun matches 1 if score current_raycast_length 20w14s.prtl_gun < 20w14s.portal_gun_raycast_length global positioned ^ ^ ^0.05 run function 20w14s:mechanics/portal_gun/raycast/ray