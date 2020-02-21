# Remove existing blue portals
scoreboard players operation removal_id 20w14s.prtl_gun = player_id 20w14s.prtl_gun
execute as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=!20w14s.new_portal_main,tag=20w14s.blue_portal_main] at @s if score @s 20w14s.prtl_id = removal_id 20w14s.prtl_gun run function 20w14s:mechanics/portal_gun/remove_portal/structure/decode_blue_portal_direction

# Spawn portal main and create a new portal at it
summon area_effect_cloud ~ ~ ~ {CustomName:"\"20w14s.portal_main\"",Tags:["20w14s.portal_main","20w14s.new_portal_main","20w14s.blue_portal_main"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=20w14s.new_portal_main,tag=20w14s.blue_portal_main,distance=..0.01,sort=nearest,limit=1] at @s run function 20w14s:mechanics/portal_gun/create_new_portal/init_blue_portal_main