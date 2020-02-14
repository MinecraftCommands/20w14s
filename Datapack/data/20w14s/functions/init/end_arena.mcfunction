# Make sure chunks are loaded
forceload remove 0 500
forceload add 0 500
forceload remove 47 546
forceload add 47 546

# Load in meteor
setblock 0 0 500 structure_block{mode:"LOAD",name:"20w14s:meteor"}
setblock 0 1 500 redstone_block
fill 0 0 500 0 1 500 air

# Load in rainbow road
setblock 47 133 546 structure_block{mode:"LOAD",name:"20w14s:rainbow_road",rotation:"CLOCKWISE_90"}
setblock 47 132 546 redstone_block
fill 47 133 546 47 132 546 air
