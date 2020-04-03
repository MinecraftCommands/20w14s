particle dust 1.0 0 0 0.3 ~ ~ ~ 0 0 0 1 10 force
scoreboard players remove $recursion_limit temp 1
execute positioned ~-0.99 ~-0.99 ~-0.99 as @e[dx=0,tag=!20w14s.laser_immune] positioned ~0.98 ~0.98 ~0.98 as @s[dx=0] run function 20w14s:mechanics/lasers/get_hit
execute if score $recursion_limit temp matches 1.. positioned ^ ^ ^0.1 if block ~ ~ ~ #20w14s:no_hitbox run function 20w14s:mechanics/lasers/recursive