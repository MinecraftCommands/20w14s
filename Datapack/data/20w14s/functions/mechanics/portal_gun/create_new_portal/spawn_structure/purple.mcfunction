#> Creates a horizontal purple portal

# Spawn portal blockers
summon area_effect_cloud ^ ^ ^-0.5 {CustomName:"\"20w14s.portal_blocker\"",Tags:["20w14s.portal_blocker","20w14s.purple_portal","20w14s.new_portal_blocker"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
summon area_effect_cloud ^ ^-1 ^-0.5 {CustomName:"\"20w14s.portal_blocker\"",Tags:["20w14s.portal_blocker","20w14s.purple_portal","20w14s.new_portal_blocker"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}

execute positioned ^ ^ ^-0.5 as @e[type=area_effect_cloud,name=20w14s.portal_blocker,tag=20w14s.portal_blocker,tag=20w14s.purple_portal,tag=20w14s.new_portal_blocker,distance=..0.01,sort=nearest,limit=1] run function 20w14s:mechanics/portal_gun/create_new_portal/init_portal_blocker
execute positioned ^ ^-1 ^-0.5 as @e[type=area_effect_cloud,name=20w14s.portal_blocker,tag=20w14s.portal_blocker,tag=20w14s.purple_portal,tag=20w14s.new_portal_blocker,distance=..0.01,sort=nearest,limit=1] run function 20w14s:mechanics/portal_gun/create_new_portal/init_portal_blocker

# Spawn portal_in and portal_out
summon area_effect_cloud ^ ^-0.5 ^-0.1 {CustomName:"\"20w14s.portal_in\"",Tags:["20w14s.portal_in","20w14s.purple_portal","20w14s.new_portal_tp_marker"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
summon area_effect_cloud ^ ^-0.5 ^-1 {CustomName:"\"20w14s.portal_out\"",Tags:["20w14s.portal_out","20w14s.purple_portal","20w14s.new_portal_tp_marker"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}

execute positioned ^ ^-0.5 ^-0.1 as @e[type=area_effect_cloud,name=20w14s.portal_in,tag=20w14s.portal_in,tag=20w14s.purple_portal,tag=20w14s.new_portal_tp_marker,distance=..0.01,sort=nearest,limit=1] run function 20w14s:mechanics/portal_gun/create_new_portal/init_portal_tp_marker
execute positioned ^ ^-0.5 ^-1 as @e[type=area_effect_cloud,name=20w14s.portal_out,tag=20w14s.portal_out,tag=20w14s.purple_portal,tag=20w14s.new_portal_tp_marker,distance=..0.01,sort=nearest,limit=1] run function 20w14s:mechanics/portal_gun/create_new_portal/init_portal_tp_marker