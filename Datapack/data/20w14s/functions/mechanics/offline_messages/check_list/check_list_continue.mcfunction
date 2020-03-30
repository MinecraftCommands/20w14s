#> 20w14s:mechanics/offline_messages/check_list/check_list_continue
# Author: PeerHeer
#
# Continue iterating through the list by removing the last element of it.
# Called from 20w14s:mechanics/offline_messages/check_list/check_list_iterate.

# Move the current element to the output list.
data modify storage 20w14s:mechanics/offline_messages root.ListIteration.OutputList append from storage 20w14s:mechanics/offline_messages root.ListIteration.InputList[-1]

# Remove one from the list length and the list.
scoreboard players remove 20w14s.opm.list_length temp 1
data remove storage 20w14s:mechanics/offline_messages root.ListIteration.InputList[-1]

# Recursive call.
execute if score 20w14s.opm.list_length temp matches 1.. run function 20w14s:mechanics/offline_messages/check_list/check_list_iterate