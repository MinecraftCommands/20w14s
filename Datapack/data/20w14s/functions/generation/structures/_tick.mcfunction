#> 20w14s:generation/structures/_tick

# if we're not debugging, replenish the throttle counter from storage
execute unless data storage 20w14s:generation/structures {debug: true} store result score $20w14s.structure_throttle global run data get storage 20w14s:generation/structures throttle

# otherwise, if we're debugging, let it run out

# ... unless we've cancelled generation, in which case reset it completely
execute if data storage 20w14s:generation/structures {cancel: 1} run function 20w14s:generation/structures/_common/cancel
