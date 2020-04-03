tag @s remove 20w14s.laser_pointer.active
scoreboard players reset @s 20w14s.lsr.tmstp
execute if predicate 20w14s:holding_laser_pointer at @s anchored eyes positioned ^-.3 ^-0.2 ^.3 run function 20w14s:mechanics/lasers/shoot