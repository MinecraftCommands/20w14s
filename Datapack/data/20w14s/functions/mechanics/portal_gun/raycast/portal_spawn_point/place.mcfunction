#> Create and initialize portal spawn point

summon area_effect_cloud ^ ^ ^-0.05 {CustomName:"\"20w14s.portal_spawn_point\"",Tags:["20w14s.portal_spawn_point","20w14s.new_portal_spawn_point","20w14s.new_portal"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
execute positioned ^ ^ ^-0.05 as @e[type=area_effect_cloud,name=20w14s.portal_spawn_point,tag=20w14s.portal_spawn_point,tag=20w14s.new_portal_spawn_point,tag=20w14s.new_portal,distance=..0.01,sort=nearest,limit=1] run function 20w14s:mechanics/portal_gun/raycast/portal_spawn_point/init