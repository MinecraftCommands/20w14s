#> Teleport player

# Stop motion
execute at @s run teleport @s

# Teleport
execute if score portal_out_color 20w14s.prtl_tp matches 0 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.blue_portal] run function 20w14s:mechanics/portal_gun/teleportation/teleport_player
execute if score portal_out_color 20w14s.prtl_tp matches 1 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.orange_portal] run function 20w14s:mechanics/portal_gun/teleportation/teleport_player
execute if score portal_out_color 20w14s.prtl_tp matches 2 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.red_portal] run function 20w14s:mechanics/portal_gun/teleportation/teleport_player
execute if score portal_out_color 20w14s.prtl_tp matches 3 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.yellow_portal] run function 20w14s:mechanics/portal_gun/teleportation/teleport_player
execute if score portal_out_color 20w14s.prtl_tp matches 4 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.light_blue_portal] run function 20w14s:mechanics/portal_gun/teleportation/teleport_player
execute if score portal_out_color 20w14s.prtl_tp matches 5 at @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.purple_portal] run function 20w14s:mechanics/portal_gun/teleportation/teleport_player

# Apply rotation
execute at @s run function 20w14s:mechanics/portal_gun/teleportation/apply_rotation

tag @s remove 20w14s.portal_teleportation_initialized