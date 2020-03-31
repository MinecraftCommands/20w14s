execute store result entity @s Effects[0].Amplifier byte 0.0005 run scoreboard players get $speed temp
execute facing entity @p[distance=..20] eyes positioned as @s run tp @s ~ ~ ~ ~90 ~
data modify storage 20w14s:temp rotation set from entity @s Rotation
tag @s remove 20w14s.temp