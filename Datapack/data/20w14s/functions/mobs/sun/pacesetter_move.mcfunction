# Move self
# 0..985 = stationary
execute if score 20w14s.end_boss_tick global matches 986..1038 run tp @s ~-0.2 ~ ~
execute if score 20w14s.end_boss_tick global matches 1039..1068 run tp @s ~-0.4 ~ ~
execute if score 20w14s.end_boss_tick global matches 1069..1412 run tp @s ~-0.6 ~ ~
execute if score 20w14s.end_boss_tick global matches 1413..1572 run tp @s ~-0.8 ~ ~
# 1573..1615 = stationary
execute if score 20w14s.end_boss_tick global matches 1616..1669 run tp @s ~-0.2 ~ ~
execute if score 20w14s.end_boss_tick global matches 1670..1997 run tp @s ~-0.4 ~ ~
execute if score 20w14s.end_boss_tick global matches 1998..2209 run tp @s ~-0.6 ~ ~
execute if score 20w14s.end_boss_tick global matches 2210..2257 run tp @s ~-0.8 ~ ~
execute if score 20w14s.end_boss_tick global matches 2258..2586 run tp @s ~-1.0 ~ ~
execute if score 20w14s.end_boss_tick global matches 2587..3489 run tp @s ~-1.2 ~ ~
execute if score 20w14s.end_boss_tick global matches 3490..3548 run tp @s ~-1.4 ~ ~
execute if score 20w14s.end_boss_tick global matches 3549..4377 run tp @s ~-1.6 ~ ~
execute if score 20w14s.end_boss_tick global matches 4378..4399 run tp @s ~-1.4 ~ ~
execute if score 20w14s.end_boss_tick global matches 4400..4418 run tp @s ~-1.2 ~ ~
execute if score 20w14s.end_boss_tick global matches 4419..4436 run tp @s ~-1.0 ~ ~
execute if score 20w14s.end_boss_tick global matches 4437..4457 run tp @s ~-0.8 ~ ~
execute if score 20w14s.end_boss_tick global matches 4458..4478 run tp @s ~-0.6 ~ ~
execute if score 20w14s.end_boss_tick global matches 4479..4495 run tp @s ~-0.4 ~ ~
execute if score 20w14s.end_boss_tick global matches 4496..4557 run tp @s ~-0.2 ~ ~
# 4558..5100 = stationary 

# Move players
execute positioned ~-32 ~-32 ~-32 as @a[dz=64,dy=48,dx=32,tag=20w14s.fighting_sun] at @s run tp @s ~-1 ~ ~
execute positioned ~-28 ~-32 ~-32 as @a[dz=64,dy=48,dx=28,tag=20w14s.fighting_sun] at @s run tp @s ~-1 ~ ~
execute positioned ~-24 ~-32 ~-32 as @a[dz=64,dy=48,dx=24,tag=20w14s.fighting_sun] at @s run tp @s ~-1 ~ ~