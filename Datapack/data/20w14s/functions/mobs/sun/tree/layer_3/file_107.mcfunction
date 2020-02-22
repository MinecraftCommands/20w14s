execute if score 20w14s.end_boss_tick global matches 1568 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 98.69 -31.07 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 1571 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 102.69 -34.30 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 1572 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 12
execute if score 20w14s.end_boss_tick global matches 1573 run effect clear @a[tag=20w14s.fighting_sun] speed
execute if score 20w14s.end_boss_tick global matches 1574 run execute at 00000000-0000-0002-0000-0000000b2797 positioned ~-48 ~ ~ rotated 102.08 -34.76 positioned ^ ^ ^15 run tp 00000000-0000-0001-0000-0000000b2797 ~ ~ ~ facing entity @p[tag=20w14s.fighting_sun,gamemode=!spectator]
execute if score 20w14s.end_boss_tick global matches 1574 run effect clear @a[tag=20w14s.fighting_sun] night_vision
execute if score 20w14s.end_boss_tick global matches 1574 run summon armor_stand -305 133.8 560 {ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1,tag:{CustomModelData:6}}],Invisible:1b}
execute if score 20w14s.end_boss_tick global matches 1576 run data modify entity 00000000-0000-0001-0000-0000000b2797 ArmorItems[3].tag.CustomModelData set value 3
