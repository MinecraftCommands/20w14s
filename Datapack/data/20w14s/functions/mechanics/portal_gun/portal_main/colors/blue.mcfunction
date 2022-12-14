# Remove portal if the count on this portal_main is lower than the player it belongs to
scoreboard players set checked_portal_id temp 0
scoreboard players set checked_portal_count temp 0

scoreboard players operation checked_portal_id temp = @s 20w14s.prtl_id
execute as @a if score @s 20w14s.id = checked_portal_id temp run scoreboard players operation checked_portal_count temp = @s 20w14s.prtl_bpct
execute if score @s 20w14s.prtl_ct < checked_portal_count temp run function 20w14s:mechanics/portal_gun/remove_portal/auto_remove_blue

# Check if the blocks the portal are on are broken or if the portal becomes obstructed
scoreboard players set portal_on_blocks temp 0
execute if block ^ ^ ^ #20w14s:portal_surfaces run scoreboard players add portal_on_blocks temp 1
execute if block ^ ^-1 ^ #20w14s:portal_surfaces run scoreboard players add portal_on_blocks temp 1
execute if block ^ ^ ^-1 #20w14s:portal_raycast run scoreboard players add portal_on_blocks temp 1
execute if block ^ ^-1 ^-1 #20w14s:portal_raycast run scoreboard players add portal_on_blocks temp 1
execute unless score portal_on_blocks temp matches 4 run function 20w14s:mechanics/portal_gun/remove_portal/auto_remove_blue

# Particles
execute if score @s 20w14s.prtl_anim matches 0..7 run function 20w14s:mechanics/portal_gun/portal_main/anim/blue/0_7
execute if score @s 20w14s.prtl_anim matches 7..15 run function 20w14s:mechanics/portal_gun/portal_main/anim/blue/8_15
execute if score @s 20w14s.prtl_anim matches 16..23 run function 20w14s:mechanics/portal_gun/portal_main/anim/blue/16_23
execute if score @s 20w14s.prtl_anim matches 24..31 run function 20w14s:mechanics/portal_gun/portal_main/anim/blue/24_31

scoreboard players set portal_anim_mod temp 0
scoreboard players operation portal_anim_mod temp = @s 20w14s.prtl_anim
scoreboard players operation portal_anim_mod temp %= 2 const
execute if score portal_anim_mod temp matches 0 run function 20w14s:mechanics/portal_gun/portal_main/ring/blue