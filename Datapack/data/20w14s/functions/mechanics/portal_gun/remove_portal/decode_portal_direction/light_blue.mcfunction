# Horizontal
execute if score @s 20w14s.prtl_dir matches 0 rotated 0 0 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue
execute if score @s 20w14s.prtl_dir matches 1 rotated 90 0 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue
execute if score @s 20w14s.prtl_dir matches 2 rotated 180 0 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue
execute if score @s 20w14s.prtl_dir matches 3 rotated -90 0 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue

# Down
execute if score @s 20w14s.prtl_dir matches 4 rotated 0 -90 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue
execute if score @s 20w14s.prtl_dir matches 5 rotated 90 -90 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue
execute if score @s 20w14s.prtl_dir matches 6 rotated 180 -90 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue
execute if score @s 20w14s.prtl_dir matches 7 rotated -90 -90 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue

# Up
execute if score @s 20w14s.prtl_dir matches 8 rotated 0 90 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue
execute if score @s 20w14s.prtl_dir matches 9 rotated 90 90 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue
execute if score @s 20w14s.prtl_dir matches 10 rotated 180 90 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue
execute if score @s 20w14s.prtl_dir matches 11 rotated -90 90 run function 20w14s:mechanics/portal_gun/remove_portal/structure/light_blue

# Play closing sound
playsound 20w14s:portal_gun.portal_close ambient @a ~ ~ ~ 1

# Remove portal_main
kill @s