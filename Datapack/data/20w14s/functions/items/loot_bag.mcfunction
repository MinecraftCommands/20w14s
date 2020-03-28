#> 20w14s:items/loot_bag

particle minecraft:spit ~ ~0.5 ~ 0.25 0.25 0.25 0.01 20 force
playsound minecraft:block.beehive.exit player @a ~ ~ ~ 1.0 1.25

execute if entity @s[tag=20w14s.loot_bag.stronghold_crossing] run function 20w14s:items/loot_bag/stronghold_crossing
execute if entity @s[tag=20w14s.loot_bag.simple_dungeon] run function 20w14s:items/loot_bag/simple_dungeon
execute if entity @s[tag=20w14s.loot_bag.shipwreck_treasure] run function 20w14s:items/loot_bag/shipwreck_treasure
execute if entity @s[tag=20w14s.loot_bag.end_city_treasure] run function 20w14s:items/loot_bag/end_city_treasure
execute if entity @s[tag=20w14s.loot_bag.the_deli] run function 20w14s:items/loot_bag/the_deli
execute if entity @s[tag=20w14s.loot_bag.sushi_bar] run function 20w14s:items/loot_bag/sushi_bar
execute if entity @s[tag=20w14s.loot_bag.grannys_oven] run function 20w14s:items/loot_bag/grannys_oven
execute if entity @s[tag=20w14s.loot_bag.veggie_tray] run function 20w14s:items/loot_bag/veggie_tray
execute if entity @s[tag=20w14s.loot_bag.soup_kitchen] run function 20w14s:items/loot_bag/soup_kitchen

kill @s
