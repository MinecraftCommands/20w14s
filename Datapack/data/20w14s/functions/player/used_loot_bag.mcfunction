#> 20w14s:player/used_loot_bag

execute as @e[type=minecraft:armor_stand, distance=..15, tag=20w14s.loot_bag] at @s run function 20w14s:items/loot_bag/open

scoreboard players set @s 20w14s.lootbag 0
