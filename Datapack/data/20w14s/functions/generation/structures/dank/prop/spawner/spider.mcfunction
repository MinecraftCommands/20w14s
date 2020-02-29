#> 20w14s:generation/structures/dank/prop/spawner/spider

setblock ~ ~ ~ minecraft:spawner{SpawnData: {id: "minecraft:spider"}, SpawnCount: 6s, SpawnRange: 10s, Delay: 1s, MinSpawnDelay: 200s, MaxSpawnDelay: 600s, MaxNearbyEntities: 12s, RequiredPlayerRange: 20s}

execute if predicate 20w14s:chance_50 run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~ ~ ~1 ~ ~ ~1 minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~1 ~ ~ ~1 ~ ~ minecraft:cobweb replace minecraft:grass
