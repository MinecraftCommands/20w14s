scoreboard players set 20w14s.arrow_bounce_loop_running global 1

execute as @e[type=arrow] at @s run function 20w14s:mechanics/bouncy_arrow/per_arrow

# Check if we should re-run this in next tick (arrows still exist)
execute store result score result temp if entity @e[type=arrow]
execute if score result temp matches 0 run scoreboard players set 20w14s.arrow_bounce_loop_running global 0
execute if score result temp matches 1.. run schedule function 20w14s:mechanics/bouncy_arrow/main_loop 1t
