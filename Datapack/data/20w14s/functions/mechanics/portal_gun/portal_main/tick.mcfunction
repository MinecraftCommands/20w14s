#> Executes every tick on portal_main

# Portal colors
execute if entity @s[tag=20w14s.blue_portal_main] run function 20w14s:mechanics/portal_gun/portal_main/decode_blue_portal_direction
execute if entity @s[tag=20w14s.orange_portal_main] run function 20w14s:mechanics/portal_gun/portal_main/decode_orange_portal_direction

# Particle animation timer
scoreboard players add @s 20w14s.prtl_anim 1
execute if score @s 20w14s.prtl_anim matches 64 run scoreboard players set @s 20w14s.prtl_anim 0