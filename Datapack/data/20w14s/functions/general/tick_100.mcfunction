scoreboard players set 20w14s:tick_100 timer 0

execute as @a at @s run function 20w14s:player/tick_100

# Entity initialisation stuff
execute as @e[tag=!20w14s.initialised] at @s run function 20w14s:mobs/new_natural_spawn

# Cow eggs
scoreboard players operation 20w14s.cow_egg timer += 20w14s.cow_count global
execute if score 20w14s.cow_egg timer matches 731.. as @e[type=cow,limit=1,sort=random] at @s run function 20w14s:mobs/cow_lay_egg

# Obsidian boats
execute as @e[type=boat,tag=20w14s.obsidian_boat] at @s run function 20w14s:mechanics/obsidian_boat/boat_tick

# TNT dupers
execute as @e[type=furnace_minecart] at @s run function 20w14s:mechanics/tnt_duper/dupe

# Make giants jump
execute as @e[type=giant] at @s if entity @p[distance=..8] run function 20w14s:mobs/giant/jump_attack

# Check if chunks need to be generated. Cycle through quadrant to check checking & generate
scoreboard players add 20w14s:gen_cycle timer 1
execute if score 20w14s:gen_cycle timer matches 4 run scoreboard players set 20w14s:gen_cycle timer 0
execute if score 20w14s:gen_cycle timer matches 0 at @a positioned ~48 ~ ~48 if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align
execute if score 20w14s:gen_cycle timer matches 1 at @a positioned ~-48 ~ ~48 if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align
execute if score 20w14s:gen_cycle timer matches 2 at @a positioned ~48 ~ ~-48 if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align
execute if score 20w14s:gen_cycle timer matches 3 at @a positioned ~-48 ~ ~-48 if block ~ 0 ~ bedrock run function 20w14s:generation/chunk_align

# Pre-gen the end chunks so it doesn't lag during boss fight
execute if score 20w14s.end_chunks_progress global matches 1.. in the_end run function 20w14s:init/end/pregen_chunks

# Cat items
execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{20w14s:{cat_item:1b}}}}] at @s run function 20w14s:mobs/cat_items/revive

# Airships
execute as @e[type=boat,tag=20w14s.skyship] run function 20w14s:mechanics/skyships/update

# Count bones
function 20w14s:items/craftable_skeleton/main