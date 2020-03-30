#> 20w14s:mechanics/offline_messages/reset
# Author: PeerHeer
#
# Reset the module.

# Remove any scheduled functions.
schedule clear 20w14s:mechanics/offline_messages/scheduled/join
schedule clear 20w14s:mechanics/offline_messages/scheduled/message
schedule clear 20w14s:mechanics/offline_messages/scheduled/leave

# Let the current player leave if there is one.
execute if score 20w14s.opm.is_active global matches 1 run function 20w14s:mechanics/offline_messages/player/leave/leave

# Remove all data.
data remove storage 20w14s:mechanics/offline_messages root

# Reload.
function 20w14s:mechanics/offline_messages/load