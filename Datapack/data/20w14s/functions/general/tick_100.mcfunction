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

# Check if chunks need to be generated. Cycle through quadrant to check checking & generate
scoreboard players add 20w14s:gen_cycle timer 1
execute if score 20w14s:gen_cycle timer matches 4 run scoreboard players set 20w14s:gen_cycle timer 0
execute if score 20w14s:gen_cycle timer matches 0 at @a positioned ~48 ~ ~48 if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align
execute if score 20w14s:gen_cycle timer matches 1 at @a positioned ~-48 ~ ~48 if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align
execute if score 20w14s:gen_cycle timer matches 2 at @a positioned ~48 ~ ~-48 if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align
execute if score 20w14s:gen_cycle timer matches 3 at @a positioned ~-48 ~ ~-48 if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align

# Cat items
execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{20w14s:{cat_item:1b}}}}] at @s run function 20w14s:mobs/cat_items/revive
