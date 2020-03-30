#> 20w14s:mechanics/offline_messages/scheduled
# Author: PeerHeer
#
# Lets player leave.

# If there is an active player and the predicate returns true, let the player leave the game.
execute if score 20w14s.opm.is_active global matches 1 if predicate 20w14s:offline_messages/prob_leave run function 20w14s:mechanics/offline_messages/player/leave/leave

# If the player did not leave, reschedule the function.
execute if score 20w14s.opm.is_active global matches 1 run schedule function 20w14s:mechanics/offline_messages/scheduled/leave 2s
# Else, schedule the join function.
execute if score 20w14s.opm.is_active global matches 0 run schedule function 20w14s:mechanics/offline_messages/scheduled/join 10s