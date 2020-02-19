execute if score 20w14s.end_boss_tick global matches 961 run tp 00000000-0000-0001-0000-0000000b2797 54.44 135.98 590.23 -186.58 48.96
execute if score 20w14s.end_boss_tick global matches 961 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 4
execute if score 20w14s.end_boss_tick global matches 963 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
execute if score 20w14s.end_boss_tick global matches 964 run tp 00000000-0000-0001-0000-0000000b2797 54.44 135.98 590.33 -186.16 48.69
execute if score 20w14s.end_boss_tick global matches 965 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 8.85 -10.30 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 966 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 4
execute if score 20w14s.end_boss_tick global matches 968 run data merge entity 00000000-0000-0003-0000-0000000b2797 {Pose:{LeftArm:[-96.93f,290.86f,0.0f],RightArm:[-96.93f,69.14f,360.0f]}}
execute if score 20w14s.end_boss_tick global matches 968 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 8.70 -5.22 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
