#> 20w14s:items/loot_bag/open

scoreboard players set $found_loot_bag temp 1

particle minecraft:spit ~ ~0.5 ~ 0.25 0.25 0.25 0.01 20 force
playsound minecraft:block.beehive.exit player @a ~ ~ ~ 1.0 1.25

function 20w14s:items/loot_bag/advancements
function 20w14s:items/loot_bag/types

kill @s
