#> 20w14s:mechanics/offline_messages/check_list/check_list_iterate
# Author: PeerHeer
#
# Iterate over the Players list.

# Store the ID of the current element.
execute store result score 20w14s.opm.current_id temp run data get storage 20w14s:mechanics/offline_messages root.ListIteration.InputList[-1].Id

# If the current ID equals the ID of the executing player, append the new element to the ouput list and terminate the iteration.
execute if score 20w14s.opm.temp_id temp = 20w14s.opm.current_id temp run function 20w14s:mechanics/offline_messages/check_list/check_list_break
# Else, append to the output list and continue.
execute unless score 20w14s.opm.temp_id temp = 20w14s.opm.current_id temp run function 20w14s:mechanics/offline_messages/check_list/check_list_continue
