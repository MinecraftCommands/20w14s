#> 20w14s:player/loot_bag/check

scoreboard players set $found_loot_bag temp 0

execute as @e[type=minecraft:armor_stand, distance=..15, tag=20w14s.loot_bag] at @s run function 20w14s:items/loot_bag/open

execute if score $found_loot_bag temp matches 1.. run function 20w14s:player/loot_bag/used

scoreboard players set @s 20w14s.lootbag 0
