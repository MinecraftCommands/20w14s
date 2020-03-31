#> 20w14s:player/loot_bag/used

scoreboard players add @a[scores={20w14s.lootbag=1..}] 20w14s.open_bags 1

advancement grant @s only 20w14s:adventure/loot_bag/first
execute unless entity @s[advancements={20w14s:adventure/loot_bag/ten=true}] run function 20w14s:player/loot_bag/used/advancement/ten
execute unless entity @s[advancements={20w14s:adventure/loot_bag/hundred=true}] run function 20w14s:player/loot_bag/used/advancement/hundred
