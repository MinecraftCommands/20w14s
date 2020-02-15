execute if score 20w14s.end_boss_tick global matches 811 run tp 00000000-0000-0001-0000-0000000b2797 61.28 102.73 563.86 -230.28 -11.43
execute if score 20w14s.end_boss_tick global matches 812 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 814 run tp 00000000-0000-0001-0000-0000000b2797 61.49 102.95 563.67 -234.29 -12.61
execute if score 20w14s.end_boss_tick global matches 816 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 817 run tp 00000000-0000-0001-0000-0000000b2797 61.70 103.18 563.46 -239.07 -13.73
execute if score 20w14s.end_boss_tick global matches 820 run tp 00000000-0000-0001-0000-0000000b2797 61.83 103.40 563.23 -244.15 -14.68
execute if score 20w14s.end_boss_tick global matches 822 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 7
execute if score 20w14s.end_boss_tick global matches 823 run tp 00000000-0000-0001-0000-0000000b2797 61.90 103.64 562.97 -249.87 -15.44
execute if score 20w14s.end_boss_tick global matches 823 run effect give @a[tag=20w14s.fighting_sun] levitation 50 10 true
execute if score 20w14s.end_boss_tick global matches 823 run execute as @a[tag=20w14s.fighting_sun] at @s facing 57 ~ 563 run tp @s ^ ^ ^0.5
