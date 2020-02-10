# Make sure chunk is loaded
forceload remove 0 500
forceload add 0 500

# Load in meteor
setblock 0 0 500 structure_block{mode:"LOAD",name:"20w14s:meteor"}
setblock 0 1 500 redstone_block
fill 0 0 500 0 1 500 air