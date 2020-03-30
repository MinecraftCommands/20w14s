# Load chunks
forceload add -731031 -731031 -730790 -730790

# Progress message
tellraw @a {"text":"30%","color":"red"}

execute if score 20w14s.end_gen_progress global matches 1 run scoreboard players set 20w14s.end_gen_progress global 2