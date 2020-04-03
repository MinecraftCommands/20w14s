execute store result score $compare temp run time query gametime
scoreboard players remove $compare temp 48
execute as @a[tag=20w14s.laser_pointer.active] if score @s 20w14s.lsr.tmstp = $compare temp run function 20w14s:items/laser_pointer/end_activation