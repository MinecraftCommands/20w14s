#> 20w14s:items/loot_bag/open/bomb_in_a_bag

particle minecraft:effect ~ ~1.0 ~ 0.4 0.4 0.4 0.01 30 force
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2.0 1.5
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2.0 1.5

summon minecraft:tnt ~ ~0.5 ~ {Fuse: 40s}
