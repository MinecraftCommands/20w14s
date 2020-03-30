say Initialising some stuff (one-time only)
say Prepare for ~3 minutes of lag
say §lIf playing on a server§r this will probably cause you to time-out; join back in a minute. If server closes itself, increase max-tick-time in server.properties
say §lIf playing on singleplayer§r, all should be fine

# Load chunks
execute in the_end run forceload add 65 400551 56 400570
execute in the_end run forceload remove 0 400500
execute in the_end run forceload add 0 400500

# Load meteor structure
execute in the_end run setblock 0 0 400500 structure_block{mode:"LOAD",name:"20w14s:puffersun/meteor"}
execute in the_end run setblock 0 1 400500 redstone_block
execute in the_end run fill 0 0 400500 0 1 400500 air

# End portal back to overworld
execute in the_end run setblock 58 20 400569 end_portal

# Progress message
say 20%

execute if score 20w14s.end_gen_progress global matches 0 run scoreboard players set 20w14s.end_gen_progress global 1