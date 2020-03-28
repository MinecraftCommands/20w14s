#> 20w14s:items/loot_bag/bottomless_bomb_in_a_bag

function 20w14s:items/loot_bag/bomb_in_a_bag

loot give @a[scores={20w14s.lootbag=1..}, sort=nearest, limit=1] loot 20w14s:items/loot_bag/bottomless_bomb_in_a_bag
