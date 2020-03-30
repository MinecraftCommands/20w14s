execute if score 20w14s.end_boss_tick global matches 881 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 883 run tp 00000000-0000-0001-0000-0000000b2797 53.41 115.55 400565.03 -80.95 -16.68
execute if score 20w14s.end_boss_tick global matches 886 run tp 00000000-0000-0001-0000-0000000b2797 52.44 116.45 400565.72 -90.64 -9.28
execute if score 20w14s.end_boss_tick global matches 886 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 888 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 889 run tp 00000000-0000-0001-0000-0000000b2797 51.50 117.35 400566.49 -98.73 -3.05
execute if score 20w14s.end_boss_tick global matches 890 run execute as @a[tag=20w14s.fighting_sun] at @s facing 57 ~ 400563 run tp @s ^ ^ ^0.5
execute if score 20w14s.end_boss_tick global matches 890 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
