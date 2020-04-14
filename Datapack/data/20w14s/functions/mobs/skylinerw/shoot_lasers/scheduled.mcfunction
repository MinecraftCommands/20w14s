# Decrease count of scheduled functions
scoreboard players remove $20w14s.skylinerw.lasercount global 1
# Shoot lasers from sheep
execute as @e[type=minecart,tag=20w14s.skylinerw.shooting_lasers,limit=1] at @s run function 20w14s:mobs/skylinerw/shoot_lasers/find_target
