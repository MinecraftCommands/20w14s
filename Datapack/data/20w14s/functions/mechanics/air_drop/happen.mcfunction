execute if score rng temp matches ..1 run summon zombie ~ 256 ~-100 {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Silent:1b,Health:20f,IsBaby:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrel",Properties:{facing:"up"}},TileEntityData:{LootTable:"20w14s:chests/supply_drop"},Time:1}],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:4}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:2b,Amplifier:20b,Duration:2147483647},{Id:14b,Amplifier:1b,Duration:2147483647},{Id:20b,Amplifier:1b,Duration:2147483647},{Id:28b,Amplifier:1b,Duration:2147483647}]}
execute if score rng temp matches 2..3 run summon zombie ~100 256 ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Silent:1b,Health:20f,IsBaby:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrel",Properties:{facing:"up"}},TileEntityData:{LootTable:"20w14s:chests/supply_drop"},Time:1}],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:4}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:2b,Amplifier:20b,Duration:2147483647},{Id:14b,Amplifier:1b,Duration:2147483647},{Id:20b,Amplifier:1b,Duration:2147483647},{Id:28b,Amplifier:1b,Duration:2147483647}]}
execute if score rng temp matches 4..5 run summon zombie ~ 256 ~100 {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Silent:1b,Health:20f,IsBaby:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrel",Properties:{facing:"up"}},TileEntityData:{LootTable:"20w14s:chests/supply_drop"},Time:1}],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:4}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:2b,Amplifier:20b,Duration:2147483647},{Id:14b,Amplifier:1b,Duration:2147483647},{Id:20b,Amplifier:1b,Duration:2147483647},{Id:28b,Amplifier:1b,Duration:2147483647}]}
execute if score rng temp matches 6.. run summon zombie ~-100 256 ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Silent:1b,Health:20f,IsBaby:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrel",Properties:{facing:"up"}},TileEntityData:{LootTable:"20w14s:chests/supply_drop"},Time:1}],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:4}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:2b,Amplifier:20b,Duration:2147483647},{Id:14b,Amplifier:1b,Duration:2147483647},{Id:20b,Amplifier:1b,Duration:2147483647},{Id:28b,Amplifier:1b,Duration:2147483647}]}
execute if score rng temp matches ..1 run tellraw @s {"text":"Supplies air-drop to your north!","color":"aqua"}
execute if score rng temp matches 2..3 run tellraw @s {"text":"Supplies air-drop to your east!","color":"aqua"}
execute if score rng temp matches 4..5 run tellraw @s {"text":"Supplies air-drop to your south!","color":"aqua"}
execute if score rng temp matches 6.. run tellraw @s {"text":"Supplies air-drop to your west!","color":"aqua"}