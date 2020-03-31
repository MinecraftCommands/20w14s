#> 20w14s:items/loot_bag/open/_fireworks

particle minecraft:end_rod ~ ~1.0 ~ 0.4 0.4 0.4 0.01 30 force
playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1.0 1.5
summon minecraft:firework_rocket ~ ~0.1 ~ {Life: 0, LifeTime: 0, FireworksItem: {id: "minecraft:firework_rocket", Count: 1b, tag: {Fireworks: {Flight: 1b, Explosions: [{Type: 1b, Flicker: 1b, Colors: [I; 2437522, 6719955, 15790320]}, {Type: 2b, Trail: 1b, Colors: [I; 2437522, 6719955, 15790320]}]}}}}
