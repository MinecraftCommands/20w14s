#> 20w14s:mechanics/offline_messages/check_list/check_list_start
# Author: PeerHeer
#
# Check if the ID of the player is already in the list of players.
# Called from 20w14s:mechanics/offline_messages/store_name.

# Set found to 0.
scoreboard players set 20w14s.opm.found_element temp 0

# Copy the list.
data modify storage 20w14s:mechanics/offline_messages root.ListIteration.InputList set from storage 20w14s:mechanics/offline_messages root.Players

# Set the output list to empty.
data modify storage 20w14s:mechanics/offline_messages root.ListIteration.OutputList set value []

# Store the length of the list for iteration.
execute store result score 20w14s.opm.list_length temp run data get storage 20w14s:mechanics/offline_messages root.ListIteration.InputList

# Iterate over the list.
function 20w14s:mechanics/offline_messages/check_list/check_list_iterate

# If the ID was not found, add the root.NewElement to the Players list.
execute if score 20w14s.opm.found_element temp matches 0 run data modify storage 20w14s:mechanics/offline_messages root.Players append from storage 20w14s:mechanics/offline_messages root.NewElement
execute if score 20w14s.opm.found_element temp matches 0 run scoreboard players add 20w14s.opm.player_count global 1
# If the ID was found, set the Players list equal to the output of the iteration.
execute if score 20w14s.opm.found_element temp matches 1 run data modify storage 20w14s:mechanics/offline_messages root.Players set from storage 20w14s:mechanics/offline_messages root.ListIteration.OutputList
