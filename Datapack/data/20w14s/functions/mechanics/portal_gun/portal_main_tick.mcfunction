#> Executes every tick on portal_main

# Remove portal if the count on this portal_main is lower than the player it belongs to
scoreboard players set checked_portal_id 20w14s.prtl_gun 0
scoreboard players set checked_blue_portal_count 20w14s.prtl_gun 0
scoreboard players set checked_orange_portal_count 20w14s.prtl_gun 0

scoreboard players operation checked_portal_id 20w14s.prtl_gun = @s 20w14s.prtl_id
execute if entity @s[tag=20w14s.blue_portal_main] as @a if score @s 20w14s.id = checked_portal_id 20w14s.prtl_gun run scoreboard players operation checked_blue_portal_count 20w14s.prtl_gun = @s 20w14s.prtl_bpct
execute if entity @s[tag=20w14s.orange_portal_main] as @a if score @s 20w14s.id = checked_portal_id 20w14s.prtl_gun run scoreboard players operation checked_orange_portal_count 20w14s.prtl_gun = @s 20w14s.prtl_opct

execute if score @s[tag=20w14s.blue_portal_main] 20w14s.prtl_ct < checked_blue_portal_count 20w14s.prtl_gun run function 20w14s:mechanics/portal_gun/remove_portal/auto_remove_blue
execute if score @s[tag=20w14s.orange_portal_main] 20w14s.prtl_ct < checked_orange_portal_count 20w14s.prtl_gun run function 20w14s:mechanics/portal_gun/remove_portal/auto_remove_orange

# Particle animation
#execute if entity @s[tag=20w14s.blue_portal_main]
#execute if entity @s[tag=20w14s.orange_portal_main]

scoreboard players add @s 20w14s.prtl_anim 1

execute if score @s 20w14s.prtl_anim matches 100 run scoreboard players set @s 20w14s.prtl_anim 0