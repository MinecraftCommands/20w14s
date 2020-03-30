# Load chunks
execute in the_end run forceload remove 47 400546
execute in the_end run forceload add 47 400546

execute in the_end run forceload remove -3558 400550
execute in the_end run forceload add -3558 400550

execute in the_end run forceload remove -758 400536
execute in the_end run forceload add -758 400536

execute in the_end run forceload remove -2949 400544
execute in the_end run forceload add -2949 400544

# Load in rainbow road structure
execute in the_end run setblock 47 133 400546 structure_block{mode:"LOAD",name:"20w14s:puffersun/rainbow_road",rotation:"CLOCKWISE_90"}
execute in the_end run setblock 47 132 400546 redstone_block
execute in the_end run fill 47 133 400546 47 132 400546 air

# Load end platform
execute in the_end run setblock -3558 133 400550 structure_block{mode:"LOAD",name:"20w14s:puffersun/platform"}
execute in the_end run setblock -3558 132 400550 redstone_block
execute in the_end run fill -3558 133 400550 -3558 132 400550 air

# Load in piano
execute in the_end run setblock -758 81 400536 structure_block{mode:"LOAD",name:"20w14s:puffersun/piano",rotation:"CLOCKWISE_90"}
execute in the_end run setblock -758 80 400536 redstone_block
execute in the_end run fill -758 81 400536 -758 80 400536 air

# Load in heart
execute in the_end run setblock -2949 120 400544 structure_block{mode:"LOAD",name:"20w14s:puffersun/heart"}
execute in the_end run setblock -2949 119 400544 redstone_block
execute in the_end run fill -2949 119 400544 -2949 120 400544 air


say One-time initialisation finished!