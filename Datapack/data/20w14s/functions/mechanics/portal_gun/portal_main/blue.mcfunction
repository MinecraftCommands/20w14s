# Remove portal if the count on this portal_main is lower than the player it belongs to
scoreboard players set checked_portal_id 20w14s.prtl_main 0
scoreboard players set checked_portal_count 20w14s.prtl_main 0

scoreboard players operation checked_portal_id 20w14s.prtl_main = @s 20w14s.prtl_id
execute as @a if score @s 20w14s.id = checked_portal_id 20w14s.prtl_main run scoreboard players operation checked_portal_count 20w14s.prtl_main = @s 20w14s.prtl_bpct
execute if score @s 20w14s.prtl_ct < checked_portal_count 20w14s.prtl_main run function 20w14s:mechanics/portal_gun/remove_portal/auto_remove_blue

# Check if the blocks the portal are on are broken
scoreboard players set on_blocks 20w14s.prtl_main 0
execute unless block ^ ^ ^ #20w14s:no_hitbox run scoreboard players add on_blocks 20w14s.prtl_main 1
execute unless block ^ ^-1 ^ #20w14s:no_hitbox run scoreboard players add on_blocks 20w14s.prtl_main 2
execute unless score on_blocks 20w14s.prtl_main matches 3 run function 20w14s:mechanics/portal_gun/remove_portal/auto_remove_blue

# Particles
execute if score @s 20w14s.prtl_anim matches 0 positioned ^ ^0.5 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 1 positioned ^0.085 ^0.481 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 2 positioned ^0.167 ^0.424 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 3 positioned ^0.242 ^0.331 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 4 positioned ^0.308 ^0.207 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 5 positioned ^0.362 ^0.056 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 6 positioned ^0.403 ^-0.117 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 7 positioned ^0.428 ^-0.305 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 8 positioned ^0.468 ^-0.5 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 9 positioned ^0.428 ^-0.695 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 10 positioned ^0.403 ^-0.833 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 11 positioned ^0.362 ^-1.056 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 12 positioned ^0.308 ^-1.207 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 13 positioned ^0.242 ^-1.331 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 14 positioned ^0.167 ^-1.424 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 15 positioned ^0.085 ^-1.481 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 16 positioned ^ ^-1.5 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 17 positioned ^-0.085 ^-1.481 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 18 positioned ^-0.167 ^-1.424 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 19 positioned ^-0.242 ^-1.331 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 20 positioned ^-0.308 ^-1.207 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 21 positioned ^-0.358 ^-1.07 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 22 positioned ^-0.403 ^-0.833 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 23 positioned ^-0.428 ^-0.695 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 24 positioned ^-0.468 ^-0.5 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 25 positioned ^-0.428 ^-0.305 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 26 positioned ^-0.403 ^-0.117 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 27 positioned ^-0.362 ^0.056 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 28 positioned ^-0.308 ^0.207 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 29 positioned ^-0.242 ^0.331 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 30 positioned ^-0.167 ^0.424 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue
execute if score @s 20w14s.prtl_anim matches 31 positioned ^-0.085 ^0.481 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue

execute positioned ^ ^0.5 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.085 ^0.481 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.167 ^0.424 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.242 ^0.331 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.308 ^0.207 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.362 ^0.056 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.403 ^-0.117 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.428 ^-0.305 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.468 ^-0.5 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.428 ^-0.695 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.403 ^-0.833 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.362 ^-1.056 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.308 ^-1.207 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.242 ^-1.331 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.167 ^-1.424 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^0.085 ^-1.481 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^ ^-1.5 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.085 ^-1.481 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.167 ^-1.424 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.242 ^-1.331 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.308 ^-1.207 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.358 ^-1.07 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.403 ^-0.833 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.428 ^-0.695 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.468 ^-0.5 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.428 ^-0.305 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.403 ^-0.117 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.362 ^0.056 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.308 ^0.207 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.242 ^0.331 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.167 ^0.424 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small
execute positioned ^-0.085 ^0.481 ^ run function 20w14s:mechanics/portal_gun/portal_main/particles/blue_small