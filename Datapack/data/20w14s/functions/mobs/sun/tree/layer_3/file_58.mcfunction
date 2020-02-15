execute if score 20w14s.end_boss_tick global matches 932 run tp @a[tag=20w14s.fighting_sun] 59 138 561
execute if score 20w14s.end_boss_tick global matches 932 run effect give @a[tag=20w14s.fighting_sun] slow_falling 3 1 true
execute if score 20w14s.end_boss_tick global matches 932 run effect clear @a[tag=20w14s.fighting_sun] levitation
execute if score 20w14s.end_boss_tick global matches 932 run particle end_rod 60.00 138.74 561.45 0.2 0.2 0.2 0.2 50
execute if score 20w14s.end_boss_tick global matches 932 run say LOAD IN PLATFORM
execute if score 20w14s.end_boss_tick global matches 933 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 934 run tp 00000000-0000-0001-0000-0000000b2797 51.71 129.11 582.83 -179.15 51.13
execute if score 20w14s.end_boss_tick global matches 934 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 7
