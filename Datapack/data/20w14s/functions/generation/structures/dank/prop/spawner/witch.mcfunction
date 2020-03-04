#> 20w14s:generation/structures/dank/prop/spawner/witch

setblock ~ ~ ~ minecraft:spawner{SpawnData: {id: "minecraft:witch"}, SpawnCount: 2s, SpawnRange: 10s, Delay: 1s, MinSpawnDelay: 200s, MaxSpawnDelay: 600s, MaxNearbyEntities: 4s, RequiredPlayerRange: 20s}

execute if predicate 20w14s:chance_50 run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:brown_mushroom replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~ ~ ~1 ~ ~ ~1 minecraft:brown_mushroom replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:brown_mushroom replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~1 ~ ~ ~1 ~ ~ minecraft:brown_mushroom replace minecraft:grass
