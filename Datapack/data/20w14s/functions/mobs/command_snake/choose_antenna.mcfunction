tag @s add 20w14s.antenna_chosen

# Block to prevent other snakes entering head
execute at @s run fill ~ ~ ~ ~ ~ ~ air replace acacia_button
execute at @s[tag=20w14s.antenna_north] run setblock ~ ~ ~ acacia_button[facing=north] destroy
execute at @s[tag=20w14s.antenna_east] run setblock ~ ~ ~ acacia_button[facing=east] destroy
execute at @s[tag=20w14s.antenna_south] run setblock ~ ~ ~ acacia_button[facing=south] destroy
execute at @s[tag=20w14s.antenna_west] run setblock ~ ~ ~ acacia_button[facing=west] destroy
execute at @s[tag=20w14s.antenna_up] run setblock ~ ~ ~ acacia_button[face=floor] destroy
execute at @s[tag=20w14s.antenna_down] run setblock ~ ~ ~ acacia_button[face=ceiling] destroy