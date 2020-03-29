#> 20w14s:mechanics/offline_messages/player/join/join
# Author: PeerHeer
#
# Let the player join the game.

# Set found to 1.
scoreboard players set 20w14s.opm.found_element temp 1

# Set active to 1.
scoreboard players set 20w14s.opm.is_active global 1

# Transfer the element to the ActivePlayer tag.
data modify storage 20w14s:mechanics/offline_messages root.ActivePlayer set from storage 20w14s:mechanics/offline_messages root.ListIteration.InputList[-1]

# Tellraw join message.
tellraw @a [{"nbt": "root.ActivePlayer.Name", "storage": "20w14s:mechanics/offline_messages", "color": "yellow", "interpret": true}, {"text": " joined the game", "color": "yellow"}]
