execute if score 20w14s.end_boss_tick global matches 1011 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 1013 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 4
execute if score 20w14s.end_boss_tick global matches 1013 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 76.85 -26.92 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 1015 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 1016 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 84.85 -27.22 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 1017 run data merge entity 00000000-0000-0003-0000-0000000b2797 {Pose:{LeftArm:[-153.55f,6.85f,100.0f],RightArm:[-153.55f,353.15f,260.0f]}}
execute if score 20w14s.end_boss_tick global matches 1019 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 97.77 -23.07 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 1020 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 4