say Initialising some stuff (one-time only)
say Prepare for ~3 minutes of lag
say If playing on a server: 
say * This will probably cause you to time-out. Join back in a few minutes
say * If server closes itself, you need to increase max-tick-time in server.properties
say If playing on singleplayer, all should be fine

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
say 20%

execute if score 20w14s.end_gen_progress global matches 0 run scoreboard players set 20w14s.end_gen_progress global 1