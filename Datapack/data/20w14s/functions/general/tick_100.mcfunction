scoreboard players set 20w14s:tick_100 timer 0

execute as @a at @s run function 20w14s:general/player_tick_100

# Entity initialisation stuff
execute as @e[tag=!20w14s.initialised] at @s run function 20w14s:mobs/new_natural_spawn

# Cow eggs
scoreboard players operation 20w14s.cow_egg timer += 20w14s.cow_count global
execute if score 20w14s.cow_egg timer matches 731.. as @e[type=cow,limit=1,sort=random] at @s run function 20w14s:mobs/cow_lay_egg

# Obsidian boats
execute as @e[type=boat,tag=20w14s.obsidian_boat] at @s run function 20w14s:mechanics/obsidian_boat/boat_tick

# TNT dupers
execute as @e[type=furnace_minecart] at @s run function 20w14s:mechanics/tnt_duper/dupe
