particle end_rod ~ ~2 ~ .3 4 .3 0 10
execute if block ~ ~ ~ #minecraft:fences run scoreboard players add $fence_count temp 1
execute if score $fence_count temp = $rotation_progress temp if entity @e[type=sheep,limit=1,distance=..2] run scoreboard players add $sheep_count temp 1
execute if score $sheep_count temp = $rotation_progress temp as @e[type=sheep,limit=1,sort=nearest,distance=..2] run function 20w14s:mobs/skylinerw/summon/count/check_line
#tellraw @a ["$fence_count: ", {"score": {"name": "$fence_count", "objective": "temp"}}, " $sheep_count: ", {"score": {"name": "$sheep_count", "objective": "temp"}}, " $line_count: ", {"score": {"name": "$line_count", "objective": "temp"}}]