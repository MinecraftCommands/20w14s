execute as @a at @s run function 20w14s:general/player_tick

# Slower ticks
scoreboard players add 20w14s:tick_5 timer 1
execute if score 20w14s:tick_5 timer matches 5 run function 20w14s:general/tick_5

scoreboard players add 20w14s:tick_10 timer 1
execute if score 20w14s:tick_10 timer matches 10 run function 20w14s:general/tick_10

scoreboard players add 20w14s:tick_100 timer 1
execute if score 20w14s:tick_100 timer matches 100 run function 20w14s:general/tick_100