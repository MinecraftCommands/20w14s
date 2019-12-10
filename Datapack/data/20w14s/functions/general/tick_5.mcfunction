scoreboard players set 20w14s:tick_5 timer 0

# Command snake
execute as @e[type=armor_stand,tag=20w14s.command_snake_head,tag=20w14s.active] at @s positioned ~ ~0.75 ~ run function 20w14s:mobs/command_snake/step

# Bouncy arrows
execute if score 20w14s.arrow_bounce_loop_running global matches 0 if entity @e[type=arrow] run function 20w14s:mechanics/bouncy_arrow/main_loop