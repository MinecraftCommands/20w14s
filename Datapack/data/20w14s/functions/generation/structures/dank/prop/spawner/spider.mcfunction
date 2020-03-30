#> 20w14s:generation/structures/dank/prop/spawner/spider

setblock ~ ~ ~ minecraft:spawner{SpawnData: {id: "minecraft:spider"}, SpawnCount: 1s, MaxNearbyEntities: 3s, MinSpawnDelay: 200s, MaxSpawnDelay: 400s, Delay: 1s, SpawnRange: 4s, RequiredPlayerRange: 16s}

execute if predicate 20w14s:chance_50 run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~ ~ ~1 ~ ~ ~1 minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~1 ~ ~ ~1 ~ ~ minecraft:cobweb replace minecraft:grass
