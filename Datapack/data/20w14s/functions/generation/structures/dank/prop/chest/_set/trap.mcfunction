#> 20w14s:generation/structures/dank/prop/chest/_set/trap

execute unless block ~ ~ ~ minecraft:chest run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:chest run function 20w14s:generation/structures/dank/prop/chest/_set/trap/chest
execute if data storage 20w14s:generation/structures {debug: true} run fill ~ ~1 ~ ~ ~3 ~ minecraft:red_concrete
