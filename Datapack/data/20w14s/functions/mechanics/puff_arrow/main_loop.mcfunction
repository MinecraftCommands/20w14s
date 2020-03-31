scoreboard players set 20w14s:puff_arrow_loop_running global 1
execute as @e[type=arrow,tag=!20w14s.puff_arrow_processed] run function 20w14s:mechanics/puff_arrow/process_1
execute as @e[type=arrow,tag=20w14s.puff_arrow] at @s run function 20w14s:mechanics/puff_arrow/arrow_loop
execute store result score temp temp if entity @e[type=arrow,tag=20w14s.puff_arrow,limit=1]
execute if score temp temp matches 0 run scoreboard players set 20w14s:puff_arrow_loop_running global 0
execute if score temp temp matches 1 run schedule function 20w14s:mechanics/puff_arrow/main_loop 1t