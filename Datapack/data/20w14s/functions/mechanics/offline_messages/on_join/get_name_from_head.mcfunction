#> 20w14s:mechanics/offline_messages/on_join/get_name_from_head
# Author: PeerHeer
#
# Gets the name of the executing entity if it is a player.
# Stores the name inside storage.

# Spawn the player head.
loot spawn ~ ~ ~ loot 20w14s:_util/player_head

# Let a sign resolve the name.
data modify block ~ ~ ~ Text1 set value '{"nbt": "Item.tag.SkullOwner.Name", "entity": "@e[type=item, distance=..1, limit=1]"}'

# Kill the item.
kill @e[type=item, distance=..1, limit=1]

# Store the name.
data modify storage 20w14s:mechanics/offline_messages root.NewElement.Name set from block ~ ~ ~ Text1

# Store the unique score belonging to this player.
execute store result storage 20w14s:mechanics/offline_messages root.NewElement.Id int 1.0 run scoreboard players get @s 20w14s.id

# Check if the ID is already in the list. If it is, update the name.
function 20w14s:mechanics/offline_messages/check_list/check_list_start
