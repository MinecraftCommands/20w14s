#> 20w14s:mechanics/offline_messages/scheduled/message
# Author: PeerHeer
#
# Lets player say a message.

# If there is an active player and the predicate returns true, let the player send a message.
execute if score 20w14s.opm.is_active global matches 1 if predicate 20w14s:offline_messages/prob_message run function 20w14s:mechanics/offline_messages/player/send_message/get_random_message

# If no message was sent, reschedule the function.
execute if score 20w14s.opm.message_sent global matches 0 run schedule function 20w14s:mechanics/offline_messages/scheduled/message 2s
# Else, schedule the leave function.
execute if score 20w14s.opm.message_sent global matches 1 run schedule function 20w14s:mechanics/offline_messages/scheduled/leave 2s