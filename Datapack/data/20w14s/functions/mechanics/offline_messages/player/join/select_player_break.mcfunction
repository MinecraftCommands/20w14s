#> 20w14s:mechanics/offline_messages/player/join/select_player_break
# Author: PeerHeer
#
# Break from the iteration. Check if the player is online.

# Set is_online to 0.
scoreboard players set 20w14s.opm.is_online temp 0

# Store the ID of the current element.
execute store result score 20w14s.opm.current_id temp run data get storage 20w14s:mechanics/offline_messages root.ListIteration.InputList[-1].Id

# Check if the player is online.
execute as @a if score @s 20w14s.id = 20w14s.opm.current_id temp run scoreboard players set 20w14s.opm.is_online temp 1

# If the player is not online, let the player join.
execute if score 20w14s.opm.is_online temp matches 0 run function 20w14s:mechanics/offline_messages/player/join/join

