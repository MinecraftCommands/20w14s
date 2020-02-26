# Remove tag
tag @s remove 20w14s.new_portal_direction_marker

# Get coords from entity
execute store result score block_x 20w14s.prtl_gun run data get entity @s Pos[0] 1000
execute store result score block_y 20w14s.prtl_gun run data get entity @s Pos[1] 1000
execute store result score block_z 20w14s.prtl_gun run data get entity @s Pos[2] 1000

# Kill entity
kill @s