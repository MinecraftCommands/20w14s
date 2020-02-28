execute if score 20w14s.end_boss_tick global matches 820 run data merge entity 00000000-0000-0003-0000-0000000b2797 {Pose:{LeftArm:[-160.16f,301.91f,20.0f],RightArm:[-160.16f,58.09f,340.0f]}}
execute if score 20w14s.end_boss_tick global matches 820 run tp 00000000-0000-0001-0000-0000000b2797 61.83 103.40 563.23 -244.15 -14.68
execute if score 20w14s.end_boss_tick global matches 820 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 823 run tp 00000000-0000-0001-0000-0000000b2797 61.90 103.64 562.97 -249.87 -15.44
execute if score 20w14s.end_boss_tick global matches 823 run effect give @a[tag=20w14s.fighting_sun] levitation 50 10 true
execute if score 20w14s.end_boss_tick global matches 823 run execute as @a[tag=20w14s.fighting_sun] at @s facing 57 ~ 563 run tp @s ^ ^ ^0.5
execute if score 20w14s.end_boss_tick global matches 824 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 826 run tp 00000000-0000-0001-0000-0000000b2797 61.93 103.95 562.67 -257.20 -16.36
execute if score 20w14s.end_boss_tick global matches 826 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
