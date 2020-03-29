#> 20w14s:mechanics/offline_messages/player/join/select_player_start
# Author: PeerHeer
#
# Select a random number from the Players list.

# Generate a random number.
function 20w14s:general/random_number
scoreboard players operation 20w14s.opm.random_index temp = seed 20w14s.random
scoreboard players operation 20w14s.opm.random_index temp %= 20w14s.opm.player_count global

# Set found to 0.
scoreboard players set 20w14s.opm.found_element temp 0

# Copy the list.
data modify storage 20w14s:mechanics/offline_messages root.ListIteration.InputList set from storage 20w14s:mechanics/offline_messages root.Players

# Initialize the current index.
scoreboard players set 20w14s.opm.current_index temp 0

# Iterate over the list.
function 20w14s:mechanics/offline_messages/player/join/select_player_iterate

# If no element was found, decrease the amount of tries.
execute if score 20w14s.opm.found_element temp matches 0 run scoreboard players remove 20w14s.opm.tries temp 1

# Try again next tick if the amount of tries is larger than 0 and if no element was found.
execute if score 20w14s.opm.found_element temp matches 0 if score 20w14s.opm.tries temp matches 1.. run schedule function 20w14s:mechanics/offline_messages/player/join/select_player_start 1t