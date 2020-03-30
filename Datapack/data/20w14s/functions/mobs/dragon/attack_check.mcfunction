# Recursively move forward, from player towards dragon
scoreboard players remove recursion_limit temp 1
execute if entity @s[distance=..12] run function 20w14s:mobs/dragon/attack
execute if score ray_hit temp matches 0 if score recursion_limit temp matches 1.. if block ~ ~ ~ #20w14s:no_hitbox positioned ^ ^ ^1 run function 20w14s:mobs/dragon/attack_check

execute if score ray_hit temp matches 1 run particle flame ~ ~ ~