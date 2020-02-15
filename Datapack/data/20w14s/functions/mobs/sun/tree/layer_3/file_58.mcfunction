execute if score 20w14s.end_boss_tick global matches 924 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 4
execute if score 20w14s.end_boss_tick global matches 925 run tp 00000000-0000-0001-0000-0000000b2797 49.67 127.82 579.37 -168.61 49.98
execute if score 20w14s.end_boss_tick global matches 925 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 7
execute if score 20w14s.end_boss_tick global matches 928 run tp 00000000-0000-0001-0000-0000000b2797 50.39 127.88 580.48 -172.75 50.68
execute if score 20w14s.end_boss_tick global matches 930 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 931 run tp 00000000-0000-0001-0000-0000000b2797 51.14 128.24 581.62 -176.14 50.94
execute if score 20w14s.end_boss_tick global matches 932 run tp @a[tag=20w14s.fighting_sun] 59 138 561
execute if score 20w14s.end_boss_tick global matches 932 run effect give @a[tag=20w14s.fighting_sun] slow_falling 3 1 true
execute if score 20w14s.end_boss_tick global matches 932 run effect clear @a[tag=20w14s.fighting_sun] levitation
execute if score 20w14s.end_boss_tick global matches 932 run particle end_rod 60.00 138.74 561.45 0.2 0.2 0.2 0.2 50
execute if score 20w14s.end_boss_tick global matches 932 run say LOAD IN PLATFORM
