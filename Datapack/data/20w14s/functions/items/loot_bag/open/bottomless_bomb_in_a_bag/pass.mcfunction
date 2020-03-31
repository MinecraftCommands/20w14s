#> 20w14s:items/loot_bag/open/bottomless_bomb_in_a_bag/pass

particle minecraft:effect ~ ~1.0 ~ 0.4 0.4 0.4 0.01 30 force
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2.0 1.5
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2.0 1.5

summon minecraft:tnt ~ ~0.5 ~ {Fuse: 40s, Passengers: [{id: "minecraft:bat", Silent: true, DeathLootTable: "20w14s:items/loot_bag/bottomless_bomb_in_a_bag", ActiveEffects: [{ShowParticles: false, Duration: 999999999, Id: 14b, Amplifier: 1b}]}]}
