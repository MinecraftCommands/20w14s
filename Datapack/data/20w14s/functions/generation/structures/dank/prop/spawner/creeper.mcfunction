#> 20w14s:generation/structures/dank/prop/spawner/creeper

setblock ~ ~ ~ minecraft:spawner{SpawnData: {id: "minecraft:creeper", Tags: ["20w14s.dank_dungeon.spawner_mob"]}, SpawnCount: 2s, MaxNearbyEntities: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 1s, SpawnRange: 4s, RequiredPlayerRange: 16s}

execute if data storage 20w14s:generation/structures {debug: true} run fill ~ ~1 ~ ~ ~3 ~ minecraft:lime_stained_glass
