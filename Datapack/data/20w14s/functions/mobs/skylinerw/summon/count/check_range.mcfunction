scoreboard players set $fence_count temp 0
scoreboard players set $sheep_count temp 0
scoreboard players set $line_count temp 0

scoreboard players set $rotation_progress temp 0
execute rotated ~0 0 run function 20w14s:mobs/skylinerw/summon/count/identify_ranges
execute if score $line_count temp = $rotation_progress temp rotated ~72 0 run function 20w14s:mobs/skylinerw/summon/count/identify_ranges
execute if score $line_count temp = $rotation_progress temp rotated ~144 0 run function 20w14s:mobs/skylinerw/summon/count/identify_ranges
execute if score $line_count temp = $rotation_progress temp rotated ~-144 0 run function 20w14s:mobs/skylinerw/summon/count/identify_ranges
execute if score $line_count temp = $rotation_progress temp rotated ~-72 0 run function 20w14s:mobs/skylinerw/summon/count/identify_ranges

execute if score $line_count temp = $rotation_progress temp run function 20w14s:mobs/skylinerw/summon/start_final