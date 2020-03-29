#> 20w14s:generation/structures/dank/prop/spawner/witch

setblock ~ ~ ~ minecraft:spawner{SpawnData: {id: "minecraft:witch"}, SpawnCount: 1s, MaxNearbyEntities: 2s, MinSpawnDelay: 400s, MaxSpawnDelay: 800s, Delay: 1s, SpawnRange: 4s, RequiredPlayerRange: 16s}

execute if predicate 20w14s:chance_50 run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:brown_mushroom replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~ ~ ~1 ~ ~ ~1 minecraft:brown_mushroom replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:brown_mushroom replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~1 ~ ~ ~1 ~ ~ minecraft:brown_mushroom replace minecraft:grass
