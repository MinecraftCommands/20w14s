#> Get portal direction

# Get Y rotation and store into a range of 0-3
scoreboard players set vector_rot_y 20w14s.prtl_gun 0

# 0 = South
# 1 = West
# 2 = North
# 3 = East
execute if entity @s[y_rotation=-45..45] run scoreboard players set vector_rot_y 20w14s.prtl_gun 0
execute if entity @s[y_rotation=45..135] run scoreboard players set vector_rot_y 20w14s.prtl_gun 1
execute if entity @s[y_rotation=135..-135] run scoreboard players set vector_rot_y 20w14s.prtl_gun 2
execute if entity @s[y_rotation=-135..-45] run scoreboard players set vector_rot_y 20w14s.prtl_gun 3

# Get block coords
execute positioned ^ ^ ^0.05 align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {CustomName:"\"20w14s.portal_direction_marker\"",Tags:["20w14s.portal_direction_marker","20w14s.new_portal_direction_marker"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
execute positioned ^ ^ ^0.05 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=area_effect_cloud,name=20w14s.portal_direction_marker,tag=20w14s.portal_direction_marker,tag=20w14s.new_portal_direction_marker,distance=..0.01,sort=nearest,limit=1] run function 20w14s:mechanics/portal_gun/get_direction/get_block_coords

execute align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {CustomName:"\"20w14s.portal_direction_marker_face\"",Tags:["20w14s.portal_direction_marker_face","20w14s.new_portal_direction_marker_face"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=area_effect_cloud,name=20w14s.portal_direction_marker_face,tag=20w14s.portal_direction_marker_face,tag=20w14s.new_portal_direction_marker_face,distance=..0.01,sort=nearest,limit=1] run function 20w14s:mechanics/portal_gun/get_direction/get_block_face_coords

# Calculate dxyz
scoreboard players set block_dx 20w14s.prtl_gun 0
scoreboard players set block_dy 20w14s.prtl_gun 0
scoreboard players set block_dz 20w14s.prtl_gun 0

scoreboard players operation block_dx 20w14s.prtl_gun = block_x 20w14s.prtl_gun
scoreboard players operation block_dy 20w14s.prtl_gun = block_y 20w14s.prtl_gun
scoreboard players operation block_dz 20w14s.prtl_gun = block_z 20w14s.prtl_gun

scoreboard players operation block_dx 20w14s.prtl_gun -= block_face_x 20w14s.prtl_gun
scoreboard players operation block_dy 20w14s.prtl_gun -= block_face_y 20w14s.prtl_gun
scoreboard players operation block_dz 20w14s.prtl_gun -= block_face_z 20w14s.prtl_gun

# Remove scale from DXYZ
scoreboard players operation block_dx 20w14s.prtl_gun /= 1000 const
scoreboard players operation block_dy 20w14s.prtl_gun /= 1000 const
scoreboard players operation block_dz 20w14s.prtl_gun /= 1000 const

# Calculate direction based on dxyz and vector rot
scoreboard players set direction 20w14s.prtl_gun -1

# Horizontal
execute if score direction 20w14s.prtl_gun matches -1 if score block_dy 20w14s.prtl_gun matches 0 run function 20w14s:mechanics/portal_gun/get_direction/portal_type/horizontal

# Vertical
execute if score direction 20w14s.prtl_gun matches -1 if score block_dy 20w14s.prtl_gun matches -1 run function 20w14s:mechanics/portal_gun/get_direction/portal_type/up
execute if score direction 20w14s.prtl_gun matches -1 if score block_dy 20w14s.prtl_gun matches 1 run function 20w14s:mechanics/portal_gun/get_direction/portal_type/down