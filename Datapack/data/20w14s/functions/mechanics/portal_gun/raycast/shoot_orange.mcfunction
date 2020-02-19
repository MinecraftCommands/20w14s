#> Starts a raycast in the direction the player is facing

playsound 20w14s:portal_gun.shoot.orange player @a ~ ~ ~ 1

# Store player rotation and id to scoreboard so it can be copied to the portal spawn point
execute store result score player_rot_y 20w14s.prtl_gun run data get entity @s Rotation[0] 1000
execute store result score player_rot_x 20w14s.prtl_gun run data get entity @s Rotation[1] 1000
scoreboard players operation raycast_id 20w14s.prtl_gun = @s 20w14s.id

# Setup raycast
scoreboard players set raycast_color 20w14s.prtl_gun 1
scoreboard players set current_raycast_length 20w14s.prtl_gun 0
scoreboard players set ray_can_move 20w14s.prtl_gun 1

# Start raycast
execute anchored eyes run function 20w14s:mechanics/portal_gun/raycast/ray