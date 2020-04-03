playsound 20w14s:laser.shoot hostile @a[distance=..30] ~ ~ ~ 10
execute store success score $not_immunte temp run tag @s add 20w14s.laser_immune
scoreboard players set $recursion_limit temp 300
function 20w14s:mechanics/lasers/recursive
execute if score $not_immunte temp matches 1 run tag @s remove 20w14s.laser_immune