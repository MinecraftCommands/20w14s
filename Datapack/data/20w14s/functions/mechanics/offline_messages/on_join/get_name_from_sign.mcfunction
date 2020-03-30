#> 20w14s:mechanics/offline_messages/on_join/get_name_from_sign
# Author: PeerHeer
#
# Gets the name of the executing entity if it is a player.
# Stores the name inside storage.

# Add a temporary tag to the player.
tag @s add 20w14s.opm.target

# Store the players selector on a sign to let it resolve.
data modify block ~ ~ ~ Text1 set value '{"selector": "@p[tag=20w14s.opm.target]"}'

# Remove the temporary tag.
tag @s remove 20w14s.opm.target

# Store the name.
data modify storage 20w14s:mechanics/offline_messages root.NewElement.Name set from block ~ ~ ~ Text1

# Store the unique score belonging to this player.
execute store result storage 20w14s:mechanics/offline_messages root.NewElement.Id int 1.0 run scoreboard players get @s 20w14s.id

# Check if the ID is already in the list. If it is, update the name.
function 20w14s:mechanics/offline_messages/check_list/check_list_start