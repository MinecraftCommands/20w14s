execute if score direction 20w14s.prtl_gun matches 0 rotated 0 0 positioned ^ ^ ^-0.6 run function 20w14s:mechanics/portal_gun/invalid/particles
execute if score direction 20w14s.prtl_gun matches 1 rotated 90 0 positioned ^ ^ ^-0.6 run function 20w14s:mechanics/portal_gun/invalid/particles
execute if score direction 20w14s.prtl_gun matches 2 rotated 180 0 positioned ^ ^ ^-0.6 run function 20w14s:mechanics/portal_gun/invalid/particles
execute if score direction 20w14s.prtl_gun matches 3 rotated -90 0 positioned ^ ^ ^-0.6 run function 20w14s:mechanics/portal_gun/invalid/particles
execute if score direction 20w14s.prtl_gun matches 4..7 rotated 0 -90 positioned ^ ^ ^-0.6 run function 20w14s:mechanics/portal_gun/invalid/particles
execute if score direction 20w14s.prtl_gun matches 8..11 rotated 0 90 positioned ^ ^ ^-0.6 run function 20w14s:mechanics/portal_gun/invalid/particles

playsound 20w14s:portal_gun.invalid.placement ambient @a ~ ~ ~ 1
playsound 20w14s:portal_gun.invalid.surface ambient @a ~ ~ ~ 1