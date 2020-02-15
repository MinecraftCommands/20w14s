execute if score 20w14s.end_boss_tick global matches 2200 run execute as @a[tag=20w14s.fighting_sun] at @s run playsound 20w14s:puffersun_11 master @s ~ 50000 ~ 731031
execute if score 20w14s.end_boss_tick global matches 2201 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 2201 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-64 ~ ~ rotated -86.05 -26.30 run tp 00000000-0000-0001-0000-0000000b2797 ^ ^ ^15
execute if score 20w14s.end_boss_tick global matches 2204 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 4
execute if score 20w14s.end_boss_tick global matches 2204 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-64 ~ ~ rotated -88.20 -17.38 run tp 00000000-0000-0001-0000-0000000b2797 ^ ^ ^15
execute if score 20w14s.end_boss_tick global matches 2207 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 9
execute if score 20w14s.end_boss_tick global matches 2207 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-64 ~ ~ rotated -95.74 -19.38 run tp 00000000-0000-0001-0000-0000000b2797 ^ ^ ^15
execute if score 20w14s.end_boss_tick global matches 2210 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 2210 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-64 ~ ~ rotated -100.67 -31.68 run tp 00000000-0000-0001-0000-0000000b2797 ^ ^ ^15
execute if score 20w14s.end_boss_tick global matches 2210 run effect give @a[tag=20w14s.fighting_sun] speed 300 8 true
