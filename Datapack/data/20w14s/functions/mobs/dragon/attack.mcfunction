say clear line of sight

# Fire fireball in reverse direction to ray
execute in overworld positioned 0.0 0.0 0.0 positioned ^ ^ ^-4 run summon area_effect_cloud ~ ~ ~ {Tags:["20w14s.position_getter"]}
summon fireball ~ ~ ~ {Tags:["20w14s.new_fireball"],ExplosionPower:0,Passengers:[{id:"minecraft:magma_cube",Size:5}],Motion:[0.0,0.0,5.5]}
data modify entity @e[type=fireball,tag=20w14s.new_fireball,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=20w14s.position_getter,limit=1] Pos 
tag @e[type=fireball,tag=20w14s.new_fireball] remove 20w14s.new_fireball
kill @e[type=area_effect_cloud,tag=20w14s.position_getter]

# Stop the ray
scoreboard players set ray_hit temp 1