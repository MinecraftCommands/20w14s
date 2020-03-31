#> 20w14s:items/loot_bag/advancements

execute if entity @s[tag=20w14s.loot_bag_tier.common] run advancement grant @a[scores={20w14s.lootbag=1..}] only 20w14s:adventure/loot_bag/collector common
execute if entity @s[tag=20w14s.loot_bag_tier.uncommon] run advancement grant @a[scores={20w14s.lootbag=1..}] only 20w14s:adventure/loot_bag/collector uncommon
execute if entity @s[tag=20w14s.loot_bag_tier.rare] run advancement grant @a[scores={20w14s.lootbag=1..}] only 20w14s:adventure/loot_bag/collector rare
execute if entity @s[tag=20w14s.loot_bag_tier.epic] run advancement grant @a[scores={20w14s.lootbag=1..}] only 20w14s:adventure/loot_bag/collector epic
execute if entity @s[tag=20w14s.loot_bag_tier.legendary] run advancement grant @a[scores={20w14s.lootbag=1..}] only 20w14s:adventure/loot_bag/collector legendary
execute if entity @s[tag=20w14s.loot_bag_tier.mystery] run advancement grant @a[scores={20w14s.lootbag=1..}] only 20w14s:adventure/loot_bag/collector mystery

execute if entity @s[tag=20w14s.loot_bag_tier.legendary] run advancement grant @a[scores={20w14s.lootbag=1..}] only 20w14s:adventure/loot_bag/legendary
