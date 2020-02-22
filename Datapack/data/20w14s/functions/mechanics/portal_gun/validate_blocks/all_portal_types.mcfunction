#> Checks blocks for horizontal portals
#
# ^ ^ ^ #20w14s:portal_surfaces
# ^ ^-1 ^ #20w14s:portal_surfaces
#
# ^ ^ ^-1 #20w14s:no_hitbox
# ^ ^-1 ^-1 #20w14s:no_hitbox
#
# positioned ^ ^ ^-0.5 unless entity @e[type=area_effect_cloud,name=20w14s.portal_blocker,tag=20w14s.portal_blocker,distance=..0.01,sort=nearest,limit=1]
# positioned ^ ^-1 ^ unless entity @e[type=area_effect_cloud,name=20w14s.portal_blocker,tag=20w14s.portal_blocker,distance=..0.01,sort=nearest,limit=1]

execute if block ^ ^ ^ #20w14s:portal_surfaces if block ^ ^-1 ^ #20w14s:portal_surfaces if block ^ ^ ^-1 #20w14s:no_hitbox if block ^ ^-1 ^-1 #20w14s:no_hitbox positioned ^ ^ ^-0.5 unless entity @e[type=area_effect_cloud,name=20w14s.portal_blocker,tag=20w14s.portal_blocker,distance=..0.01,sort=nearest,limit=1] positioned ^ ^-1 ^ unless entity @e[type=area_effect_cloud,name=20w14s.portal_blocker,tag=20w14s.portal_blocker,distance=..0.01,sort=nearest,limit=1] run scoreboard players set valid_portal 20w14s.prtl_gun 1