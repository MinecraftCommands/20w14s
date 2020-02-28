#> Checks blocks to see if they would make a valid portal

scoreboard players set valid_portal 20w14s.prtl_gun 0

# Horizontal
execute if score direction 20w14s.prtl_gun matches 0 rotated 0 0 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types
execute if score direction 20w14s.prtl_gun matches 1 rotated 90 0 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types
execute if score direction 20w14s.prtl_gun matches 2 rotated 180 0 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types
execute if score direction 20w14s.prtl_gun matches 3 rotated -90 0 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types

# Down
execute if score direction 20w14s.prtl_gun matches 4 rotated 0 -90 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types
execute if score direction 20w14s.prtl_gun matches 5 rotated 90 -90 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types
execute if score direction 20w14s.prtl_gun matches 6 rotated 180 -90 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types
execute if score direction 20w14s.prtl_gun matches 7 rotated -90 -90 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types

# Up
execute if score direction 20w14s.prtl_gun matches 8 rotated 0 90 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types
execute if score direction 20w14s.prtl_gun matches 9 rotated 90 90 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types
execute if score direction 20w14s.prtl_gun matches 10 rotated 180 90 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types
execute if score direction 20w14s.prtl_gun matches 11 rotated -90 90 run function 20w14s:mechanics/portal_gun/validate_blocks/all_portal_types

# Create new portal if blocks are valid
execute if score valid_portal 20w14s.prtl_gun matches 1 if score portal_color 20w14s.prtl_gun matches 0 run function 20w14s:mechanics/portal_gun/create_new_portal/place_portal_main/blue
execute if score valid_portal 20w14s.prtl_gun matches 1 if score portal_color 20w14s.prtl_gun matches 1 run function 20w14s:mechanics/portal_gun/create_new_portal/place_portal_main/orange
execute if score valid_portal 20w14s.prtl_gun matches 1 if score portal_color 20w14s.prtl_gun matches 2 run function 20w14s:mechanics/portal_gun/create_new_portal/place_portal_main/red
execute if score valid_portal 20w14s.prtl_gun matches 1 if score portal_color 20w14s.prtl_gun matches 3 run function 20w14s:mechanics/portal_gun/create_new_portal/place_portal_main/yellow
execute if score valid_portal 20w14s.prtl_gun matches 1 if score portal_color 20w14s.prtl_gun matches 4 run function 20w14s:mechanics/portal_gun/create_new_portal/place_portal_main/light_blue
execute if score valid_portal 20w14s.prtl_gun matches 1 if score portal_color 20w14s.prtl_gun matches 5 run function 20w14s:mechanics/portal_gun/create_new_portal/place_portal_main/purple

# Play particle and sounds if invalid
execute if score valid_portal 20w14s.prtl_gun matches 0 run function 20w14s:mechanics/portal_gun/invalid/blocks