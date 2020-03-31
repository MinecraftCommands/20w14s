particle dust 1.0 0 0 0.3 ~ ~ ~ 0 0 0 1 10 force
scoreboard players remove $recursion_limit temp 1
execute positioned ~-0.9 ~-0.9 ~-0.9 as @a[dx=0] positioned ~-0.1 ~-0.1 ~-0.1 as @s[dx=0] run function 20w14s:mobs/skylinerw/shoot_lasers/get_hit
execute if score $recursion_limit temp matches 1.. positioned ^ ^ ^0.1 if block ~ ~ ~ air run function 20w14s:mobs/skylinerw/shoot_lasers/recursive