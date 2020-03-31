#> 20w14s:items/loot_bag/open/mystery

scoreboard players set $rng.a6dee3ff3e75 temp 0
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.a6dee3ff3e75 temp 1
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.a6dee3ff3e75 temp 2
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.a6dee3ff3e75 temp 4
execute if predicate 20w14s:chance_50 run scoreboard players add $rng.a6dee3ff3e75 temp 8

execute if score $rng.a6dee3ff3e75 temp matches 0 run fill ~ ~ ~ ~ ~ ~ minecraft:coal_block replace minecraft:air
execute if score $rng.a6dee3ff3e75 temp matches 1 run fill ~ ~ ~ ~ ~ ~ minecraft:iron_block replace minecraft:air
execute if score $rng.a6dee3ff3e75 temp matches 2 run fill ~ ~ ~ ~ ~ ~ minecraft:gold_block replace minecraft:air
execute if score $rng.a6dee3ff3e75 temp matches 3 run fill ~ ~ ~ ~ ~ ~ minecraft:emerald_block replace minecraft:air
execute if score $rng.a6dee3ff3e75 temp matches 4 run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_block replace minecraft:air
execute if score $rng.a6dee3ff3e75 temp matches 5 run fill ~ ~ ~ ~ ~ ~ minecraft:lapis_block replace minecraft:air
execute if score $rng.a6dee3ff3e75 temp matches 6 run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:air
execute if score $rng.a6dee3ff3e75 temp matches 7 run fill ~ ~ ~ ~ ~ ~ minecraft:netherite_block replace minecraft:air
execute if score $rng.a6dee3ff3e75 temp matches 8 run fill ~ ~ ~ ~ ~ ~ minecraft:tnt[unstable=true] replace minecraft:air
execute if score $rng.a6dee3ff3e75 temp matches 9 run summon minecraft:phantom ~ ~0.5 ~ {Size: 10, Passengers: [{id: "minecraft:phantom"}]}
execute if score $rng.a6dee3ff3e75 temp matches 10 run summon minecraft:bat ~ ~0.5 ~ {Passengers: [{id: "minecraft:creeper"}]}
execute if score $rng.a6dee3ff3e75 temp matches 11 run summon minecraft:guardian ~ ~0.5 ~ {ActiveEffects: [{ShowParticles: false, Duration: 1200, Id: 25b, Amplifier: 0b}]}
execute if score $rng.a6dee3ff3e75 temp matches 12 run summon minecraft:creeper ~ ~0.5 ~ {Passengers: [{id: "minecraft:cat"}]}
execute if score $rng.a6dee3ff3e75 temp matches 13 run summon minecraft:skeleton ~ ~0.5 ~ {Passengers: [{id: "minecraft:wolf"}]}
execute if score $rng.a6dee3ff3e75 temp matches 14 run summon minecraft:strider ~ ~0.5 ~ {Passengers: [{id: "minecraft:ravager"}]}
execute if score $rng.a6dee3ff3e75 temp matches 15 run function 20w14s:items/loot_bag/open/mystery/dont_tell_me
