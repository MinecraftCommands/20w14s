# Increment count of scheduled function instances
scoreboard players add $20w14s.skylinerw.lasercount global 1
# Reference targeted player using score
scoreboard players operation @s 20w14s.skyw.tgt = @a[tag=20w14s.skylinerw.target,limit=1] 20w14s.id
schedule function 20w14s:mobs/skylinerw/shoot_lasers/scheduled 48t append
tag @s add 20w14s.skylinerw.shooting_lasers
playsound 20w14s:laser.charge hostile @a[distance=..30] ~ ~ ~ 10
