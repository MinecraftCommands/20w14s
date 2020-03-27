#> Teleport player

# Stop motion
execute at @s run teleport @s

# Teleport
execute if score portal_out_color 20w14s.prtl_tp matches 0 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.blue_portal,tag=20w14s.portal_teleport_out] run function 20w14s:mechanics/portal_gun/teleportation/move_player
execute if score portal_out_color 20w14s.prtl_tp matches 1 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.orange_portal,tag=20w14s.portal_teleport_out] run function 20w14s:mechanics/portal_gun/teleportation/move_player
execute if score portal_out_color 20w14s.prtl_tp matches 2 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.red_portal,tag=20w14s.portal_teleport_out] run function 20w14s:mechanics/portal_gun/teleportation/move_player
execute if score portal_out_color 20w14s.prtl_tp matches 3 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.yellow_portal,tag=20w14s.portal_teleport_out] run function 20w14s:mechanics/portal_gun/teleportation/move_player
execute if score portal_out_color 20w14s.prtl_tp matches 4 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.light_blue_portal,tag=20w14s.portal_teleport_out] run function 20w14s:mechanics/portal_gun/teleportation/move_player
execute if score portal_out_color 20w14s.prtl_tp matches 5 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.purple_portal,tag=20w14s.portal_teleport_out] run function 20w14s:mechanics/portal_gun/teleportation/move_player
tag @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out] remove 20w14s.portal_teleport_out

# Apply rotation
execute at @s if score portal_in_direction 20w14s.prtl_tp matches 0..3 if score portal_out_direction 20w14s.prtl_tp matches 0..3 run function 20w14s:mechanics/portal_gun/teleportation/rotation/between_horizontal
execute at @s if score portal_in_direction 20w14s.prtl_tp matches 4..11 if score portal_out_direction 20w14s.prtl_tp matches 0..3 run function 20w14s:mechanics/portal_gun/teleportation/rotation/from_vertical_to_horizontal

# Play sounds
execute at @s run playsound 20w14s:portal_gun.teleport.enter ambient @s ~ ~ ~ 1
execute at @s run playsound 20w14s:portal_gun.teleport.exit ambient @s ~ ~ ~ 1