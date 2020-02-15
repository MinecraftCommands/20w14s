# Make sure chunks are loaded
forceload add 65 551 56 570

forceload remove 0 500
forceload add 0 500

forceload remove 47 546
forceload add 47 546

forceload remove -778 533
forceload add -778 533


# Load in meteor
setblock 0 0 500 structure_block{mode:"LOAD",name:"20w14s:puffersun/meteor"}
setblock 0 1 500 redstone_block
fill 0 0 500 0 1 500 air

# Load in rainbow road
setblock 47 133 546 structure_block{mode:"LOAD",name:"20w14s:puffersun/rainbow_road",rotation:"CLOCKWISE_90"}
setblock 47 132 546 redstone_block
fill 47 133 546 47 132 546 air

# Load in piano
setblock -778 81 536 structure_block{mode:"LOAD",name:"20w14s:puffersun/piano",rotation:"CLOCKWISE_90"}
setblock -778 80 536 redstone_block
fill -778 81 536 -778 80 536 air