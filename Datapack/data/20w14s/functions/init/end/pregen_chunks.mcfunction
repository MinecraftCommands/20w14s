# Use entity to get to current position, generate a row of chunks there
summon area_effect_cloud 56 143 560 {Tags:["20w14s.end_chunk_pregen"]}
execute as @e[type=area_effect_cloud,tag=20w14s.end_chunk_pregen,limit=1] run function 20w14s:init/end/pregen_row
scoreboard players add 20w14s.end_gen_progress global 1

# When done, generate rainbow road
execute if score 20w14s.end_gen_progress global matches 230 run function 20w14s:init/end/create_rainbow_road

# Progress messages
execute if score 20w14s.end_gen_progress global matches 50 run say 60%
execute if score 20w14s.end_gen_progress global matches 110 run say 70%
execute if score 20w14s.end_gen_progress global matches 170 run say 80%
execute if score 20w14s.end_gen_progress global matches 229 run say 90%


