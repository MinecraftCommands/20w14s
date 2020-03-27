execute if score 20w14s.end_boss_tick global matches 2251 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 12
execute if score 20w14s.end_boss_tick global matches 2252 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 98.05 -46.76 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 2252 run effect give @a[tag=20w14s.fighting_sun] night_vision 300 0 true
execute if score 20w14s.end_boss_tick global matches 2255 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 88.05 -28.45 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 2257 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 6
execute if score 20w14s.end_boss_tick global matches 2258 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 72.21 -20.92 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 2258 run effect give @a[tag=20w14s.fighting_sun] speed 300 10 true
execute if score 20w14s.end_boss_tick global matches 2260 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 8
