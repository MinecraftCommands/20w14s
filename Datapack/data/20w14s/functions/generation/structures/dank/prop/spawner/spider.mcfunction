#> 20w14s:generation/structures/dank/prop/spawner/spider

setblock ~ ~ ~ minecraft:spawner{SpawnData: {id: "minecraft:spider", Tags: ["20w14s.dank_dungeon.spawner_mob"]}, SpawnCount: 2s, MaxNearbyEntities: 3s, MinSpawnDelay: 200s, MaxSpawnDelay: 400s, Delay: 1s, SpawnRange: 4s, RequiredPlayerRange: 16s}

execute if predicate 20w14s:chance_50 run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~ ~ ~1 ~ ~ ~1 minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:cobweb replace minecraft:grass
execute if predicate 20w14s:chance_50 run fill ~1 ~ ~ ~1 ~ ~ minecraft:cobweb replace minecraft:grass
