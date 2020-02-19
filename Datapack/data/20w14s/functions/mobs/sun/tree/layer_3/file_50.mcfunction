execute if score 20w14s.end_boss_tick global matches 829 run tp 00000000-0000-0001-0000-0000000b2797 61.97 104.29 562.32 -265.83 -17.61
execute if score 20w14s.end_boss_tick global matches 830 run execute as @a[tag=20w14s.fighting_sun] at @s facing 57 ~ 563 run tp @s ^ ^ ^0.5
execute if score 20w14s.end_boss_tick global matches 830 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 4
execute if score 20w14s.end_boss_tick global matches 832 run tp 00000000-0000-0001-0000-0000000b2797 62.01 104.62 561.94 -274.32 -18.60
execute if score 20w14s.end_boss_tick global matches 832 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 7
execute if score 20w14s.end_boss_tick global matches 834 run data merge entity 00000000-0000-0003-0000-0000000b2797 {Pose:{LeftArm:[-180.0f,303.61f,20.0f],RightArm:[-180.0f,56.39f,340.0f]}}
execute if score 20w14s.end_boss_tick global matches 834 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 835 run tp 00000000-0000-0001-0000-0000000b2797 62.02 104.97 561.52 -282.49 -19.51
