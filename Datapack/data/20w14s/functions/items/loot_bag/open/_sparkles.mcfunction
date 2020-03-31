#> 20w14s:items/loot_bag/open/_sparkles

particle minecraft:end_rod ~ ~1.0 ~ 0.4 0.4 0.4 0.01 30 force
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1.0 2.0
summon minecraft:firework_rocket ~ ~0.1 ~ {Life: 0, LifeTime: 0, FireworksItem: {id: "minecraft:firework_rocket", Count: 1b, tag: {Fireworks: {Flight: 1b, Explosions: [{Type: 4b, Colors: [I; 15790320, 14602026]}]}}}}
