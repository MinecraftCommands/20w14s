execute if score 20w14s.end_boss_tick global matches 2390 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 103.59 -15.22 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 2393 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 104.66 -13.38 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 2395 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 7
execute if score 20w14s.end_boss_tick global matches 2396 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 83.28 -13.99 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 2397 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 12
execute if score 20w14s.end_boss_tick global matches 2399 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 2399 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 58.67 -29.99 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 2400 run execute as @a[tag=20w14s.fighting_sun] at @s run playsound 20w14s:puffersun_12 master @s ~ 50000 ~ 731031
