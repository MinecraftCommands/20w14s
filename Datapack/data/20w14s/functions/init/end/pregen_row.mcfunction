# Called from AEC, to generate a row of chunks at correct location
execute store result entity @s Pos[0] double -16 run scoreboard players get 20w14s.end_chunks_progress global
execute at @s run forceload add ~ ~88 ~ ~-88
execute at @s run forceload remove ~ ~88 ~ ~-88
kill @s