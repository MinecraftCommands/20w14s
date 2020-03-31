execute as @a at @s run function 20w14s:player/tick

function 20w14s:generation/structures/_tick

# Portal gun
execute as @e[type=area_effect_cloud,name=20w14s.portal_spawn_point,tag=20w14s.portal_spawn_point,tag=20w14s.new_portal] at @s run function 20w14s:mechanics/portal_gun/init
execute as @e[type=area_effect_cloud,name=20w14s.portal_main,tag=20w14s.portal_main,tag=!20w14s.new_portal_main] at @s run function 20w14s:mechanics/portal_gun/portal_main/tick
execute as @e[type=area_effect_cloud,name=20w14s.portal_in,tag=20w14s.portal_in] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dy=0] run function 20w14s:mechanics/portal_gun/teleportation/tick

# Pufferfish arrows (player scores)
execute if score 20w14s:puff_arrow.shoot temp matches 1.. if score 20w14s:puff_arrow_loop_running global matches 0 run  function 20w14s:mechanics/puff_arrow/main_loop

# Slower ticks
scoreboard players add 20w14s:tick_5 timer 1
execute if score 20w14s:tick_5 timer matches 5 run function 20w14s:general/tick_5

scoreboard players add 20w14s:tick_10 timer 1
execute if score 20w14s:tick_10 timer matches 10 run function 20w14s:general/tick_10

scoreboard players add 20w14s:tick_100 timer 1
execute if score 20w14s:tick_100 timer matches 100 run function 20w14s:general/tick_100

# ARRTDOA
function 20w14s:mechanics/arrtdoa/loop
