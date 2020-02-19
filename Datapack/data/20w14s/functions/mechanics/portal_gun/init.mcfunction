#> Initializes portal spawn points and tries to create a portal if a portal direction can be calculated

tag @s remove 20w14s.new_portal

# Setup scores
scoreboard players operation player_id 20w14s.prtl_gun = @s 20w14s.prtl_spid
scoreboard players set portal_color 20w14s.prtl_gun 0
execute if entity @s[tag=20w14s.orange_portal_spawn_point] run scoreboard players set portal_color 20w14s.prtl_gun 1

# Calculate direction

# Kill spawn point since it's been processed
kill @s