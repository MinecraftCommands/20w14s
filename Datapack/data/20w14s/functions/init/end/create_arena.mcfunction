tellraw @a {"text":"Initialising some stuff (one-time only) - lag incoming!","color":"red"}

# Make sure necessary chunks are loaded
forceload add 65 551 56 570

forceload remove 0 500
forceload add 0 500

forceload remove 47 546
forceload add 47 546

forceload remove -778 533
forceload add -778 533

forceload remove -2949 544
forceload add -2949 544

forceload remove -3558 550
forceload add -3558 550

# Load in meteor
setblock 0 0 500 structure_block{mode:"LOAD",name:"20w14s:puffersun/meteor"}
setblock 0 1 500 redstone_block
fill 0 0 500 0 1 500 air

# Load in rainbow road
setblock 47 133 546 structure_block{mode:"LOAD",name:"20w14s:puffersun/rainbow_road",rotation:"CLOCKWISE_90"}
setblock 47 132 546 redstone_block
fill 47 133 546 47 132 546 air

# Load in piano
setblock -758 81 536 structure_block{mode:"LOAD",name:"20w14s:puffersun/piano",rotation:"CLOCKWISE_90"}
setblock -758 80 536 redstone_block
fill -758 81 536 -758 80 536 air

# Load in heart
setblock -2949 120 544 structure_block{mode:"LOAD",name:"20w14s:puffersun/heart"}
setblock -2949 119 544 redstone_block
fill -2949 119 544 -2949 120 544 air

# Load end platform
setblock -3558 133 550 structure_block{mode:"LOAD",name:"20w14s:puffersun/platform"}
setblock -3558 132 550 redstone_block
fill -3558 133 550 -3558 132 550 air

# End portal back to overworld
setblock 58 20 569 end_portal

# Mutex to stop a battle starting when one is in progress
scoreboard players set 20w14s.end_boss_ready global 1

# Start off pre-loading of the path
scoreboard players set 20w14s.end_chunks_progress global 230

tellraw @a {"text":"Done","color":"aqua"}