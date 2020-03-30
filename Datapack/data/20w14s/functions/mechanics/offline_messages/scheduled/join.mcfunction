#> 20w14s:mechanics/offline_messages/scheduled/join
# Author: PeerHeer
#
# Lets player join.

# Get the amount of online players.
execute store result score 20w14s.opm.online_player_count temp if entity @a

# If there is no active player, at least one player is online, not all players are online and the predicate returns true, let an offline player join the chat.
execute if score 20w14s.opm.is_active global matches 0 if score 20w14s.opm.online_player_count temp matches 1.. unless score 20w14s.opm.player_count global = 20w14s.opm.online_player_count temp if predicate 20w14s:offline_messages/prob_join run function 20w14s:mechanics/offline_messages/player/join/init

# Reschedule the function if a player did not join.
execute if score 20w14s.opm.is_active global matches 0 run schedule function 20w14s:mechanics/offline_messages/scheduled/join 10s
# If a player joined, schedule the message function.
execute if score 20w14s.opm.is_active global matches 1 run schedule function 20w14s:mechanics/offline_messages/scheduled/message 4s