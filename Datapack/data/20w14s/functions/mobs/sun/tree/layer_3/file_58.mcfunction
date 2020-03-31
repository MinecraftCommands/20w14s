execute if score 20w14s.end_boss_tick global matches 911 run data merge entity 00000000-0000-0003-0000-0000000b2797 {Pose:{LeftArm:[-142.78f,312.7f,100.0f],RightArm:[-142.78f,47.3f,260.0f]}}
execute if score 20w14s.end_boss_tick global matches 911 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 913 run tp 00000000-0000-0001-0000-0000000b2797 47.45 124.69 400575.22 -149.99 40.70
execute if score 20w14s.end_boss_tick global matches 915 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 916 run tp 00000000-0000-0001-0000-0000000b2797 47.77 125.70 400576.32 -154.64 44.00
execute if score 20w14s.end_boss_tick global matches 916 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 7
execute if score 20w14s.end_boss_tick global matches 919 run tp 00000000-0000-0001-0000-0000000b2797 48.34 126.71 400577.30 -159.10 46.77
execute if score 20w14s.end_boss_tick global matches 920 run execute as @a[tag=20w14s.fighting_sun] at @s facing 57 ~ 400563 run tp @s ^ ^ ^0.5
