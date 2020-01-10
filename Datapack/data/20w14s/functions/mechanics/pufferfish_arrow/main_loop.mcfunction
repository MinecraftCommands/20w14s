scoreboard players set 20w14s.puff_arrow_loop_running global 1

execute as @e[type=arrow,tag=!20w14s.puff_arrow_checked] at @s run function 20w14s:mechanics/pufferfish_arrow/check
execute as @e[type=area_effect_cloud,tag=20w14s.puff_arrow_aec] at @s positioned ~ ~-0.375 ~ run function 20w14s:mechanics/pufferfish_arrow/aec_loop

# Check if we should re-run this in next tick (area effect clouds still exist)
execute store success score result temp if entity @e[type=area_effect_cloud,tag=20w14s.puff_arrow_aec,limit=1]
execute if score result temp matches 0 run scoreboard players set 20w14s.puff_arrow_loop_running global 0
execute if score result temp matches 1 run schedule function 20w14s:mechanics/pufferfish_arrow/main_loop 1t
