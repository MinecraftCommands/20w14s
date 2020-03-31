#> 20w14s:mechanics/offline_messages/player/join/select_player_iterate
# Author: PeerHeer
#
# Iterate over the Players list.

# If the current ID equals the ID of the executing player, append the new element to the ouput list and terminate the iteration.
execute if score 20w14s.opm.random_index temp = 20w14s.opm.current_index temp run function 20w14s:mechanics/offline_messages/player/join/select_player_break
# Else, append to the output list and continue.
execute unless score 20w14s.opm.random_index temp = 20w14s.opm.current_index temp run function 20w14s:mechanics/offline_messages/player/join/select_player_continue
