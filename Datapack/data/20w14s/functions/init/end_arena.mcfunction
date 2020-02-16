# Make sure chunks are loaded
forceload add 65 551 56 570

forceload remove 0 500
forceload add 0 500

forceload remove 47 546
forceload add 47 546

forceload remove -778 533
forceload add -778 533

forceload remove -2949 544
forceload add -2949 544

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