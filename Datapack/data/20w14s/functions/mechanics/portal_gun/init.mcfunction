#> Initializes portal spawn points and tries to create a portal if a portal direction can be calculated

tag @s remove 20w14s.new_portal

# Initialize scores
scoreboard players operation player_id 20w14s.prtl_gun = @s 20w14s.prtl_spid
scoreboard players set portal_color 20w14s.prtl_gun 0
execute if entity @s[tag=20w14s.orange_portal_spawn_point] run scoreboard players set portal_color 20w14s.prtl_gun 1

# Calculate direction
function 20w14s:mechanics/portal_gun/get_direction/calculate

# Validate blocks and create a new portal if valid
execute if score direction 20w14s.prtl_gun matches 0.. positioned ^ ^ ^0.05 align xyz positioned ~0.5 ~0.5 ~0.5 run function 20w14s:mechanics/portal_gun/validate_blocks/validate

# If direction is invalid (-1), play some particles and sounds
execute if score direction 20w14s.prtl_gun matches -1 run function 20w14s:mechanics/portal_gun/invalid/direction

# Kill spawn point since it's been processed
kill @s