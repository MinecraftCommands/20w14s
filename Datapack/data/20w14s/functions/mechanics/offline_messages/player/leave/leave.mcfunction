#> 20w14s:mechanics/offline_messages/player/leave/leave
# Author: PeerHeer
#
# Let the player leave the game.

# Set active and message_sent to 0.
scoreboard players set 20w14s.opm.is_active global 0
scoreboard players set 20w14s.opm.message_sent global 0

# Tellraw leave message.
tellraw @a [{"nbt": "root.ActivePlayer.Name", "storage": "20w14s:mechanics/offline_messages", "color": "yellow", "interpret": true}, {"text": " left the game", "color": "yellow"}]

# Remove the ActivePlayer tag.
data remove storage 20w14s:mechanics/offline_messages root.ActivePlayer