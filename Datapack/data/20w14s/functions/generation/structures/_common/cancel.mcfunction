#> 20w14s:generation/structures/_common/cancel

# we need to give the command blocks enough time to see the flag
data modify storage 20w14s:generation/structures cancel set value 2
schedule function 20w14s:generation/structures/_common/cancelled 2t

scoreboard players set $20w14s.structure_throttle global 0
