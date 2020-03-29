#> 20w14s:generation/structures/dank/prop/spawner/spider

setblock ~ ~ ~ minecraft:spawner{SpawnData: {id: "minecraft:spider"}, SpawnCount: 4s, MaxNearbyEntities: 8s, MinSpawnDelay: 400s, MaxSpawnDelay: 800s, Delay: -1s, SpawnRange: 8s, RequiredPlayerRange: 8s}

execute if predicate 20w14s:chance_50 run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~ ~ ~1 ~ ~ ~1 minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~1 ~ ~ ~1 ~ ~ minecraft:cobweb replace minecraft:grass
