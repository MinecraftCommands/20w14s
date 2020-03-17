tellraw @a {"text":"Initialising some stuff (one-time only) - lag incoming!","color":"red"}

# Load chunks
execute in the_end run forceload add 65 551 56 570
execute in the_end run forceload remove 0 500
execute in the_end run forceload add 0 500

# Load meteor structure
execute in the_end run setblock 0 0 500 structure_block{mode:"LOAD",name:"20w14s:puffersun/meteor"}
execute in the_end run setblock 0 1 500 redstone_block
execute in the_end run fill 0 0 500 0 1 500 air

# End portal back to overworld
execute in the_end run setblock 58 20 569 end_portal

# Progress message
tellraw @a {"text":"20%","color":"red"}

execute if score 20w14s.end_gen_progress global matches 0 run scoreboard players set 20w14s.end_gen_progress global 1