#> 20w14s:items/loot_bag/open/mystery

scoreboard players set $rng.a6dee3ff3e75 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.a6dee3ff3e75 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.a6dee3ff3e75 temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.a6dee3ff3e75 temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.a6dee3ff3e75 temp 8

execute if score $rng.a6dee3ff3e75 temp matches 0 unless block ~ ~ ~ minecraft:air run summon minecraft:item ~ ~0.5 ~ {Item: {id: "minecraft:coal_block", Count: 1b}}
execute if score $rng.a6dee3ff3e75 temp matches 0 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coal_block
execute if score $rng.a6dee3ff3e75 temp matches 1 unless block ~ ~ ~ minecraft:air run summon minecraft:item ~ ~0.5 ~ {Item: {id: "minecraft:iron_block", Count: 1b}}
execute if score $rng.a6dee3ff3e75 temp matches 1 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:iron_block
execute if score $rng.a6dee3ff3e75 temp matches 2 unless block ~ ~ ~ minecraft:air run summon minecraft:item ~ ~0.5 ~ {Item: {id: "minecraft:gold_block", Count: 1b}}
execute if score $rng.a6dee3ff3e75 temp matches 2 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:gold_block
execute if score $rng.a6dee3ff3e75 temp matches 3 unless block ~ ~ ~ minecraft:air run summon minecraft:item ~ ~0.5 ~ {Item: {id: "minecraft:emerald_block", Count: 1b}}
execute if score $rng.a6dee3ff3e75 temp matches 3 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:emerald_block
execute if score $rng.a6dee3ff3e75 temp matches 4 unless block ~ ~ ~ minecraft:air run summon minecraft:item ~ ~0.5 ~ {Item: {id: "minecraft:diamond_block", Count: 1b}}
execute if score $rng.a6dee3ff3e75 temp matches 4 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:diamond_block
execute if score $rng.a6dee3ff3e75 temp matches 5 unless block ~ ~ ~ minecraft:air run summon minecraft:item ~ ~0.5 ~ {Item: {id: "minecraft:lapis_block", Count: 1b}}
execute if score $rng.a6dee3ff3e75 temp matches 5 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:lapis_block
execute if score $rng.a6dee3ff3e75 temp matches 6 unless block ~ ~ ~ minecraft:air run summon minecraft:item ~ ~0.5 ~ {Item: {id: "minecraft:redstone_block", Count: 1b}}
execute if score $rng.a6dee3ff3e75 temp matches 6 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:redstone_block
execute if score $rng.a6dee3ff3e75 temp matches 7 unless block ~ ~ ~ minecraft:air run summon minecraft:item ~ ~0.5 ~ {Item: {id: "minecraft:netherite_block", Count: 1b}}
execute if score $rng.a6dee3ff3e75 temp matches 7 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:netherite_block
execute if score $rng.a6dee3ff3e75 temp matches 8 unless block ~ ~ ~ minecraft:air run summon minecraft:enderman ~ ~0.5 ~ {carriedBlockState: {Name: "minecraft:tnt"}}
execute if score $rng.a6dee3ff3e75 temp matches 8 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:tnt[unstable=true]
execute if score $rng.a6dee3ff3e75 temp matches 9 run summon minecraft:phantom ~ ~0.5 ~ {Size: 10, Passengers: [{id: "minecraft:phantom"}]}
execute if score $rng.a6dee3ff3e75 temp matches 10 run summon minecraft:bat ~ ~0.5 ~ {Passengers: [{id: "minecraft:creeper"}]}
execute if score $rng.a6dee3ff3e75 temp matches 11 run summon minecraft:guardian ~ ~0.5 ~ {ActiveEffects: [{ShowParticles: false, Duration: 1200, Id: 25b, Amplifier: 0b}]}
execute if score $rng.a6dee3ff3e75 temp matches 12 run summon minecraft:creeper ~ ~0.5 ~ {Passengers: [{id: "minecraft:cat"}]}
execute if score $rng.a6dee3ff3e75 temp matches 13 run summon minecraft:skeleton ~ ~0.5 ~ {Passengers: [{id: "minecraft:wolf"}]}
execute if score $rng.a6dee3ff3e75 temp matches 14 run summon minecraft:strider ~ ~0.5 ~ {Passengers: [{id: "minecraft:ravager"}]}
execute if score $rng.a6dee3ff3e75 temp matches 15 run function 20w14s:items/loot_bag/open/mystery/dont_tell_me
