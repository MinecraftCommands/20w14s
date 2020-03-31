scoreboard players set 20w14s:tick_5 timer 0

# Command snake
execute as @e[type=armor_stand,tag=20w14s.command_snake_head,tag=20w14s.active] at @s positioned ~ ~0.75 ~ run function 20w14s:mobs/command_snake/step

# Pufferfish arrows (general)
execute if score 20w14s:puff_arrow_loop_running global matches 0 if entity @e[type=arrow,limit=1] run function 20w14s:mechanics/puff_arrow/main_loop

# Bouncy arrows
execute if score 20w14s.arrow_bounce_loop_running global matches 0 if entity @e[type=arrow] run function 20w14s:mechanics/bouncy_arrow/main_loop

# Pre-gen the end chunks so it doesn't lag during boss fight
execute if score 20w14s.end_gen_progress global matches 3..230 in the_end run function 20w14s:init/end/pregen_chunks
