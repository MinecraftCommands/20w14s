#> Removes blue and orange portals for the player that called this function

scoreboard players operation removal_id 20w14s.prtl_gun = @s 20w14s.id
execute as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=20w14s.blue_portal_main] at @s run function 20w14s:mechanics/portal_gun/remove_portal/decode_portal_direction/blue
execute as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=20w14s.orange_portal_main] at @s run function 20w14s:mechanics/portal_gun/remove_portal/decode_portal_direction/orange

playsound 20w14s:portal_gun.reset ambient @s ~ ~ ~ 1