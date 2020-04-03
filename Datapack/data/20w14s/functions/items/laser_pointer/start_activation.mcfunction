playsound 20w14s:laser.charge player @a[distance=..30] ~ ~ ~ 1
tag @s add 20w14s.laser_pointer.active
execute store result score @s 20w14s.lsr.tmstp run time query gametime
schedule function 20w14s:items/laser_pointer/scheduled 48t append