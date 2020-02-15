execute if score 20w14s.end_boss_tick global matches 3594 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 11
execute if score 20w14s.end_boss_tick global matches 3596 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 3596 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-64 ~ ~ rotated -81.13 -45.22 run tp 00000000-0000-0001-0000-0000000b2797 ^ ^ ^15
execute if score 20w14s.end_boss_tick global matches 3598 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 3599 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-64 ~ ~ rotated -116.35 -44.30 run tp 00000000-0000-0001-0000-0000000b2797 ^ ^ ^15
execute if score 20w14s.end_boss_tick global matches 3600 run execute as @a[tag=20w14s.fighting_sun] at @s run playsound 20w14s:puffersun_18 master @s ~ 50000 ~ 731031
execute if score 20w14s.end_boss_tick global matches 3601 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 3602 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-64 ~ ~ rotated -122.05 -29.53 run tp 00000000-0000-0001-0000-0000000b2797 ^ ^ ^15
