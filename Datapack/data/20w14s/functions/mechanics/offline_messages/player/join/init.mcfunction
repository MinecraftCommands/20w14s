#> 20w14s:mechanics/offline_messages/player/join/init
# Author: PeerHeer
#
# Select a random number from the Players list.

# Start with 5 tries.
scoreboard players operation 20w14s.opm.tries temp = 20w14s.opm.tries const

# Start generating a random number.
function 20w14s:mechanics/offline_messages/player/join/select_player_start