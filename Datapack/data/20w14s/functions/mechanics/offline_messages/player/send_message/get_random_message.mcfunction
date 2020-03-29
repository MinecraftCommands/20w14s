#> 20w14s:mechanics/offline_messages/player/send_message/get_random_message
# Author: PeerHeer
#
# Get a random message and display it in chat.

# Generate a random number.
function 20w14s:general/random_number
scoreboard players operation 20w14s.opm.random temp = seed 20w14s.random
scoreboard players operation 20w14s.opm.random temp %= 20w14s.opm.message_amount const

# Start traversing the tree.
function 20w14s:mechanics/offline_messages/player/send_message/messages/start

# Send a message.
function 20w14s:mechanics/offline_messages/player/send_message/tellraw_message

# Indicate that a message was sent.
scoreboard players set 20w14s.opm.message_sent global 1