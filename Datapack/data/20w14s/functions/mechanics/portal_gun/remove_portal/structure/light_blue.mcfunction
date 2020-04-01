# Remove portal blockers
execute positioned ^ ^ ^-0.5 as @e[type=area_effect_cloud,name=20w14s.portal_blocker,tag=20w14s.portal_blocker,tag=20w14s.light_blue_portal,distance=..0.01,sort=nearest,limit=1] if score @s 20w14s.prtl_id = removal_id 20w14s.prtl_gun run kill @s
execute positioned ^ ^-1 ^-0.5 as @e[type=area_effect_cloud,name=20w14s.portal_blocker,tag=20w14s.portal_blocker,tag=20w14s.light_blue_portal,distance=..0.01,sort=nearest,limit=1] if score @s 20w14s.prtl_id = removal_id 20w14s.prtl_gun run kill @s

# Remove portal_in and portal_out
execute positioned ^ ^-0.5 ^-0.1 as @e[type=area_effect_cloud,name=20w14s.portal_in,tag=20w14s.portal_in,tag=20w14s.light_blue_portal,distance=..0.01,sort=nearest,limit=1] if score @s 20w14s.prtl_id = removal_id 20w14s.prtl_gun run kill @s
execute positioned ^ ^-0.5 ^-1 as @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.light_blue_portal,distance=..0.01,sort=nearest,limit=1] if score @s 20w14s.prtl_id = removal_id 20w14s.prtl_gun run kill @s

# Remove portal_main
kill @s