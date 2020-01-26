# Align to 16x16 grid
summon area_effect_cloud ~ 0 ~ {Tags:["20w14s.temp_chunk_align"]}
execute store result entity @e[type=area_effect_cloud,tag=20w14s.temp_chunk_align,limit=1] Pos[0] double 16 run data get entity @e[type=area_effect_cloud,tag=20w14s.temp_chunk_align,limit=1] Pos[0] 0.0625
execute store result entity @e[type=area_effect_cloud,tag=20w14s.temp_chunk_align,limit=1] Pos[2] double 16 run data get entity @e[type=area_effect_cloud,tag=20w14s.temp_chunk_align,limit=1] Pos[2] 0.0625
execute as @e[type=area_effect_cloud,tag=20w14s.temp_chunk_align,limit=1] at @s run function 20w14s:generation/generate_zone
kill @e[type=area_effect_cloud,tag=20w14s.temp_chunk_align]