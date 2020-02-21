execute if score 20w14s.end_boss_tick global matches 1669 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 5
execute if score 20w14s.end_boss_tick global matches 1670 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 74.54 -25.99 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 1670 run effect give @a[tag=20w14s.fighting_sun] regeneration 1 20
execute if score 20w14s.end_boss_tick global matches 1670 run effect give @a[tag=20w14s.fighting_sun] speed 300 4 true
execute if score 20w14s.end_boss_tick global matches 1671 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 6
execute if score 20w14s.end_boss_tick global matches 1673 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 87.62 -28.61 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 1676 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 4
execute if score 20w14s.end_boss_tick global matches 1676 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 90.39 -36.45 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
