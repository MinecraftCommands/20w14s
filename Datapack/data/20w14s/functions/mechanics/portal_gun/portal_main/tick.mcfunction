#> Executes every tick on portal_main

# Portal colors
execute if entity @s[tag=20w14s.blue_portal_main] run function 20w14s:mechanics/portal_gun/portal_main/decode_portal_direction/blue
execute if entity @s[tag=20w14s.orange_portal_main] run function 20w14s:mechanics/portal_gun/portal_main/decode_portal_direction/orange
execute if entity @s[tag=20w14s.red_portal_main] run function 20w14s:mechanics/portal_gun/portal_main/decode_portal_direction/red
execute if entity @s[tag=20w14s.yellow_portal_main] run function 20w14s:mechanics/portal_gun/portal_main/decode_portal_direction/yellow
execute if entity @s[tag=20w14s.light_blue_portal_main] run function 20w14s:mechanics/portal_gun/portal_main/decode_portal_direction/light_blue
execute if entity @s[tag=20w14s.purple_portal_main] run function 20w14s:mechanics/portal_gun/portal_main/decode_portal_direction/purple

# Particle animation timer
scoreboard players add @s 20w14s.prtl_anim 1
execute if score @s 20w14s.prtl_anim matches 64 run scoreboard players set @s 20w14s.prtl_anim 0