#> 20w14s:items/loot_bag/open/bottomless_bomb_in_a_bag/fail

particle minecraft:effect ~ ~1.0 ~ 0.4 0.4 0.4 0.01 30 force
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2.0 0.5
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2.0 0.5
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2.0 0.5
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2.0 0.5

summon minecraft:zombie ~ ~0.5 ~ {IsBaby: true, DeathLootTable: "20w14s:items/loot_bag/bottomless_bomb_in_a_bag", Passengers: [{id: "minecraft:tnt", Fuse: 120s}]}
