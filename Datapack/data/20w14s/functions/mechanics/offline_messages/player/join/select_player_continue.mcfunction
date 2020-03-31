#> 20w14s:mechanics/offline_messages/player/join/select_player_continue
# Author: PeerHeer
#
# Continue iterating through the list by removing the last element of it.

# Remove the last element of the list.
data remove storage 20w14s:mechanics/offline_messages root.ListIteration.InputList[-1]

# Add 1 to the current index.
scoreboard players add 20w14s.opm.current_index temp 1

# Recursive call.
function 20w14s:mechanics/offline_messages/player/join/select_player_iterate