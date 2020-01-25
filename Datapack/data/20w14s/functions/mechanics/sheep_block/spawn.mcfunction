# Spawns a "sheep block" randomly around player
summon area_effect_cloud ~ ~ ~ {Tags:["20w14s.temp_sheep_block_spawner"]}
spreadplayers ~ ~ 0 128 false @e[type=area_effect_cloud,tag=20w14s.temp_sheep_block_spawner]

execute if score rng temp matches ..9 at @e[type=area_effect_cloud,tag=20w14s.temp_sheep_block_spawner] run setblock ~ ~ ~ purpur_stairs[half=top,shape=inner_left,facing=north] keep
execute if score rng temp matches 10..11 at @e[type=area_effect_cloud,tag=20w14s.temp_sheep_block_spawner] run setblock ~ ~ ~ purpur_stairs[half=top,shape=inner_left,facing=east] keep
execute if score rng temp matches 12..13 at @e[type=area_effect_cloud,tag=20w14s.temp_sheep_block_spawner] run setblock ~ ~ ~ purpur_stairs[half=top,shape=inner_left,facing=south] keep
execute if score rng temp matches 14.. at @e[type=area_effect_cloud,tag=20w14s.temp_sheep_block_spawner] run setblock ~ ~ ~ purpur_stairs[half=top,shape=inner_left,facing=west] keep

kill @e[type=area_effect_cloud,tag=20w14s.temp_sheep_block_spawner]