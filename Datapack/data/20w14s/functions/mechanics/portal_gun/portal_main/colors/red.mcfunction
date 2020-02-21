# Remove portal if the count on this portal_main is lower than the player it belongs to
scoreboard players set checked_portal_id 20w14s.prtl_main 0
scoreboard players set checked_portal_count 20w14s.prtl_main 0

scoreboard players operation checked_portal_id 20w14s.prtl_main = @s 20w14s.prtl_id
execute as @a if score @s 20w14s.id = checked_portal_id 20w14s.prtl_main run scoreboard players operation checked_portal_count 20w14s.prtl_main = @s 20w14s.prtl_rpct
execute if score @s 20w14s.prtl_ct < checked_portal_count 20w14s.prtl_main run function 20w14s:mechanics/portal_gun/remove_portal/auto_remove_red

# Check if the blocks the portal are on are broken
scoreboard players set on_blocks 20w14s.prtl_main 0
execute unless block ^ ^ ^ #20w14s:no_hitbox run scoreboard players add on_blocks 20w14s.prtl_main 1
execute unless block ^ ^-1 ^ #20w14s:no_hitbox run scoreboard players add on_blocks 20w14s.prtl_main 2
execute unless score on_blocks 20w14s.prtl_main matches 3 run function 20w14s:mechanics/portal_gun/remove_portal/auto_remove_red

# Particles
execute if score @s 20w14s.prtl_anim matches 0..7 run function 20w14s:mechanics/portal_gun/portal_main/anim/red/0_7
execute if score @s 20w14s.prtl_anim matches 7..15 run function 20w14s:mechanics/portal_gun/portal_main/anim/red/8_15
execute if score @s 20w14s.prtl_anim matches 16..23 run function 20w14s:mechanics/portal_gun/portal_main/anim/red/16_23
execute if score @s 20w14s.prtl_anim matches 24..31 run function 20w14s:mechanics/portal_gun/portal_main/anim/red/24_31

scoreboard players set mod 20w14s.prtl_main 0
scoreboard players operation mod 20w14s.prtl_main = @s 20w14s.prtl_anim
scoreboard players operation mod 20w14s.prtl_main %= 2 const
execute if score mod 20w14s.prtl_main matches 0 run function 20w14s:mechanics/portal_gun/portal_main/ring/red