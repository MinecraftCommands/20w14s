# Check if bouncing
scoreboard players set bounce temp 1
# execute if ... run scoreboard players set bounce temp 0
execute if block ~-0.5 ~ ~ #20w14s:no_hitbox if block ~0.5 ~ ~ #20w14s:no_hitbox if block ~ ~-0.5 ~ #20w14s:no_hitbox if block ~ ~0.5 ~ #20w14s:no_hitbox if block ~ ~ ~-0.5 #20w14s:no_hitbox if block ~ ~ ~0.5 #20w14s:no_hitbox run scoreboard players set bounce temp 0
execute if score bounce temp matches 1 run function 20w14s:mechanics/bouncy_arrow/bounce
