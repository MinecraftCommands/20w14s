#> 20w14s:mechanics/offline_messages/check_list/check_list_break
# Author: PeerHeer
#
# Break from the iteration. Append the NewElement and append the rest of the InputList.
# Called from 20w14s:mechanics/offline_messages/check_list/check_list_iterate.

# Set found to 1.
scoreboard players set 20w14s.opm.found_element temp 1

# Remove the current element from the InputList.
data remove storage 20w14s:mechanics/offline_messages root.ListIteration.InputList[-1]

# Append .NewElement and the rest of the InputList.
data modify storage 20w14s:mechanics/offline_messages root.ListIteration.OutputList append from storage 20w14s:mechanics/offline_messages root.NewElement
data modify storage 20w14s:mechanics/offline_messages root.ListIteration.OutputList append from storage 20w14s:mechanics/offline_messages root.ListIteration.InputList[]
