execute if score 20w14s.end_boss_tick global matches 796 run tp 00000000-0000-0001-0000-0000000b2797 60.23 101.64 564.39 -210.43 -4.09
execute if score 20w14s.end_boss_tick global matches 797 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 799 run tp 00000000-0000-0001-0000-0000000b2797 60.42 101.83 564.35 -214.49 -5.85
execute if score 20w14s.end_boss_tick global matches 800 run execute as @a[tag=20w14s.fighting_sun] at @s run playsound 20w14s:puffersun_4 master @s ~ 50000 ~ 731031
execute if score 20w14s.end_boss_tick global matches 802 run tp 00000000-0000-0001-0000-0000000b2797 60.62 102.05 564.27 -218.44 -7.44
execute if score 20w14s.end_boss_tick global matches 804 run data merge entity 00000000-0000-0003-0000-0000000b2797 {Pose:{LeftArm:[-135.24f,302.06f,20.0f],RightArm:[-135.24f,57.94f,340.0f]}}
execute if score 20w14s.end_boss_tick global matches 804 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 7
execute if score 20w14s.end_boss_tick global matches 805 run tp 00000000-0000-0001-0000-0000000b2797 60.84 102.28 564.16 -222.48 -8.91
