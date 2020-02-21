#> Initializes portal_main

tag @s remove 20w14s.new_portal_main

# Initialize scores
scoreboard players operation @s 20w14s.prtl_id = player_id 20w14s.prtl_gun
scoreboard players operation @s 20w14s.prtl_dir = direction 20w14s.prtl_gun
scoreboard players set @s 20w14s.prtl_anim 0

# Get and increment portal count on player with this ID
scoreboard players set portal_count 20w14s.prtl_gun 0
execute as @a if score @s 20w14s.id = player_id 20w14s.prtl_gun run scoreboard players operation portal_count 20w14s.prtl_gun = @s 20w14s.prtl_opct

scoreboard players add portal_count 20w14s.prtl_gun 1
execute if score portal_count 20w14s.prtl_gun matches 2147483647 run scoreboard players set portal_count 20w14s.prtl_gun 0

execute as @a if score @s 20w14s.id = player_id 20w14s.prtl_gun run scoreboard players operation @s 20w14s.prtl_opct = portal_count 20w14s.prtl_gun
scoreboard players operation @s 20w14s.prtl_ct = portal_count 20w14s.prtl_gun

#> Create portal

# Horizontal
execute if score direction 20w14s.prtl_gun matches 0 rotated 0 0 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange
execute if score direction 20w14s.prtl_gun matches 1 rotated 90 0 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange
execute if score direction 20w14s.prtl_gun matches 2 rotated 180 0 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange
execute if score direction 20w14s.prtl_gun matches 3 rotated -90 0 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange

# Down
execute if score direction 20w14s.prtl_gun matches 4 rotated 0 -90 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange
execute if score direction 20w14s.prtl_gun matches 5 rotated 90 -90 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange
execute if score direction 20w14s.prtl_gun matches 6 rotated 180 -90 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange
execute if score direction 20w14s.prtl_gun matches 7 rotated -90 -90 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange

# Up
execute if score direction 20w14s.prtl_gun matches 8 rotated 0 90 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange
execute if score direction 20w14s.prtl_gun matches 9 rotated 90 90 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange
execute if score direction 20w14s.prtl_gun matches 10 rotated 180 90 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange
execute if score direction 20w14s.prtl_gun matches 11 rotated -90 90 run function 20w14s:mechanics/portal_gun/create_new_portal/spawn_structure/orange

# Play opening sounds
playsound 20w14s:portal_gun.portal_open.orange ambient @a ~ ~ ~ 1
playsound 20w14s:portal_gun.portal_open.red_rock ambient @a ~ ~ ~ 1