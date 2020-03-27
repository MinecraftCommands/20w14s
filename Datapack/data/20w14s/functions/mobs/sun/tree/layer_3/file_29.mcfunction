execute if score 20w14s.end_boss_tick global matches 593 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 7
execute if score 20w14s.end_boss_tick global matches 595 run tp 00000000-0000-0001-0000-0000000b2797 52.51 94.08 560.29 -56.43 51.84
execute if score 20w14s.end_boss_tick global matches 595 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 3
execute if score 20w14s.end_boss_tick global matches 595 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 598 run tp 00000000-0000-0001-0000-0000000b2797 52.52 94.16 560.40 -57.81 52.10
execute if score 20w14s.end_boss_tick global matches 598 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 7
execute if score 20w14s.end_boss_tick global matches 600 run execute as @a[tag=20w14s.fighting_sun] at @s run playsound 20w14s:puffersun_3 master @s ~ 50000 ~ 731031
execute if score 20w14s.end_boss_tick global matches 601 run tp 00000000-0000-0001-0000-0000000b2797 52.52 94.31 560.62 -61.34 52.53
