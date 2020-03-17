# Use entity to get to current position, generate a row of chunks there
summon area_effect_cloud 56 143 560 {Tags:["20w14s.end_chunk_pregen"]}
execute as @e[type=area_effect_cloud,tag=20w14s.end_chunk_pregen,limit=1] run function 20w14s:init/end/pregen_row
scoreboard players add 20w14s.end_gen_progress global 1

# When done, generate rainbow road
execute if score 20w14s.end_gen_progress global matches 230 run function 20w14s:init/end/create_rainbow_road

# Progress messages
execute if score 20w14s.end_gen_progress global matches 46 run tellraw @a {"text":"60%","color":"yellow"}
execute if score 20w14s.end_gen_progress global matches 92 run tellraw @a {"text":"70%","color":"yellow"}
execute if score 20w14s.end_gen_progress global matches 138 run tellraw @a {"text":"80%","color":"yellow"}
execute if score 20w14s.end_gen_progress global matches 184 run tellraw @a {"text":"90%","color":"yellow"}


