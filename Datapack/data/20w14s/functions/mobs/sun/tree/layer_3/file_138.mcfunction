execute if score 20w14s.end_boss_tick global matches 1992 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 1994 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 1994 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-64 ~ ~ rotated -87.74 -47.07 run tp 00000000-0000-0001-0000-0000000b2797 ^ ^ ^15
execute if score 20w14s.end_boss_tick global matches 1997 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 13
execute if score 20w14s.end_boss_tick global matches 1997 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-64 ~ ~ rotated -81.44 -37.38 run tp 00000000-0000-0001-0000-0000000b2797 ^ ^ ^15
execute if score 20w14s.end_boss_tick global matches 1998 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 6
execute if score 20w14s.end_boss_tick global matches 1998 run effect give @a[tag=20w14s.fighting_sun] speed 300 6 true
execute if score 20w14s.end_boss_tick global matches 1999 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
