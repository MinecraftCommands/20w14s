#> 20w14s:items/loot_bag/blue_shinies/boom

particle minecraft:effect ~ ~1.0 ~ 0.4 0.4 0.4 0.01 30 force
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2.0 1.5
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2.0 1.5

summon minecraft:creeper ~ ~0.5 ~ {powered: true, ExplosionRadius: 5b}
effect give @e[type=minecraft:creeper, distance=..1] minecraft:speed 60 2
effect give @e[type=minecraft:creeper, distance=..1] minecraft:jump_boost 60 1
