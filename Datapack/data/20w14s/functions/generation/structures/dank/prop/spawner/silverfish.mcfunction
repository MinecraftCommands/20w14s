#> 20w14s:generation/structures/dank/prop/spawner/silverfish

setblock ~ ~ ~ minecraft:spawner{SpawnData: {id: "minecraft:silverfish", Tags: ["20w14s.dank_dungeon.spawner_mob"]}, SpawnCount: 2s, MaxNearbyEntities: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 300s, Delay: 1s, SpawnRange: 4s, RequiredPlayerRange: 16s}

execute if data storage 20w14s:generation/structures {debug: true} run fill ~ ~1 ~ ~ ~3 ~ minecraft:gray_stained_glass
