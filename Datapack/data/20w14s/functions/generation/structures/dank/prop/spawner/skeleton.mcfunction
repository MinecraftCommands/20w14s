#> 20w14s:generation/structures/dank/prop/spawner/skeleton

setblock ~ ~ ~ minecraft:spawner{SpawnData: {id: "minecraft:skeleton", Tags: ["20w14s.dank_dungeon.spawner_mob"], ArmorItems: [{id: "minecraft:leather_boots", Count: 1b}, {}, {}, {}], HandItems: [{id: "minecraft:bow", Count: 1b}, {}]}, SpawnCount: 2s, MaxNearbyEntities: 2s, MinSpawnDelay: 300s, MaxSpawnDelay: 600s, Delay: 1s, SpawnRange: 4s, RequiredPlayerRange: 16s}

execute if data storage 20w14s:generation/structures {debug: true} run fill ~ ~1 ~ ~ ~3 ~ minecraft:yellow_stained_glass
