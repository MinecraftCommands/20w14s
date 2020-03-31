scoreboard players set $recursion_limit temp 300
execute rotated ~ 0 positioned ^.1 ^1.4 ^1 run function 20w14s:mobs/skylinerw/shoot_lasers/recursive
scoreboard players set $recursion_limit temp 300
execute rotated ~ 0 positioned ^-.1 ^1.4 ^1 run function 20w14s:mobs/skylinerw/shoot_lasers/recursive