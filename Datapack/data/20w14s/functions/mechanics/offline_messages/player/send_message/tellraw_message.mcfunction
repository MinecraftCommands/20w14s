#> 20w14s:mechanics/offline_messages/player/send_message/tellraw_message
# Author: PeerHeer
#
# Send a tellraw message to every player.

tellraw @a ["<", {"nbt": "root.ActivePlayer.Name", "storage": "20w14s:mechanics/offline_messages", "interpret": true}, "> ", {"nbt": "root.Message", "storage": "20w14s:mechanics/offline_messages", "interpret": true}]