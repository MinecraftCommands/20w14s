#> 20w14s:mechanics/offline_messages/load
# Author: PeerHeer
#
# Setup for offline messages. Called on datapack load.

# Set constants.
scoreboard players set 20w14s.opm.tries const 5

# Set root.Players to empty list if it does not exist.
execute unless data storage 20w14s:mechanics/offline_messages root.Players run data modify storage 20w14s:mechanics/offline_messages root.Players set value []

# Initialize scores.
execute unless score 20w14s.opm.is_active global = 20w14s.opm.is_active global run scoreboard players set 20w14s.opm.is_active global 0
execute unless score 20w14s.opm.message_sent global = 20w14s.opm.message_sent global run scoreboard players set 20w14s.opm.message_sent global 0
execute store result score 20w14s.opm.player_count global run data get storage 20w14s:mechanics/offline_messages root.Players

# Set a sign in the forceloaded chunk.
execute in minecraft:overworld run setblock 731031 0 731030 minecraft:oak_sign
execute in minecraft:the_nether run setblock 731031 0 731030 minecraft:oak_sign
execute in minecraft:the_end run setblock 731031 0 731030 minecraft:oak_sign

# Set the message length.
function 20w14s:mechanics/offline_messages/message_amount

# Schedule loop.
schedule function 20w14s:mechanics/offline_messages/scheduled/join 2s