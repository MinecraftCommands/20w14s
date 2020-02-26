# Use entity to get to current position, generate a row of chunks there
summon area_effect_cloud 56 143 560 {Tags:["20w14s.end_chunk_pregen"]}
execute as @e[type=area_effect_cloud,tag=20w14s.end_chunk_pregen,limit=1] run function 20w14s:init/end/pregen_row
scoreboard players remove 20w14s.end_chunks_progress global 1