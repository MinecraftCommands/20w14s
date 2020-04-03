# Change effect amplifier
execute store result entity @s Effects[0].Amplifier byte 0.0005 run scoreboard players get $speed temp
# Select targeted player
tag @p[gamemode=!creative,gamemode=!spectator,distance=..20] add 20w14s.skylinerw.target
# Face targeted player (in official skylinerw rotation calculation used by minecarts)
execute facing entity @a[tag=20w14s.skylinerw.target,limit=1] eyes rotated ~ 0 positioned as @s run tp @s ~ ~ ~ ~90 ~
data modify storage 20w14s:temp rotation set from entity @s Rotation
# Un-mark as new
tag @s remove 20w14s.temp