# If entered end through portal rather than with rocket, teleport to red dragon arena and give effects
execute in the_end run tp @s -730963.97 78.00 -730863.80 -122.15 -7.31
gamemode adventure @s
effect give @s blindness 6 1
effect give @s jump_boost 1000000 10 true
effect give @s speed 1000000 2 true
tag @s add 20w14s.fighting_red_dragon
