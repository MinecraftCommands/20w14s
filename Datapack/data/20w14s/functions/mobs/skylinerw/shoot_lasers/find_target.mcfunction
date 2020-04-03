scoreboard players operation $compare temp = @s 20w14s.skyw.tgt
execute as @a[distance=..40] if score @s 20w14s.id = $compare temp run tag @s add 20w14s.skylinerw.target
execute at @s rotated ~-90 0 positioned ^ ^1.4 ^1 facing entity @a[tag=20w14s.skylinerw.target,gamemode=!creative,gamemode=!spectator,limit=1] eyes run function 20w14s:mobs/skylinerw/shoot_lasers/main
tag @s remove 20w14s.skylinerw.shooting_lasers
tag @a[tag=20w14s.skylinerw.target,limit=1] remove 20w14s.skylinerw.target