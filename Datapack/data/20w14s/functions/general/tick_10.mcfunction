scoreboard players set 20w14s:tick_10 timer 0

execute as @a at @s run function 20w14s:general/player_tick_10

# Check on the cats
execute as @e[type=cat] at @s run function 20w14s:mobs/cat_items/as_cat_main